# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.ScheduledTransactionDetail do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :date_first,
    :date_next,
    :frequency,
    :amount,
    :memo,
    :flag_color,
    :flag_name,
    :account_id,
    :payee_id,
    :category_id,
    :transfer_account_id,
    :deleted,
    :account_name,
    :payee_name,
    :category_name,
    :subtransactions
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :date_first => Date.t(),
          :date_next => Date.t(),
          :frequency => String.t(),
          :amount => integer(),
          :memo => String.t() | nil,
          :flag_color => YNAB.Model.TransactionFlagColor.t() | nil,
          :flag_name => String.t() | nil,
          :account_id => String.t(),
          :payee_id => String.t() | nil,
          :category_id => String.t() | nil,
          :transfer_account_id => String.t() | nil,
          :deleted => boolean(),
          :account_name => String.t(),
          :payee_name => String.t() | nil,
          :category_name => String.t() | nil,
          :subtransactions => [YNAB.Model.ScheduledSubTransaction.t()]
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date_first, :date, nil)
    |> Deserializer.deserialize(:date_next, :date, nil)
    |> Deserializer.deserialize(:flag_color, :struct, YNAB.Model.TransactionFlagColor)
    |> Deserializer.deserialize(:subtransactions, :list, YNAB.Model.ScheduledSubTransaction)
  end
end
