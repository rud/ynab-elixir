# NOTE: This file is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit manually.

defmodule YNAB.Model.CategoriesResponseData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :category_groups,
    :server_knowledge
  ]

  @type t :: %__MODULE__{
          category_groups: [CategoryGroupWithCategories],
          server_knowledge: integer()
        }
end

defimpl Poison.Decoder, for: YNAB.Model.CategoriesResponseData do
  import YNAB.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:category_groups, :list, YNAB.Model.CategoryGroupWithCategories, options)
  end
end
