# alias BradsApp.FoodManager

defmodule OrderManager do
  defstruct guest_name: "", items: []



  def create_order(guest_name, items) do


    %__MODULE__{guest_name: guest_name, items: items}
  end

  def calculate_total(order) do
      Enum.reduce(order.items, 0, fn item, acc ->


      case FoodManager.get_food_cost(item) do


        {:ok, cost} -> acc + cost


        {:error, _} -> acc

      end
    end)
  end
end
