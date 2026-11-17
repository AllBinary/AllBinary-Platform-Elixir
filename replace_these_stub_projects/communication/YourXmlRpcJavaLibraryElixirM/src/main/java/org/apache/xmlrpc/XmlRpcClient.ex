# Generated Code Do Not Modify
# package org.apache.xmlrpc

defmodule XmlRpcClient do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :url, nil)
        
    nil
  end


  def jinit(this, p_url) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :url, p_url)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :url, URL.jnew(JR.lget(f, :url)))
    end)
  end

  def jnew(p_url) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_url)
    this
  end


  def jm_getURL(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :url)})
    end)
  end


  def jm_setBasicAuthentication(this, p_user, p_password) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :user, p_user)
      JR.lset(f, :password, p_password)
        nil
    end)
  end


  def jm_execute(this, p_method, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :method, p_method)
      JR.lset(f, :params, p_params)
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)})
    end)
  end


  def jm_executeWithCrypt(this, p_method, p_params, p_cryptInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :method, p_method)
      JR.lset(f, :params, p_params)
      JR.lset(f, :cryptInterface, p_cryptInterface)
        throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)})
    end)
  end
end


