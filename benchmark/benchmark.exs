import Powerset

list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# list = [1, 2, 3, 4, 5, 6, 7, 8, 9]

Benchee.run(
  %{
    "bits" => fn -> powerset_bits(list) end,
    "append" => fn -> powerset_append(list) end,
    "prepend" => fn -> powerset_prepend(list) end
  },
  time: 10,
  memory_time: 2
)
