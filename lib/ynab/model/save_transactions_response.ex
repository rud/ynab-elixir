# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.SaveTransactionsResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data => YNAB.Model.SaveTransactionsResponseData.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:data, :struct, YNAB.Model.SaveTransactionsResponseData)
  end
end
