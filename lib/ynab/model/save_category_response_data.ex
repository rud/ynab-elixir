# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.SaveCategoryResponseData do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :category,
    :server_knowledge
  ]

  @type t :: %__MODULE__{
          :category => YNAB.Model.Category.t(),
          :server_knowledge => integer()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:category, :struct, YNAB.Model.Category)
  end
end
