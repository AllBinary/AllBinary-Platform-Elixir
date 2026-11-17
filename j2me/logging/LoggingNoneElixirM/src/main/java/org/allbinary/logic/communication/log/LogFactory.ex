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

#ActualPlatform
defmodule LogFactory do
  def jsuper(), do: JObject
def jstatic_LOG(), do: JR.static_get(__MODULE__, :LOG, fn -> Log.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) end)
  def jstatic_set_LOG(value), do: JR.static_put(__MODULE__, :LOG, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstanceD() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.lset(f, :nullUtil, NullUtil.jm_getInstance())
        throw({:jreturn, Log.jnew(JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING), JR.get(JR.lget(f, :nullUtil), :NULL_OBJECT), JR.get(JR.lget(f, :stringUtil), :EMPTY_STRING), JR.get(JR.lget(f, :nullUtil), :NULL_OBJECT))})
    end)
  end


  def jm_getInstance(p_specialMessage, p_anyType, p_functionName, p_exception) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :exception, p_exception)
        throw({:jreturn, LogFactory.jstatic_LOG()})
    end)
  end


  def jm_getInstanceF(p_specialMessage, p_anyType, p_functionName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
        throw({:jreturn, LogFactory.jstatic_LOG()})
    end)
  end
end


