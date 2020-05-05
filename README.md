# Powerset

[Powerset](https://en.wikipedia.org/wiki/Power_set) function benchmarks in Elixir.

Using [Rosetta code](https://www.rosettacode.org/wiki/Power_set#Elixir) and [benchee](https://github.com/bencheeorg/benchee).

## Run benchmarks

`mix run benchmark/benchmark.exs`

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-8700B CPU @ 3.20GHz
Number of Available Cores: 12
Available memory: 64 GB
Elixir 1.10.3
Erlang 22.3.3

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 10 s
memory time: 2 s
parallel: 1
inputs: none specified
Estimated total run time: 42 s

Benchmarking append...
Benchmarking bits...
Benchmarking prepend...

Name              ips        average  deviation         median         99th %
prepend      135.75 K        7.37 μs   ±224.89%           7 μs          12 μs
append        55.91 K       17.89 μs    ±59.76%          17 μs          38 μs
bits           1.82 K      548.27 μs     ±7.61%         535 μs         736 μs

Comparison:
prepend      135.75 K
append        55.91 K - 2.43x slower +10.52 μs
bits           1.82 K - 74.43x slower +540.91 μs

Memory usage statistics:

Name       Memory usage
prepend        15.97 KB
append         27.49 KB - 1.72x memory usage +11.52 KB
bits          179.94 KB - 11.27x memory usage +163.97 KB

**All measurements for memory usage were the same**
```
