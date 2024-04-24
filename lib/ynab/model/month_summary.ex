# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.MonthSummary do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :month,
    :note,
    :income,
    :budgeted,
    :activity,
    :to_be_budgeted,
    :age_of_money,
    :deleted
  ]

  @type t :: %__MODULE__{
          :month => Date.t(),
          :note => String.t() | nil,
          :income => integer(),
          :budgeted => integer(),
          :activity => integer(),
          :to_be_budgeted => integer(),
          :age_of_money => integer() | nil,
          :deleted => boolean()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:month, :date, nil)
  end
end
