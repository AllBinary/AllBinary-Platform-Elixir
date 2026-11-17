# Generated Code Do Not Modify
# package org.bouncycastle.jce.provider

defmodule BouncyCastleProvider do
  def jsuper(), do: Provider
def jstatic_info(), do: JR.static_get(__MODULE__, :info, fn -> "BouncyCastle Security Provider v1.41" end)
  def jstatic_set_info(value), do: JR.static_put(__MODULE__, :info, value)
def jstatic_PROVIDER_NAME(), do: JR.static_get(__MODULE__, :PROVIDER_NAME, fn -> "BC" end)
  def jstatic_set_PROVIDER_NAME(value), do: JR.static_put(__MODULE__, :PROVIDER_NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        Provider.jinit(this, BouncyCastleProvider.jstatic_PROVIDER_NAME(), 1.41, BouncyCastleProvider.jstatic_info())
        BouncyCastleProvider.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setParameter(this, p_parameterName, p_parameter) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :parameterName, p_parameterName)
      JR.lset(f, :parameter, p_parameter)
        nil
    end)
  end
end


