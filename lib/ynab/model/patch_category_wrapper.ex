# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Model.PatchCategoryWrapper do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :category
  ]

  @type t :: %__MODULE__{
          :category => YNAB.Model.SaveCategory.t()
        }

  alias YNAB.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:category, :struct, YNAB.Model.SaveCategory)
  end
end
