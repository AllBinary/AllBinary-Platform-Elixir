# Generated Code Do Not Modify
# package org.apache.xmlrpc

defmodule XmlRpcException do
  def jsuper(), do: Exception

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_code, p_message) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :code, p_code)
      JR.lset(f, :message, p_message)
        Exception.jinit(this, JR.lget(f, :message))
        XmlRpcException.jinitfields(this)
    end)
  end

  def jnew(p_code, p_message) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_code, p_message)
    this
  end
end


