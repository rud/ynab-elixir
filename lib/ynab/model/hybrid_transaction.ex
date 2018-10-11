# NOTE: This file is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit manually.

defmodule YNAB.Model.HybridTransaction do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :date,
    :amount,
    :memo,
    :cleared,
    :approved,
    :flag_color,
    :account_id,
    :payee_id,
    :category_id,
    :transfer_account_id,
    :transfer_transaction_id,
    :import_id,
    :deleted,
    :type,
    :parent_transaction_id,
    :account_name,
    :payee_name,
    :category_name
  ]

  @type t :: %__MODULE__{
          id: String.t(),
          date: Date.t(),
          amount: integer(),
          memo: String.t(),
          cleared: String.t(),
          approved: boolean(),
          flag_color: String.t(),
          account_id: String.t(),
          payee_id: String.t(),
          category_id: String.t(),
          transfer_account_id: String.t(),
          transfer_transaction_id: String.t(),
          import_id: String.t(),
          deleted: boolean(),
          type: String.t(),
          parent_transaction_id: String.t(),
          account_name: String.t(),
          payee_name: String.t(),
          category_name: String.t()
        }
end

defimpl Poison.Decoder, for: YNAB.Model.HybridTransaction do
  import YNAB.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:date, :date, nil, options)
  end
end
