# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.ScheduledTransactionResponseData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :scheduled_transaction
  ]

  @type t :: %__MODULE__{
          :scheduled_transaction => YNAB.Model.ScheduledTransactionDetail.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :scheduled_transaction,
      :struct,
      YNAB.Model.ScheduledTransactionDetail
    )
  end
end
