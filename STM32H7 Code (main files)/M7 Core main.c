/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "math.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#ifndef HSEM_ID_0
#define HSEM_ID_0 (0U) /* HW semaphore 0*/
#endif

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc2;
ADC_HandleTypeDef hadc3;
DMA_HandleTypeDef hdma_adc1;
DMA_HandleTypeDef hdma_adc2;
DMA_HandleTypeDef hdma_adc3;

DAC_HandleTypeDef hdac1;
DMA_HandleTypeDef hdma_dac1_ch1;
DMA_HandleTypeDef hdma_dac1_ch2;

TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim5;
TIM_HandleTypeDef htim8;

UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart3_tx;

/* Definitions for Digital_Inputs */
osThreadId_t Digital_InputsHandle;
const osThreadAttr_t Digital_Inputs_attributes = {
  .name = "Digital_Inputs",
  .stack_size = 10000 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for Outputs */
osThreadId_t OutputsHandle;
const osThreadAttr_t Outputs_attributes = {
  .name = "Outputs",
  .stack_size = 2000 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* USER CODE BEGIN PV */
struct shared_data
{	uint8_t sts_4to7_half; // status: 0 = empty, 1 = has data, 2 = locked (CM4-CM7)
	uint8_t sts_7to4_half; // status: 0 = empty, 1 = has data, 2 = locked (CM7-CM4)
	uint8_t sts_4to7_complete; // status: 0 = empty, 1 = has data, 2 = locked (CM4-CM7)
	uint8_t sts_7to4_complete; // status: 0 = empty, 1 = has data, 2 = locked (CM7-CM4)
	uint32_t M4toM7[10000]; // 256 bytes from CM4 to CM7
	uint32_t M7toM4[64]; // 256 bytes from CM7 to CM4
};

// pointer to shared_data struct (inter-core buffers and status)
volatile struct shared_data * const xfr_ptr = (struct shared_data *)0x38001000;
uint32_t test = 100;



/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void PeriphCommonClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_TIM8_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_ADC2_Init(void);
static void MX_ADC3_Init(void);
static void MX_ADC1_Init(void);
static void MX_DAC1_Init(void);
static void MX_TIM4_Init(void);
static void MX_TIM5_Init(void);
static void MX_TIM2_Init(void);
static void MX_TIM3_Init(void);
void StartDigitalInputs(void *argument);
void StartOutputs(void *argument);

/* USER CODE BEGIN PFP */
uint32_t * get_M4(void);
void put_M7(uint32_t buffer[64]);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

volatile uint16_t adc1_buf[1500];
volatile uint16_t adc2_buf[1500];
volatile uint16_t adc3_buf[1500];
char adc1_str1[10000];
char adc1_str2[10000];
char adc3_str1[10000];
char adc3_str2[10000];
char adc2_str1[10000];
char adc2_str2[10000];
uint8_t uart3_rx_buf[74];//74
uint32_t Digital_Outputs[8];
#define PI 3.1415926
uint32_t sine_val1[100];
uint32_t sine_val2[100];

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc){
	  if(hadc->Instance == ADC1){
		  //uint16_t* ptr = adc1_buf;
		  uint32_t idx = 0;
		  idx += sprintf(&adc1_str1[idx], "ADC1,");

		  for(int i = 0; i < 1500/2; i+=2){
			  uint16_t ch1 = adc1_buf[i];
			  uint16_t ch2 = adc1_buf[i+1];
			  idx += sprintf(&adc1_str1[idx], "%u,%u,", ch1, ch2);
		  }
			idx += sprintf(&adc1_str1[idx], "\r\n");

			HAL_UART_Transmit(&huart3, (uint8_t *)adc1_str1, idx, HAL_MAX_DELAY);

	  }
	  if(hadc->Instance == ADC2){
	 		  //uint16_t* ptr = adc2_buf;
	 		  uint32_t idx = 0;
	 		  idx += sprintf(&adc2_str1[idx], "ADC2,");

	 		  for(int i = 0; i < 1500/2; i+=3){
	 			  uint16_t ch1 = adc2_buf[i];
	 			  uint16_t ch2 = adc2_buf[i+1];
	 			  uint16_t ch3 = adc2_buf[i+2];
	 			  idx += sprintf(&adc2_str1[idx], "%u,%u,%u,", ch1, ch2, ch3);
	 		  }
	 			idx += sprintf(&adc2_str1[idx], "\r\n");

	 		  HAL_UART_Transmit(&huart3, (uint8_t*)adc2_str1, idx, HAL_MAX_DELAY);
	 	  }
	  if(hadc->Instance == ADC3){
	  	 		  //uint16_t* ptr = adc3_buf;
	  	 		  uint32_t idx = 0;
	  			  idx += sprintf(&adc3_str1[idx], "ADC3,");

	  	 		  for(int i = 0; i < 1500/2; i+=5){
	  	 			  uint16_t ch1 = adc3_buf[i];
	  	 			  uint16_t ch2 = adc3_buf[i+1];
	  	 			  uint16_t ch3 = adc3_buf[i+2];
	  	 			  uint16_t ch4 = adc3_buf[i+3];
	  	 			  uint16_t ch5 = adc3_buf[i+4];
	  	 			  idx += sprintf(&adc3_str1[idx], "%u,%u,%u,%u,%u,", ch1, ch2, ch3, ch4, ch5);
	  	 		  }
	  			idx += sprintf(&adc3_str1[idx], "\r\n");

	  	 		//HAL_UART_Transmit_DMA(&huart3, (uint8_t*)adc3_str1, idx);
	  	 	  }
 }

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc){
	if(hadc->Instance == ADC1){
		adc1_str2[0] = '\0';
		//uint16_t* ptr = &adc1_buf[10000/2];
		uint32_t idx = 0;
		idx += sprintf(&adc1_str2[idx], "ADC1,");
		for(int i = 1500/2; i < 1500; i+=2){
			uint16_t ch1 = adc1_buf[i];
			uint16_t ch2 = adc1_buf[i+1];
			idx += sprintf(&adc1_str2[idx], "%u,%u,", ch1, ch2);
		}
		idx += sprintf(&adc1_str2[idx], "\r\n");

		 HAL_UART_Transmit(&huart3, (uint8_t *)adc1_str2, idx, HAL_MAX_DELAY);


	}
	if(hadc->Instance == ADC2){
		 		  adc2_str2[0] = '\0';
		 		  //uint16_t* ptr = &adc2_buf[15000/2];
		 		  uint32_t idx = 0;
		 		  idx += sprintf(&adc2_str2[idx], "ADC2,");

		 		  for(int i = 1500/2; i < 1500; i+=3){
		 			  uint16_t ch1 = adc2_buf[i];
		 			  uint16_t ch2 = adc2_buf[i+1];
		 			  uint16_t ch3 = adc2_buf[i+2];
		 			  idx += sprintf(&adc2_str2[idx], "%u,%u,%u,", ch1, ch2, ch3);
		 		  }
		 			idx += sprintf(&adc2_str2[idx], "\r\n");
		 		  HAL_UART_Transmit(&huart3, (uint8_t*)adc2_str2, idx, HAL_MAX_DELAY);
		 	  }
		  if(hadc->Instance == ADC3){
		  	 		  adc3_str2[0] = '\0';
		  	 		  //uint16_t* ptr = &adc3_buf[25000/2];
		  	 		  uint32_t idx = 0;
		  			  idx += sprintf(&adc3_str2[idx], "ADC3,");

		  	 		  for(int i = 1500/2; i < 1500; i+=5){
		  	 			  uint16_t ch1 = adc3_buf[i];
		  	 			  uint16_t ch2 = adc3_buf[i+1];
		  	 			  uint16_t ch3 = adc3_buf[i+2];
		  	 			  uint16_t ch4 = adc3_buf[i+3];
		  	 			  uint16_t ch5 = adc3_buf[i+4];
		  	 			  idx += sprintf(&adc3_str2[idx], "%u,%u,%u,%u,%u,", ch1, ch2, ch3, ch4, ch5);
		  	 		  }
		  			idx += sprintf(&adc3_str2[idx], "\r\n");

		  	 		 //HAL_UART_Transmit_DMA(&huart3, (uint8_t*)adc3_str2, idx);
		  	 	  }
}


void get_sineval1(uint32_t Amplitude, uint32_t Frequency){ //Amplitude = 0 -> 100% |
	for(int i = 0; i < 100; i++){
		sine_val1[i] = ((sin(i*2*PI/100) + 1)*(4096/2))*Amplitude/100;
	}
	Frequency *= 100;
	uint32_t timerClock = 128000000;
	uint32_t newPeriod = (timerClock / (htim4.Init.Prescaler + 1)) / (Frequency) - 1;
    HAL_TIM_Base_Stop(&htim4);
    __HAL_TIM_SET_AUTORELOAD(&htim4, newPeriod);  // Update Frequency
    HAL_TIM_Base_Start(&htim4);
    //HAL_TIM_GenerateEvent(&htim4, TIM_EVENTSOURCE_UPDATE);  // Apply changes


}
void get_sineval2(uint32_t Amplitude, uint32_t Frequency){
	for(int i = 0; i < 100; i++){
		sine_val2[i] = ((sin(i*2*PI/100) + 1)*(4096/2))*Amplitude/100;
	}
	Frequency *= 100;
	uint32_t timerClock = 128000000;
	uint32_t newPeriod = (timerClock / (htim5.Init.Prescaler + 1)) / (Frequency) - 1;
	HAL_TIM_Base_Stop(&htim5);
	__HAL_TIM_SET_AUTORELOAD(&htim5, newPeriod);  // Update Frequency
	HAL_TIM_Base_Start(&htim5);
	//HAL_TIM_GenerateEvent(&htim5, TIM_EVENTSOURCE_UPDATE);  // Apply changes
}

void Update_TIM2_PWM(uint32_t pwmFreq, uint8_t dutyCycle) {
    uint32_t timerClock = 128000000;
    uint32_t newPeriod = (timerClock / (htim2.Init.Prescaler + 1)) / pwmFreq - 1;

    __HAL_TIM_SET_AUTORELOAD(&htim2, newPeriod);  // Update Frequency
    __HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, (newPeriod + 1) * dutyCycle / 100);  // Update duty cycle

    HAL_TIM_GenerateEvent(&htim2, TIM_EVENTSOURCE_UPDATE);  // Apply changes
}
void Update_TIM3_PWM(uint32_t pwmFreq, uint8_t dutyCycle) {
    uint32_t timerClock = 128000000;
    uint32_t newPeriod = (timerClock / (htim3.Init.Prescaler + 1)) / pwmFreq - 1;

    __HAL_TIM_SET_AUTORELOAD(&htim3, newPeriod);  // Update Frequency
    __HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1, (newPeriod + 1) * dutyCycle / 100);  // Update Duty Cycle

    HAL_TIM_GenerateEvent(&htim3, TIM_EVENTSOURCE_UPDATE);  // Apply changes
}


/*
uint32_t * get_M4() // get data from M4 to M7 buffer
{
	if (xfr_ptr->sts_4to7_half == 1) // if M4 to M7 buffer has data
	{
		for(int n = 0; n < 5000; n++)
		{
			buffer[n] = xfr_ptr->M4toM7[n]; // transfer data
			xfr_ptr->M4toM7[n] = 0; // clear M4 to M7 buffer
		}
		xfr_ptr->sts_4to7_half = 0;
	}
	if (xfr_ptr->sts_4to7_complete == 1) // if M4 to M7 buffer has data
	{
		for(int n = 5000; n < 10000; n++)
		{
			buffer[n-5000] = xfr_ptr->M4toM7[n]; // transfer data
			xfr_ptr->M4toM7[n] = 0; // clear M4 to M7 buffer
		}
		xfr_ptr->sts_4to7_half = 0;
	}
	return buffer; // return the buffer (pointer)
}
*/
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */


		// Initialize status flags
  xfr_ptr->sts_4to7_half = 0;
  xfr_ptr->sts_7to4_half = 0;
  xfr_ptr->sts_4to7_complete = 0;
  xfr_ptr->sts_7to4_complete = 0;
  /* USER CODE END 1 */
/* USER CODE BEGIN Boot_Mode_Sequence_0 */
  int32_t timeout;
/* USER CODE END Boot_Mode_Sequence_0 */

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
  /* Wait until CPU2 boots and enters in stop mode or timeout*/
  timeout = 0xFFFF;
  while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) != RESET) && (timeout-- > 0));
  if ( timeout < 0 )
  {
  Error_Handler();
  }
/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* Configure the peripherals common clocks */
  PeriphCommonClock_Config();
/* USER CODE BEGIN Boot_Mode_Sequence_2 */
/* When system initialization is finished, Cortex-M7 will release Cortex-M4 by means of
HSEM notification */
/*HW semaphore Clock enable*/
__HAL_RCC_HSEM_CLK_ENABLE();
/*Take HSEM */
HAL_HSEM_FastTake(HSEM_ID_0);
/*Release HSEM in order to notify the CPU2(CM4)*/
HAL_HSEM_Release(HSEM_ID_0,0);
/* wait until CPU2 wakes up from stop mode */
timeout = 0xFFFF;
while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) == RESET) && (timeout-- > 0));
if ( timeout < 0 )
{
Error_Handler();
}
/* USER CODE END Boot_Mode_Sequence_2 */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_TIM8_Init();
  MX_USART3_UART_Init();
  MX_ADC2_Init();
  MX_ADC3_Init();
  MX_ADC1_Init();
  MX_DAC1_Init();
  MX_TIM4_Init();
  MX_TIM5_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
  HAL_ADC_Start_DMA(&hadc1, (uint32_t*)adc1_buf, 1500);
  HAL_ADC_Start_DMA(&hadc2, (uint32_t*)adc2_buf, 1500);//1536);

  HAL_ADC_Start_DMA(&hadc3, (uint32_t*)adc3_buf, 1500);

  HAL_TIM_Base_Start(&htim8);
  char message[] = "Testing M7";
    HAL_UART_Transmit(&huart3, (uint8_t *)message, strlen(message), HAL_MAX_DELAY);
    HAL_UART_Receive_IT(&huart3, uart3_rx_buf, 74);//74

    HAL_TIM_Base_Start(&htim4);
    HAL_TIM_Base_Start(&htim5);

    HAL_DAC_Start_DMA(&hdac1, DAC_CHANNEL_1, sine_val1, 100, DAC_ALIGN_12B_R);
    HAL_DAC_Start_DMA(&hdac1, DAC_CHANNEL_2, sine_val2, 100, DAC_ALIGN_12B_R);
    get_sineval1(100, 100);
    get_sineval2(100, 1);
    HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_2); //PB3
    HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1); //PC6
    Update_TIM2_PWM(1, 50);
    Update_TIM3_PWM(50, 50);

  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of Digital_Inputs */
  Digital_InputsHandle = osThreadNew(StartDigitalInputs, NULL, &Digital_Inputs_attributes);

  /* creation of Outputs */
  OutputsHandle = osThreadNew(StartOutputs, NULL, &Outputs_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {


	  //char testing[] = "testing...";
	  //HAL_UART_Transmit(&huart3, (uint8_t *)testing, strlen(testing), HAL_MAX_DELAY);
	 // HAL_Delay(100);
//		osDelay(50);
//		sprintf(usartbuffer, "%lu\r\n", test);
//	    HAL_UART_Transmit(&huart3, (uint8_t *)usartbuffer, strlen(usartbuffer), HAL_MAX_DELAY);

//	      xfr_ptr->sts_4to7 = 0; // Done reading


//    osDelay(1);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_DIRECT_SMPS_SUPPLY);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_DIV1;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 32;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 5;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief Peripherals Common Clock Configuration
  * @retval None
  */
void PeriphCommonClock_Config(void)
{
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Initializes the peripherals clock
  */
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_CKPER;
  PeriphClkInitStruct.CkperClockSelection = RCC_CLKPSOURCE_HSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */

  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV32;
  hadc1.Init.Resolution = ADC_RESOLUTION_16B;
  hadc1.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.NbrOfConversion = 2;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T8_TRGO;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc1.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc1.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  hadc1.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc1.Init.OversamplingMode = DISABLE;
  hadc1.Init.Oversampling.Ratio = 1;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure the ADC multi-mode
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc1, &multimode) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_64CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief ADC2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC2_Init(void)
{

  /* USER CODE BEGIN ADC2_Init 0 */

  /* USER CODE END ADC2_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC2_Init 1 */

  /* USER CODE END ADC2_Init 1 */

  /** Common config
  */
  hadc2.Instance = ADC2;
  hadc2.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV32;
  hadc2.Init.Resolution = ADC_RESOLUTION_16B;
  hadc2.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc2.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc2.Init.LowPowerAutoWait = DISABLE;
  hadc2.Init.ContinuousConvMode = DISABLE;
  hadc2.Init.NbrOfConversion = 3;
  hadc2.Init.DiscontinuousConvMode = DISABLE;
  hadc2.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T8_TRGO;
  hadc2.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc2.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc2.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  hadc2.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc2.Init.OversamplingMode = DISABLE;
  hadc2.Init.Oversampling.Ratio = 1;
  if (HAL_ADC_Init(&hadc2) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_64CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_10;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_15;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC2_Init 2 */

  /* USER CODE END ADC2_Init 2 */

}

/**
  * @brief ADC3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC3_Init(void)
{

  /* USER CODE BEGIN ADC3_Init 0 */

  /* USER CODE END ADC3_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC3_Init 1 */

  /* USER CODE END ADC3_Init 1 */

  /** Common config
  */
  hadc3.Instance = ADC3;
  hadc3.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV32;
  hadc3.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc3.Init.EOCSelection = ADC_EOC_SEQ_CONV;
  hadc3.Init.LowPowerAutoWait = DISABLE;
  hadc3.Init.ContinuousConvMode = DISABLE;
  hadc3.Init.NbrOfConversion = 5;
  hadc3.Init.DiscontinuousConvMode = DISABLE;
  hadc3.Init.ExternalTrigConv = ADC_EXTERNALTRIG_T8_TRGO;
  hadc3.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_RISING;
  hadc3.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DMA_CIRCULAR;
  hadc3.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  hadc3.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc3.Init.OversamplingMode = DISABLE;
  hadc3.Init.Oversampling.Ratio = 1;
  if (HAL_ADC_Init(&hadc3) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_64CYCLES_5;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = ADC_REGULAR_RANK_5;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC3_Init 2 */

  /* USER CODE END ADC3_Init 2 */

}

/**
  * @brief DAC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC1_Init(void)
{

  /* USER CODE BEGIN DAC1_Init 0 */

  /* USER CODE END DAC1_Init 0 */

  DAC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN DAC1_Init 1 */

  /* USER CODE END DAC1_Init 1 */

  /** DAC Initialization
  */
  hdac1.Instance = DAC1;
  if (HAL_DAC_Init(&hdac1) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT1 config
  */
  sConfig.DAC_SampleAndHold = DAC_SAMPLEANDHOLD_DISABLE;
  sConfig.DAC_Trigger = DAC_TRIGGER_T4_TRGO;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  sConfig.DAC_ConnectOnChipPeripheral = DAC_CHIPCONNECT_DISABLE;
  sConfig.DAC_UserTrimming = DAC_TRIMMING_FACTORY;
  if (HAL_DAC_ConfigChannel(&hdac1, &sConfig, DAC_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }

  /** DAC channel OUT2 config
  */
  sConfig.DAC_Trigger = DAC_TRIGGER_T5_TRGO;
  if (HAL_DAC_ConfigChannel(&hdac1, &sConfig, DAC_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DAC1_Init 2 */

  /* USER CODE END DAC1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 640-1;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 100-1;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 50;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */
  HAL_TIM_MspPostInit(&htim2);

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 640-1;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 100-1;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 50;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */
  HAL_TIM_MspPostInit(&htim3);

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 128-1;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */

}

/**
  * @brief TIM5 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM5_Init(void)
{

  /* USER CODE BEGIN TIM5_Init 0 */

  /* USER CODE END TIM5_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM5_Init 1 */

  /* USER CODE END TIM5_Init 1 */
  htim5.Instance = TIM5;
  htim5.Init.Prescaler = 0;
  htim5.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim5.Init.Period = 128-1;
  htim5.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim5.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim5) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim5, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim5, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM5_Init 2 */

  /* USER CODE END TIM5_Init 2 */

}

/**
  * @brief TIM8 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM8_Init(void)
{

  /* USER CODE BEGIN TIM8_Init 0 */

  /* USER CODE END TIM8_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM8_Init 1 */

  /* USER CODE END TIM8_Init 1 */
  htim8.Instance = TIM8;
  htim8.Init.Prescaler = 128-1;
  htim8.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim8.Init.Period = 1000-1;
  htim8.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim8.Init.RepetitionCounter = 0;
  htim8.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim8) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim8, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim8, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM8_Init 2 */

  /* USER CODE END TIM8_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 1000000;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart3, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart3, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream0_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream0_IRQn);
  /* DMA1_Stream1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
  /* DMA1_Stream2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream2_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream2_IRQn);
  /* DMA1_Stream3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream3_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream3_IRQn);
  /* DMA1_Stream4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream4_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream4_IRQn);
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOG_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14|GPIO_PIN_15, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_11|GPIO_PIN_14, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, GPIO_PIN_RESET);

  /*Configure GPIO pins : PC1 PC4 PC5 */
  GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF11_ETH;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PA1 PA2 PA7 */
  GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF11_ETH;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PE7 PE8 PE9 */
  GPIO_InitStruct.Pin = GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /*Configure GPIO pin : PB13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF11_ETH;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PB14 PB15 */
  GPIO_InitStruct.Pin = GPIO_PIN_14|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PD11 PD14 */
  GPIO_InitStruct.Pin = GPIO_PIN_11|GPIO_PIN_14;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pin : PG6 */
  GPIO_InitStruct.Pin = GPIO_PIN_6;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

  /*Configure GPIO pins : PA8 PA11 PA12 */
  GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_11|GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF10_OTG1_FS;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PA10 */
  GPIO_InitStruct.Pin = GPIO_PIN_10;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PG11 PG13 */
  GPIO_InitStruct.Pin = GPIO_PIN_11|GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.Alternate = GPIO_AF11_ETH;
  HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */


void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
	HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_14); // Toggle LED for visibility
	//HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, (uart3_rx_buf[5] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);

	if((uart3_rx_buf[3] - '0') < 2){
		HAL_GPIO_WritePin(GPIOE, GPIO_PIN_9,(uart3_rx_buf[3] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[5] - '0') < 2){
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, (uart3_rx_buf[5] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[7] - '0') < 2){
		HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, (uart3_rx_buf[7] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[9] - '0') < 2){
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, (uart3_rx_buf[9] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[11] - '0') < 2){
		HAL_GPIO_WritePin(GPIOE, GPIO_PIN_7, (uart3_rx_buf[11] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[13] - '0') < 2){
		HAL_GPIO_WritePin(GPIOE, GPIO_PIN_8, (uart3_rx_buf[13] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[15] - '0') < 2){
		HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, (uart3_rx_buf[15] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}
	if((uart3_rx_buf[17] - '0') < 2){
		HAL_GPIO_WritePin(GPIOD, GPIO_PIN_11, (uart3_rx_buf[17] - '0') ? GPIO_PIN_SET : GPIO_PIN_RESET);
	}

	//DO,1,2,3,4,5,6,7,8,PWM1, Freq, duty_cycle, PWM2, Freq, DutyCycle, DAC1, freq, amp, DAC2, freq, amp
	char temp[3];
	temp[0] = uart3_rx_buf[24]; temp[1] = uart3_rx_buf[25]; temp[2] = uart3_rx_buf[26];
	uint32_t PWM1_Freq = atoi(temp);
	temp[0] = uart3_rx_buf[28]; temp[1] = uart3_rx_buf[29]; temp[2] = uart3_rx_buf[30];
	uint32_t PWM1_Duty_Cycle = atoi(temp);
	temp[0] = uart3_rx_buf[37]; temp[1] = uart3_rx_buf[38]; temp[2] = uart3_rx_buf[39];
	uint32_t PWM2_Freq = atoi(temp);
	temp[0] = uart3_rx_buf[41]; temp[1] = uart3_rx_buf[42]; temp[2] = uart3_rx_buf[43];
	uint32_t PWM2_Duty_Cycle = atoi(temp);
	temp[0] = uart3_rx_buf[50]; temp[1] = uart3_rx_buf[51]; temp[2] = uart3_rx_buf[52];
	uint32_t DAC1_Freq = atoi(temp);
	temp[0] = uart3_rx_buf[54]; temp[1] = uart3_rx_buf[55]; temp[2] = uart3_rx_buf[56];
	uint32_t DAC1_Amplitude = atoi(temp);
	temp[0] = uart3_rx_buf[63]; temp[1] = uart3_rx_buf[64]; temp[2] = uart3_rx_buf[65];
	uint32_t DAC2_Freq = atoi(temp);
	temp[0] = uart3_rx_buf[67]; temp[1] = uart3_rx_buf[68]; temp[2] = uart3_rx_buf[69];
	uint32_t DAC2_Amplitude = atoi(temp);

	Update_TIM2_PWM(PWM1_Freq, PWM1_Duty_Cycle);//Freq, Duty
	Update_TIM3_PWM(PWM2_Freq, PWM2_Duty_Cycle);
	get_sineval1(DAC1_Amplitude, DAC1_Freq);
	get_sineval2(DAC2_Amplitude, DAC2_Freq); //Amp, Freq

	HAL_UART_Receive_IT(&huart3, uart3_rx_buf, 74);

}

/*
	//Input Message in Form: DO,1,2,3,4,5,6,7,8,PWM1, Freq, duty_cycle, PWM2, Freq, DutyCycle, DAC1, freq, amp, DAC2, freq, amp
	Digital_Outputs[0] = uart3_rx_buf[3] - '0';
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_9, Digital_Outputs[0] ? GPIO_PIN_SET : GPIO_PIN_RESET);

	Digital_Outputs[1] = uart3_rx_buf[5] - '0';
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, Digital_Outputs[1] ? GPIO_PIN_SET : GPIO_PIN_RESET);

	Digital_Outputs[2] = uart3_rx_buf[7] -'0';
	Digital_Outputs[3] = uart3_rx_buf[9] - '0';
	Digital_Outputs[4] = uart3_rx_buf[11] - '0';
	Digital_Outputs[5] = uart3_rx_buf[13] - '0';
	Digital_Outputs[6] = uart3_rx_buf[15] - '0';
	Digital_Outputs[7] = uart3_rx_buf[17] - '0';
	char buf[100];
	sprintf(buf, "Parsed DO values: %lu %lu %lu %lu %lu %lu %lu %lu\r\n", Digital_Outputs[0], Digital_Outputs[1], Digital_Outputs[2], Digital_Outputs[3], Digital_Outputs[4], Digital_Outputs[5], Digital_Outputs[6], Digital_Outputs[7]);
	HAL_UART_Transmit(&huart3, (uint8_t *) buf, strlen(buf), 100);
	HAL_Delay(50);
	HAL_UART_Receive_IT(&huart3, uart3_rx_buf, 72);
*/


/*
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_9, Digital_Outputs[0] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_14, Digital_Outputs[1] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, Digital_Outputs[2] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, Digital_Outputs[3] ? GPIO_PIN_SET : GPIO_PIN_RESET);

	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_7, Digital_Outputs[4] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOE, GPIO_PIN_8, Digital_Outputs[5] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOG, GPIO_PIN_6, Digital_Outputs[6] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_11, Digital_Outputs[7] ? GPIO_PIN_SET : GPIO_PIN_RESET);
	*/


/*
void put_M7(uint32_t buffer[64]) // send data from M7 to M4
{
	if (xfr_ptr->sts_7to4_half == 0) // if M7 to M4 buffer is empty
	{
		for(int n = 0; n < ; n++)
		{
			xfr_ptr->M7toM4[n] = buffer[n]; // transfer data
			buffer[n] = 0; // clear M7 to M4 buffer
		}
		xfr_ptr->sts_7to4 = 1; // M7 to M4 buffer has data
	}
}
*/
/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDigitalInputs */
/**
  * @brief  Function implementing the Digital_Inputs thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDigitalInputs */
void StartDigitalInputs(void *argument)
{
  /* USER CODE BEGIN 5 */
	//uint32_t buffer[5000]; // buffer to receive data
	char strBuffer[15000];
	strBuffer[0] = '\0';
	char temp[100];
  /* Infinite loop */
  for(;;)
  {
	  if (xfr_ptr->sts_4to7_half == 1) // if M4 to M7 buffer has data
	  	{
		    strcat(strBuffer, "DI,");
	  		for(int n = 0; n < 5000; n++)
	  		{
	  			//buffer[n] = xfr_ptr->M4toM7[n]; // transfer data
	  			sprintf(temp, "%lu,", xfr_ptr->M4toM7[n]);
	  			strcat(strBuffer, temp);
	  			xfr_ptr->M4toM7[n] = 0; // clear M4 to M7 buffer
	  		}
  		    HAL_UART_Transmit(&huart3, (uint8_t *)strBuffer, strlen(strBuffer), HAL_MAX_DELAY);
  		    strBuffer[0] = '\0';
	  		xfr_ptr->sts_4to7_half = 0;
	  	}
	    HAL_UART_Transmit(&huart3, (uint8_t *)"\r\n", strlen("\r\n"), HAL_MAX_DELAY);

	  	if (xfr_ptr->sts_4to7_complete == 1) // if M4 to M7 buffer has data
	  	{
	  		strcat(strBuffer, "DI,");
	  		for(int n = 5000; n < 10000; n++)
	  		{
	  			//buffer[n-5000] = xfr_ptr->M4toM7[n]; // transfer data
	  			sprintf(temp, "%lu,", xfr_ptr->M4toM7[n]);
	  			strcat(strBuffer, temp);
	  			xfr_ptr->M4toM7[n] = 0; // clear M4 to M7 buffer
	  		}
  		    HAL_UART_Transmit(&huart3, (uint8_t *)strBuffer, strlen(strBuffer), HAL_MAX_DELAY);
  		    strBuffer[0] = '\0';
	  		xfr_ptr->sts_4to7_complete = 0;
	  		//sprintf(strBuffer, "%u \r\n", buffer);
	  		//HAL_UART_Transmit(&huart3, (uint8_t *)strBuffer, strlen(strBuffer), HAL_MAX_DELAY);

	  	}
	    HAL_UART_Transmit(&huart3, (uint8_t *)"\r\n", strlen("\r\n"), HAL_MAX_DELAY);

	  	osDelay(50);

  }

  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartOutputs */
/**
* @brief Function implementing the Outputs thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartOutputs */
void StartOutputs(void *argument)
{
  /* USER CODE BEGIN StartOutputs */
  /* Infinite loop */
  for(;;)
  {



    osDelay(100);
  }
  /* USER CODE END StartOutputs */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
