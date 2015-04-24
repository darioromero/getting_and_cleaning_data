
|No |  Variable  |  Description  |  Values  |
|--:|:---------- |:------------ :| --------:|
| 1 |subject    |Person performing activity   | denoted as number [1:30] |
| 2 |activity   |Activity performed by subject   | walking, walking upstairs, |
|   |   |  | walking downstairs, sitting |
|   |   |  | standing, laying |
| 3 |time-body-acc-mean-x  | Mean X-axis body linear acceleration on time dimension | numeric |
| 4 |time-body-acc-mean-y  | Mean Y-axis body linear acceleration on time dimension | numeric |
| 5 |time-body-acc-mean-z  | Mean Z-axis body linear acceleration on time dimension | numeric |
| 6 |time-body-acc-std-x   | Standard deviation X-axis body linear acceleration on time dimension | numeric |
| 7 |time-body-acc-std-y   | Standard deviation X-axis body linear acceleration on time dimension | numeric |
| 8 |time-body-acc-std-z   | Standard deviation X-axis body linear acceleration on time dimension | numeric |
| 9 |time-gravity-acc-mean-x  | Mean X-axis gravity accelleration on time dimension | numeric |
|10 |time-gravity-acc-mean-y  | Mean Y-axis gravity accelleration on time dimension | numeric |
|11 |time-gravity-acc-mean-z  | Mean Z-axis gravity accelleration on time dimension | numeric |
|12 |time-gravity-acc-std-x  | Standard deviation X-axis gravity accelleration on time dimension | numeric |
|13 |time-gravity-acc-std-y  | Standard deviation Y-axis gravity accelleration on time dimension | numeric |
|14 |time-gravity-acc-std-z  | Standard deviation Z-axis gravity accelleration on time dimension | numeric |
|15 |time-body-accjerk-mean-x | Mean X-axis Jerk signal linear acceleration on time dimension | numeric |
|16 |time-body-accjerk-mean-y | Mean Y-axis Jerk signal linear acceleration on time dimension | numeric |
|17 |time-body-accjerk-mean-z | Mean Z-axis Jerk signal linear acceleration on time dimension | numeric |
|18 |time-body-accjerk-std-x  | Standard Deviation X-axis Jerk signal linear acceleration on time dimension | numeric |
|19 |time-body-accjerk-std-y  | Standard Deviation Y-axis Jerk signal linear acceleration on time dimension | numeric |
|20 |time-body-accjerk-std-z  | Standard Deviation Z-axis Jerk signal linear acceleration on time dimension | numeric |
|21 |time-body-gyro-mean-x | Mean X-axis body angular velocity on time dimension | numeric |
|22
|time-body-gyro-mean-y | Mean Y-axis body angular velocity on time dimension | numeric |
|23 |time-body-gyro-mean-z | Mean Z-axis body angular velocity on time dimension | numeric |
|24 |time-body-gyro-std-x  | Standard deviation X-axis body angular velocity on time dimension | numeric |
|25 |time-body-gyro-std-y  | Standard deviation Y-axis body angular velocity on time dimension | numeric |
|26 |time-body-gyro-std-z  | Standard deviation Z-axis body angular velocity on time dimension | numeric |
|27 |time-body-gyrojerk-mean-x  | Mean X-axis body angular velocity jerk signal on time dimension | numeric |
|28 |time-body-gyrojerk-mean-y  | Mean Y-axis body angular velocity jerk signal on time dimension | numeric |
|29 |time-body-gyrojerk-mean-z  | Mean Z-axis body angular velocity jerk signal on time dimension | numeric |
|30 |time-body-gyrojerk-std-x | Standard deviation X-axis body angular velocity jerk signal on time dimension | numeric |
|31 |time-body-gyrojerk-std-y | Standard deviation Y-axis body angular velocity jerk signal on time dimension | numeric |
|32 |time-body-gyrojerk-std-z | Standard deviation Z-axis body angular velocity jerk signal on time dimension | numeric |
|33 |time-body-acc-mean-mag  | Mean scalar magnitude body linear acceleration on time dimension | numeric |
|34 |time-body-acc-std-mag | Standard deviation scalar magnitude body linear acceleration on time dimension | numeric |
|35 |time-gravity-acc-mean-mag  | Mean scalar magnitude gravity accelleration on time dimension | numeric |
|36 |time-gravity-acc-std-mag | Standard deviation scalar magnitude gravity accelleration on time dimension | numeric |
|37 |time-body-accjerk-mean-mag | Mean scalar magnitude Jerk signal linear acceleration on time dimension | numeric |
|38 |time-body-accjerk-std-mag  | Standard deviation scalar magnitude Jerk signal linear acceleration on time dimension | numeric |
|39 |time-body-gyro-mean-mag  | Mean scalar magnitude body angular velocity on time dimension | numeric |
|40 |time-body-gyro-std-mag  | Standard deviation scalar magnitude body angular velocity on time dimension | numeric |
|41 |time-body-gyrojerk-mean-mag | Mean scalar magnitude body angular velocity jerk signal on time dimension | numeric |
|42 |time-body-gyrojerk-std-mag | Standard deviation scalar magnitude body angular velocity jerk signal on time dimension | numeric |


Note: The Data Book above describes the variables used before doing the data tidying process.

```R
no_funciona <- c('si', 'a veces', 'de vez en cuando', raras veces', 'nunca')
print(no_funciona)
```

