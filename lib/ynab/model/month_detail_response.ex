# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.MonthDetailResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data => YNAB.Model.MonthDetailResponseData.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:data, :struct, YNAB.Model.MonthDetailResponseData)
  end
end
