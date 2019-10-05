# NOTE: This file is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit manually.

defmodule YNAB.Model.TransactionResponseData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :transaction
  ]

  @type t :: %__MODULE__{
          transaction: TransactionDetail
        }
end

defimpl Poison.Decoder, for: YNAB.Model.TransactionResponseData do
  import YNAB.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:transaction, :struct, YNAB.Model.TransactionDetail, options)
  end
end
