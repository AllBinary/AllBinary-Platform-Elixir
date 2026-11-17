# Generated Code Do Not Modify
# package org.apache.xmlrpc

defmodule XmlRpcHandler do
  def jsuper(), do: JObject


  def jm_execute(this, p_method, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :method, p_method)
      JR.lset(f, :params, p_params)
      throw({:jexception, JR.exception("AbstractMethodError", "execute")})
    end)
  end
end


