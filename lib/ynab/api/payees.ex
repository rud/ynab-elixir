# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule YNAB.Api.Payees do
  @moduledoc """
  API calls for all endpoints tagged `Payees`.
  """

  alias YNAB.Connection
  import YNAB.RequestBuilder

  @doc """
  Single payee
  Returns a single payee

  ### Parameters

  - `connection` (YNAB.Connection): Connection to server
  - `budget_id` (String.t): The id of the budget. \"last-used\" can be used to specify the last used budget and \"default\" can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
  - `payee_id` (String.t): The id of the payee
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, YNAB.Model.PayeeResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_payee_by_id(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, YNAB.Model.PayeeResponse.t()}
          | {:ok, YNAB.Model.ErrorResponse.t()}
          | {:error, Tesla.Env.t()}
  def get_payee_by_id(connection, budget_id, payee_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/budgets/#{budget_id}/payees/#{payee_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, YNAB.Model.PayeeResponse},
      {404, YNAB.Model.ErrorResponse},
      {:default, YNAB.Model.ErrorResponse}
    ])
  end

  @doc """
  List payees
  Returns all payees

  ### Parameters

  - `connection` (YNAB.Connection): Connection to server
  - `budget_id` (String.t): The id of the budget. \"last-used\" can be used to specify the last used budget and \"default\" can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
  - `opts` (keyword): Optional parameters
    - `:last_knowledge_of_server` (integer()): The starting server knowledge.  If provided, only entities that have changed since `last_knowledge_of_server` will be included.

  ### Returns

  - `{:ok, YNAB.Model.PayeesResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_payees(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, YNAB.Model.PayeesResponse.t()}
          | {:ok, YNAB.Model.ErrorResponse.t()}
          | {:error, Tesla.Env.t()}
  def get_payees(connection, budget_id, opts \\ []) do
    optional_params = %{
      :last_knowledge_of_server => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/budgets/#{budget_id}/payees")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, YNAB.Model.PayeesResponse},
      {404, YNAB.Model.ErrorResponse},
      {:default, YNAB.Model.ErrorResponse}
    ])
  end
end
