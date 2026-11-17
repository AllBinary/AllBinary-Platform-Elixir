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
defmodule PreLogUtil do
  def jsuper(), do: JObject
def jstatic_LOG_SUCCESS(), do: JR.static_get(__MODULE__, :LOG_SUCCESS, fn -> "org.allbinary: " end)
  def jstatic_set_LOG_SUCCESS(value), do: JR.static_put(__MODULE__, :LOG_SUCCESS, value)

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


  def jm_put(p_specialMessage, p_anyType, p_functionName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
        PreLogUtil.jm_putOE(JR.lget(f, :specialMessage), JR.lget(f, :anyType), JR.lget(f, :functionName), JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))
    end)
  end


  def jm_putOE(p_specialMessage, p_anyType, p_functionName, p_exception) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :exception, p_exception)
        JR.lset(f, :className, JR.get(CommonStrings.jm_getInstance(), :EMPTY))
        if (JR.class_name(JR.lget(f, :anyType)) != nil) do
            JR.lset(f, :className, JR.class_name(JR.lget(f, :anyType)))
        end
        JR.lset(f, :message, JR.call(LogFormatUtil.jm_getInstance(), :jm_get, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage), JR.lget(f, :exception)]))
        IO.puts(JR.str(PreLogUtil.jstatic_LOG_SUCCESS()))
        IO.puts(JR.str(JR.lget(f, :message)))
    end)
  end


  def jm_putS(p_specialMessage, p_className, p_functionName) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
        PreLogUtil.jm_putSE(JR.lget(f, :specialMessage), JR.lget(f, :className), JR.lget(f, :functionName), JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT))
    end)
  end


  def jm_putSE(p_specialMessage, p_className, p_functionName, p_exception) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :exception, p_exception)
        JR.lset(f, :message, JR.call(LogFormatUtil.jm_getInstance(), :jm_get, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage), JR.lget(f, :exception)]))
        IO.puts(JR.str(PreLogUtil.jstatic_LOG_SUCCESS()))
        IO.puts(JR.str(JR.lget(f, :message)))
    end)
  end


  def jm_getClassName(p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        throw({:jreturn, JR.class_name(JR.lget(f, :anyType))})
    end)
  end
end


