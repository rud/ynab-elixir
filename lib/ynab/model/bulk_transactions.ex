# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.BulkTransactions do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :transactions
  ]

  @type t :: %__MODULE__{
          :transactions => [YNAB.Model.SaveTransactionWithOptionalFields.t()]
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :transactions,
      :list,
      YNAB.Model.SaveTransactionWithOptionalFields
    )
  end
end
