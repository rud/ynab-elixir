# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.PayeeResponseData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :payee
  ]

  @type t :: %__MODULE__{
          :payee => YNAB.Model.Payee.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:payee, :struct, YNAB.Model.Payee)
  end
end
