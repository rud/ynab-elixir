# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.ErrorResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :error
  ]

  @type t :: %__MODULE__{
          :error => YNAB.Model.ErrorDetail.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:error, :struct, YNAB.Model.ErrorDetail)
  end
end
