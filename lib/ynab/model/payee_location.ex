# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.PayeeLocation do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :payee_id,
    :latitude,
    :longitude,
    :deleted
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :payee_id => String.t(),
          :latitude => String.t(),
          :longitude => String.t(),
          :deleted => boolean()
        }

  def decode(value) do
    value
  end
end
