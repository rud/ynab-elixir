# NOTE: This file is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit manually.

defmodule YNAB.Api.Transactions do
  @moduledoc """
  API calls for all endpoints tagged `Transactions`.
  """
  alias YNAB.Client
  import YNAB.RequestBuilder

  @doc """
  Create a single transaction or multiple transactions
  Creates a single transaction or multiple transactions.  If you provide a body containing a &#39;transaction&#39; object, a single transaction will be created and if you provide a body containing a &#39;transactions&#39; array, multiple transactions will be created.  Scheduled transactions cannot be created on this endpoint.

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - data (SaveTransactionsWrapper): The transaction or transactions to create.  To create a single transaction you can specify a value for the &#39;transaction&#39; object and to create multiple transactions you can specify an array of &#39;transactions&#39;.  It is expected that you will only provide a value for one of these objects.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %YNAB.Model.SaveTransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec create_transaction(
          Tesla.Env.client(),
          String.t(),
          YNAB.Model.SaveTransactionsWrapper.t(),
          keyword()
        ) :: {:ok, YNAB.Model.SaveTransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def create_transaction(client, budget_id, data, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/budgets/#{budget_id}/transactions")
    |> add_param(:body, :data, data)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.SaveTransactionsResponse{})
  end

  @doc """
  Single transaction
  Returns a single transaction

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - transaction_id (String.t): The id of the transaction
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %YNAB.Model.TransactionResponse{}} on success
  {:error, info} on failure
  """
  @spec get_transaction_by_id(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, YNAB.Model.TransactionResponse.t()} | {:error, Tesla.Env.t()}
  def get_transaction_by_id(client, budget_id, transaction_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/budgets/#{budget_id}/transactions/#{transaction_id}")
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.TransactionResponse{})
  end

  @doc """
  List transactions
  Returns budget transactions

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - opts (KeywordList): [optional] Optional parameters
    - :since_date (Date.t): If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30).
    - :type (String.t): If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported.
    - :last_knowledge_of_server (integer()): The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.

  ## Returns

  {:ok, %YNAB.Model.TransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_transactions(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, YNAB.Model.TransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def get_transactions(client, budget_id, opts \\ []) do
    optional_params = %{
      since_date: :query,
      type: :query,
      last_knowledge_of_server: :query
    }

    %{}
    |> method(:get)
    |> url("/budgets/#{budget_id}/transactions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.TransactionsResponse{})
  end

  @doc """
  List account transactions
  Returns all transactions for a specified account

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - account_id (String.t): The id of the account
  - opts (KeywordList): [optional] Optional parameters
    - :since_date (Date.t): If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30).
    - :type (String.t): If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported.
    - :last_knowledge_of_server (integer()): The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.

  ## Returns

  {:ok, %YNAB.Model.TransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_transactions_by_account(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, YNAB.Model.TransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def get_transactions_by_account(client, budget_id, account_id, opts \\ []) do
    optional_params = %{
      since_date: :query,
      type: :query,
      last_knowledge_of_server: :query
    }

    %{}
    |> method(:get)
    |> url("/budgets/#{budget_id}/accounts/#{account_id}/transactions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.TransactionsResponse{})
  end

  @doc """
  List category transactions
  Returns all transactions for a specified category

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - category_id (String.t): The id of the category
  - opts (KeywordList): [optional] Optional parameters
    - :since_date (Date.t): If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30).
    - :type (String.t): If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported.
    - :last_knowledge_of_server (integer()): The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.

  ## Returns

  {:ok, %YNAB.Model.HybridTransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_transactions_by_category(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, YNAB.Model.HybridTransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def get_transactions_by_category(client, budget_id, category_id, opts \\ []) do
    optional_params = %{
      since_date: :query,
      type: :query,
      last_knowledge_of_server: :query
    }

    %{}
    |> method(:get)
    |> url("/budgets/#{budget_id}/categories/#{category_id}/transactions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.HybridTransactionsResponse{})
  end

  @doc """
  List payee transactions
  Returns all transactions for a specified payee

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - payee_id (String.t): The id of the payee
  - opts (KeywordList): [optional] Optional parameters
    - :since_date (Date.t): If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30).
    - :type (String.t): If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported.
    - :last_knowledge_of_server (integer()): The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.

  ## Returns

  {:ok, %YNAB.Model.HybridTransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec get_transactions_by_payee(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, YNAB.Model.HybridTransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def get_transactions_by_payee(client, budget_id, payee_id, opts \\ []) do
    optional_params = %{
      since_date: :query,
      type: :query,
      last_knowledge_of_server: :query
    }

    %{}
    |> method(:get)
    |> url("/budgets/#{budget_id}/payees/#{payee_id}/transactions")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.HybridTransactionsResponse{})
  end

  @doc """
  Updates an existing transaction
  Updates a transaction

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - transaction_id (String.t): The id of the transaction
  - data (SaveTransactionWrapper): The transaction to update
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %YNAB.Model.TransactionResponse{}} on success
  {:error, info} on failure
  """
  @spec update_transaction(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          YNAB.Model.SaveTransactionWrapper.t(),
          keyword()
        ) :: {:ok, YNAB.Model.TransactionResponse.t()} | {:error, Tesla.Env.t()}
  def update_transaction(client, budget_id, transaction_id, data, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/budgets/#{budget_id}/transactions/#{transaction_id}")
    |> add_param(:body, :data, data)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.TransactionResponse{})
  end

  @doc """
  Update multiple transactions
  Updates multiple transactions, by &#39;id&#39; or &#39;import_id&#39;.

  ## Parameters

  - client (YNAB.Client): Connection to server
  - budget_id (String.t): The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget)
  - data (UpdateTransactionsWrapper): The transactions to update. Each transaction must have either an &#39;id&#39; or &#39;import_id&#39; specified. If &#39;id&#39; is specified as null an &#39;import_id&#39; value can be provided which will allow transaction(s) to be updated by their import_id. If an id is specified, it will always be used for lookup.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %YNAB.Model.SaveTransactionsResponse{}} on success
  {:error, info} on failure
  """
  @spec update_transactions(
          Tesla.Env.client(),
          String.t(),
          YNAB.Model.UpdateTransactionsWrapper.t(),
          keyword()
        ) :: {:ok, YNAB.Model.SaveTransactionsResponse.t()} | {:error, Tesla.Env.t()}
  def update_transactions(client, budget_id, data, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/budgets/#{budget_id}/transactions")
    |> add_param(:body, :data, data)
    |> Enum.into([])
    |> (&Client.request(client, &1)).()
    |> decode(%YNAB.Model.SaveTransactionsResponse{})
  end
end
