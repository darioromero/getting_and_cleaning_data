# Code Book

>Note: The following Data Book describes the selected variables BEFORE making tidy the input data. See also table after this one.

|  No  |   Attribute    |    Description       |   Data Type   |   Values   |
| -----|:---------------|:--------------------:| ------------- | ------------------- |
|  1  |  subject       |  Person performing activity |  ordinal   |  integer [1:30] |
|  2  |  activity      |  Activity performed by subject |  categorical  |  'walking', 'walking_upstairs', 'walking_downstairs', 'sitting',  'standing', 'laying' |
|  3  |  time-body-acc-mean-x  |   Mean X-axis body linear acceleration on time dimension  |  real-valued  |  numeric  |
|  4  |  time-body-acc-mean-y  |   Mean Y-axis body linear acceleration on time dimension  |  real-valued |  numeric  |
|  5  |  time-body-acc-mean-z  |   Mean Z-axis body linear acceleration on time dimension  |  real-valued |  numeric  |
|  6  |  time-body-acc-std-x   |   Standard deviation X-axis body linear acceleration on time dimension  |  real-valued |  numeric  |
|  7  |  time-body-acc-std-y   |   Standard deviation X-axis body linear acceleration on time dimension  |  real-valued |  numeric  |
|  8  |  time-body-acc-std-z   |   Standard deviation X-axis body linear acceleration on time dimension  |  real-valued |  numeric  |
|  9  |  time-gravity-acc-mean-x  |   Mean X-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 10  |  time-gravity-acc-mean-y  |   Mean Y-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 11  |  time-gravity-acc-mean-z  |   Mean Z-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 12  |  time-gravity-acc-std-x  |   Standard deviation X-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 13  |  time-gravity-acc-std-y  |   Standard deviation Y-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 14  |  time-gravity-acc-std-z  |   Standard deviation Z-axis gravity accelleration on time dimension  |  real-valued |  numeric  |
| 15  |  time-body-accjerk-mean-x |   Mean X-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 16  |  time-body-accjerk-mean-y |   Mean Y-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 17  |  time-body-accjerk-mean-z |   Mean Z-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 18  |  time-body-accjerk-std-x  |   Standard Deviation X-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 19  |  time-body-accjerk-std-y  |   Standard Deviation Y-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 20  |  time-body-accjerk-std-z  |   Standard Deviation Z-axis Jerk signal linear acceleration on time dimension  |  real-valued |  numeric  |
| 21  |  time-body-gyro-mean-x |   Mean X-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 22  |  time-body-gyro-mean-y |   Mean Y-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 23  |  time-body-gyro-mean-z |   Mean Z-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 24  |  time-body-gyro-std-x  |   Standard deviation X-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 25  |  time-body-gyro-std-y  |   Standard deviation Y-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 26  |  time-body-gyro-std-z  |   Standard deviation Z-axis body angular velocity on time dimension  |  real-valued |  numeric  |
| 27  |  time-body-gyrojerk-mean-x  |   Mean X-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 28  |  time-body-gyrojerk-mean-y  |   Mean Y-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 29  |  time-body-gyrojerk-mean-z  |   Mean Z-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 30  |  time-body-gyrojerk-std-x |   Standard deviation X-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 31  |  time-body-gyrojerk-std-y |   Standard deviation Y-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 32  |  time-body-gyrojerk-std-z |   Standard deviation Z-axis body angular velocity jerk signal on time dimension  |  real-valued |  numeric  |
| 33  |  frequency-body-acc-mean-x              |   Mean X-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 34  |  frequency-body-acc-mean-y              |   Mean Y-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 35  |  frequency-body-acc-mean-z              |   Mean Z-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 36  |  frequency-body-acc-std-x               |   Standard deviation X-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 37  |  frequency-body-acc-std-y               |   Standard deviation X-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 38  |  frequency-body-acc-std-z               |   Standard deviation X-axis body linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 39  |  frequency-body-accjerk-mean-x          |   Mean X-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 40  |  frequency-body-accjerk-mean-y          |   Mean Y-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 41  |  frequency-body-accjerk-mean-z          |   Mean Z-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 42  |  frequency-body-accjerk-std-x           |   Standard Deviation X-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 43  |  frequency-body-accjerk-std-y           |   Standard Deviation Y-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 44  |  frequency-body-accjerk-std-z           |   Standard Deviation Z-axis Jerk signal linear acceleration on frequency dimension  |  real-valued |  numeric  |
| 45  |  frequency-body-gyro-mean-x             |   Mean X-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |
| 46  |  frequency-body-gyro-mean-y             |   Mean Y-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |
| 47  |  frequency-body-gyro-mean-z             |   Mean Z-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |
| 48  |  frequency-body-gyro-std-x              |   Standard deviation X-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |
| 49  |  frequency-body-gyro-std-y              |   Standard deviation Y-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |
| 50  |  frequency-body-gyro-std-z              |   Standard deviation Z-axis body angular velocity on frequency dimension  |  real-valued |  numeric  |

***

>Note: The following Data Book describes the final set of variables AFTER making data tidy.

|  No  |   Attribute    |    Description       |   Data Type   |   Values   |
| -----|:---------------|:--------------------:| ------------- | ------------------- |
|  01  |  subject       |  Person performing activity |  ordinal   |  integer [1:30] |
|  02  |  activity      |  Activity performed by subject |  categorical  |  'walking', 'walking_upstairs', 'walking_downstairs', 'sitting',  'standing', 'laying' |
|  03  |  domain        |  Attribute denotes where the processing of data will be based on  |  categorical  |  'time', 'frequency' |
|  04  |  type          |  Indicates wheather measurement is attached to accelerometer or gyroscope |  categorical |  'accelerometer', 'gyroscope'  |
|  05  |  signal        |  Indicates type of signal obtained after processing with filters  |  categorical |  'linear acceleration', 'jerk signal linear accel', 'jerk signal ang veloc', 'angular velocity'  |
|  06  |  stat          |  Type of statistical component: mean average and standard deviation  |  categorical  |  'mean', 'stdev'  |
|  07  |  component     |  Vectorial component in the direction of X, Y, Z   |  categorical  |  'X', 'Y', 'Z'  |
|  08  |  average       |  Value of the statistical component: mean() or standard deviation() |  real-valued  |  numeric   |

```R
x <- 'This R language rocks!!!'
print(x)
```
