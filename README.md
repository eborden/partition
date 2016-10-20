#Generic Data.List.parttion
An experiment in benchmarking a generic version of Data.List.partition.

| Implementation | 10 nf    | 1000 nf  | 10 whnf  | 1000 whnf |
|----------------|:--------:|:--------:|:--------:|:---------:|
| Data.List      | 523.4 ns | 51.21 μs | 41.66 ns | 36.96 ns  |
| generic lazy   | 410.4 ns | 42.06 μs | 34.75 ns | 28.25 ns  |
| generic strict | 148.9 ns | 16.26 μs | 111.2 ns | 14.50 μs  |

```
benchmarking list/nf 10
time                 466.0 ns   (415.3 ns .. 523.5 ns)
                     0.880 R²   (0.789 R² .. 0.950 R²)
mean                 523.4 ns   (465.2 ns .. 640.6 ns)
std dev              297.2 ns   (160.9 ns .. 507.5 ns)
variance introduced by outliers: 100% (severely inflated)

benchmarking list/nf 1000
time                 44.39 μs   (40.28 μs .. 49.62 μs)
                     0.934 R²   (0.906 R² .. 0.965 R²)
mean                 51.21 μs   (46.44 μs .. 57.96 μs)
std dev              19.89 μs   (13.55 μs .. 30.01 μs)
variance introduced by outliers: 99% (severely inflated)

benchmarking list/whnf 10
time                 37.23 ns   (35.92 ns .. 38.93 ns)
                     0.980 R²   (0.969 R² .. 0.988 R²)
mean                 41.66 ns   (38.40 ns .. 50.25 ns)
std dev              15.30 ns   (7.329 ns .. 28.89 ns)
variance introduced by outliers: 100% (severely inflated)

benchmarking list/whnf 1000
time                 36.40 ns   (35.32 ns .. 37.50 ns)
                     0.989 R²   (0.980 R² .. 0.995 R²)
mean                 36.96 ns   (35.59 ns .. 39.52 ns)
std dev              5.777 ns   (4.115 ns .. 8.537 ns)
variance introduced by outliers: 97% (severely inflated)



benchmarking lazy/nf 10
time                 370.2 ns   (359.5 ns .. 382.6 ns)
                     0.986 R²   (0.978 R² .. 0.994 R²)
mean                 410.4 ns   (373.7 ns .. 518.5 ns)
std dev              165.9 ns   (56.20 ns .. 325.8 ns)
variance introduced by outliers: 100% (severely inflated)

benchmarking lazy/nf 1000
time                 45.04 μs   (41.41 μs .. 48.17 μs)
                     0.961 R²   (0.936 R² .. 0.981 R²)
mean                 42.06 μs   (40.20 μs .. 45.57 μs)
std dev              8.027 μs   (5.927 μs .. 12.54 μs)
variance introduced by outliers: 95% (severely inflated)

benchmarking lazy/whnf 10
time                 32.89 ns   (31.27 ns .. 35.19 ns)
                     0.968 R²   (0.952 R² .. 0.985 R²)
mean                 34.75 ns   (32.69 ns .. 40.38 ns)
std dev              10.73 ns   (6.283 ns .. 18.31 ns)
variance introduced by outliers: 99% (severely inflated)

benchmarking lazy/whnf 1000
time                 29.72 ns   (27.23 ns .. 32.77 ns)
                     0.963 R²   (0.938 R² .. 0.994 R²)
mean                 28.25 ns   (27.34 ns .. 30.06 ns)
std dev              4.076 ns   (2.775 ns .. 6.606 ns)
variance introduced by outliers: 96% (severely inflated)



benchmarking strict/nf 10
time                 145.9 ns   (140.9 ns .. 151.1 ns)
                     0.991 R²   (0.988 R² .. 0.994 R²)
mean                 148.9 ns   (144.5 ns .. 154.8 ns)
std dev              16.37 ns   (11.92 ns .. 24.39 ns)
variance introduced by outliers: 92% (severely inflated)

benchmarking strict/nf 1000
time                 15.54 μs   (14.36 μs .. 17.36 μs)
                     0.895 R²   (0.808 R² .. 0.988 R²)
mean                 16.26 μs   (15.11 μs .. 18.16 μs)
std dev              5.054 μs   (2.484 μs .. 8.262 μs)
variance introduced by outliers: 99% (severely inflated)

benchmarking strict/whnf 10
time                 122.8 ns   (110.7 ns .. 132.2 ns)
                     0.966 R²   (0.951 R² .. 0.989 R²)
mean                 111.2 ns   (107.0 ns .. 116.8 ns)
std dev              17.46 ns   (13.41 ns .. 24.21 ns)
variance introduced by outliers: 96% (severely inflated)

benchmarking strict/whnf 1000
time                 12.98 μs   (12.72 μs .. 13.30 μs)
                     0.985 R²   (0.969 R² .. 0.993 R²)
mean                 14.50 μs   (13.64 μs .. 16.46 μs)
std dev              4.130 μs   (2.407 μs .. 7.014 μs)
variance introduced by outliers: 98% (severely inflated)
```
