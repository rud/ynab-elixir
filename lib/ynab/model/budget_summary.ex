# NOTE: This file is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit manually.

defmodule YNAB.Model.BudgetSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :last_modified_on,
    :date_format,
    :currency_format
  ]

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          last_modified_on: DateTime.t(),
          date_format: DateFormat,
          currency_format: CurrencyFormat
        }
end

defimpl Poison.Decoder, for: YNAB.Model.BudgetSummary do
  import YNAB.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:date_format, :struct, YNAB.Model.DateFormat, options)
    |> deserialize(:currency_format, :struct, YNAB.Model.CurrencyFormat, options)
  end
end
