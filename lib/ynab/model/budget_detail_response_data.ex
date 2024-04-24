# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.BudgetDetailResponseData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :budget,
    :server_knowledge
  ]

  @type t :: %__MODULE__{
          :budget => YNAB.Model.BudgetDetail.t(),
          :server_knowledge => integer()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:budget, :struct, YNAB.Model.BudgetDetail)
  end
end
