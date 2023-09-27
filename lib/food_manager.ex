defmodule FoodManager do
  @foods %{
    "burger" => 10.0,
    "pizza" => 12.0,


    "salad" => 8.0
  }

  def get_food_cost(food) do


    case Map.get(@foods, String.downcase(food)) do


      nil -> {:error, "Food not found"}





      cost -> {:ok, cost}
    end
  end
end
