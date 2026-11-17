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
# package org.allbinary.logic.communication.log

#NoPlatform
defmodule LogFormatUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LogFormatUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LogFormatUtil.jstatic_instance()})
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


  def jm_get(this, p_className, p_functionName, p_specialMessage, p_exception) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :exception, p_exception)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getS(this, p_className, p_functionName, p_specialMessage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :specialMessage, p_specialMessage)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getO(this, p_exception) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :exception, p_exception)
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


