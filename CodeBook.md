
|No |  Variable  |  Description  |  Values  |
|--:|:---------- |:------------ :| --------:|
| 1 |subject    |Person performing activity   | denoted as number [1:30] |
| 2 |activity   |Activity performed by subject   | walking, walking upstairs, |
|   |   |  | walking downstairs, sitting |
|   |   |  | standing, laying |


Note: The Data Book above describes the variables used before doing the data tidying process.

```R
no_funciona <- c('si', 'a veces', 'de vez en cuando', raras veces', 'nunca')
print(no_funciona)
```

