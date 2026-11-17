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
defmodule LogUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LogUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logFormatUtil, nil)
    JR.put(this, :LOG_SUCCESS, nil)
        JR.put(this, :logFormatUtil, LogFormatUtil.jm_getInstance())
        JR.put(this, :LOG_SUCCESS, "org.allbinary: ")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LogUtil.jstatic_instance()})
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


  def jm_putL(this, p_log) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :log, p_log)
        if (JR.lget(f, :log) == LogFactory.jstatic_LOG()) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :exception, JR.call(JR.lget(f, :log), :jm_getThrowable, []))
        if (JR.lget(f, :exception) == nil) do
            throw({:jreturn, nil})
        end
        JR.lset(f, :specialMessage, JR.call(JR.lget(f, :log), :jm_getSpecialMessage, []))
        JR.lset(f, :anyType, JR.call(JR.lget(f, :log), :jm_getObject, []))
        JR.lset(f, :functionName, JR.call(JR.lget(f, :log), :jm_getFunctionName, []))
        JR.call(this, :jm_put, [JR.lget(f, :specialMessage), JR.lget(f, :anyType), JR.lget(f, :functionName), JR.lget(f, :exception)])
    end)
  end


  def jm_putF(this, p_specialMessage, p_anyType, p_functionName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
        nil
    end)
  end


  def jm_putFS(this, p_specialMessage, p_className, p_functionName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
        nil
    end)
  end


  def jm_put(this, p_specialMessage, p_anyType, p_functionName, p_exception) do
    JR.method(fn ->
      _ = this
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
        JR.lset(f, :message, JR.call(JR.get(this, :logFormatUtil), :jm_get, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage), JR.lget(f, :exception)]))
        IO.puts(JR.str(JR.get(this, :LOG_SUCCESS)))
        IO.puts(JR.str(JR.lget(f, :message)))
    end)
  end
end


