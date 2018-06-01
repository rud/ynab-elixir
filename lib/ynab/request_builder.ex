defmodule YNAB.RequestBuilder do
  @moduledoc """
  Helper functions for building Tesla requests
  """

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - m (atom) - Request method

  ## Returns

  Map
  """
  @spec method(map(), atom) :: map()
  def method(request, m) do
    Map.put_new(request, :method, m)
  end

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - u (String) - Request URL

  ## Returns

  Map
  """
  @spec url(map(), String.t()) :: map()
  def url(request, u) do
    Map.put_new(request, :url, u)
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - definitions (Map) - Map of parameter name to parameter location.
  - options (KeywordList) - The provided optional parameters

  ## Returns

  Map
  """
  @spec add_optional_params(map(), %{optional(atom) => atom}, keyword()) :: map()
  def add_optional_params(request, _, []), do: request

  def add_optional_params(request, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => location} ->
        request
        |> add_param(location, key, value)
        |> add_optional_params(definitions, tail)

      _ ->
        add_optional_params(request, definitions, tail)
    end
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - location (atom) - Where to put the parameter
  - key (atom) - The name of the parameter
  - value (any) - The value of the parameter

  ## Returns

  Map
  """
  @spec add_param(map(), atom, atom, any()) :: map()
  def add_param(request, :body, :body, value), do: Map.put(request, :body, value)

  def add_param(request, :body, key, value) do
    request
    |> Map.put_new(:body, %{})
    |> Map.update!(:body, fn body ->
      Map.put(body, key, value)
    end)
  end

  def add_param(request, location, key, value) do
    Map.update(request, location, [{key, value}], &(&1 ++ [{key, value}]))
  end

  @doc """
  Handle the response for a Tesla request

  ## Parameters

  - arg1 (Tesla.Env.t | term) - The response object
  - arg2 (:false | struct | [struct]) - The shape of the struct to deserialize into

  ## Returns

  {:ok, struct} on success
  {:error, term} on failure
  """
  @spec decode(Tesla.Env.t() | term()) ::
          {:ok, struct()} | {:error, Tesla.Env.t()} | {:error, term()}
  def decode(%Tesla.Env{status: 200, body: body}), do: Poison.decode(body)
  def decode(response), do: {:error, response}

  @spec decode(Tesla.Env.t() | term(), false | struct() | [struct()]) ::
          {:ok, struct()} | {:error, Tesla.Env.t()} | {:error, term()}
  def decode(%Tesla.Env{status: 200} = env, false), do: {:ok, env}
  def decode(%Tesla.Env{status: 200, body: body}, struct), do: Poison.decode(body, as: struct)
  def decode(response, _struct), do: {:error, response}
end
