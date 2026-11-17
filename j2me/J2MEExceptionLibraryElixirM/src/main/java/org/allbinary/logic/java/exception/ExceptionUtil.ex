# 
# AllBinary Open License Version 1 
# Copyright (c) 2011 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.logic.java.exception

#ActualPlatform
defmodule ExceptionUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ExceptionUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :PRETEND_EXCEPTION, nil)
    JR.put(this, :NONE, nil)
        JR.put(this, :PRETEND_EXCEPTION, JR.exception("Exception", "Not Really An Exception"))
        JR.put(this, :NONE, "No Stack Trace")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ExceptionUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getStackTrace(this, p_e) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :e, p_e)
        JR.lset(f, :bs, J.ByteArrayOutputStream.jnew())
        JR.call(JR.lget(f, :e), :jm_printStackTrace, [])
        JR.lset(f, :output, JR.call(JR.lget(f, :bs), :jm_toString, []))
        throw({:jreturn, JR.lget(f, :output)})
    end)
  end
end


