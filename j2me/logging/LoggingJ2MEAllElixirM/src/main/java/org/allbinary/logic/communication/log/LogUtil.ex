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
        JR.lset(f, :specialMessage, JR.call(JR.lget(f, :log), :jm_getSpecialMessage, []))
        JR.lset(f, :anyType, JR.call(JR.lget(f, :log), :jm_getObject, []))
        JR.lset(f, :functionName, JR.call(JR.lget(f, :log), :jm_getFunctionName, []))
        JR.lset(f, :exception, JR.call(JR.lget(f, :log), :jm_getThrowable, []))
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
        JR.lset(f, :className, JR.get(CommonStrings.jm_getInstance(), :EMPTY))
        if (JR.class_name(JR.lget(f, :anyType)) != nil) do
            JR.lset(f, :className, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.class_name(JR.lget(f, :anyType))]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON)]), :jm_append, [J.Integer.jm_toHexString(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [JR.lget(f, :anyType)]))]), :jm_toString, []))
        end
        JR.lset(f, :message, JR.call(JR.get(this, :logFormatUtil), :jm_getS, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage)]))
        IO.puts(JR.str(JR.get(this, :LOG_SUCCESS)))
        IO.puts(JR.str(JR.lget(f, :message)))
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
        JR.lset(f, :message, JR.call(JR.get(this, :logFormatUtil), :jm_getS, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage)]))
        IO.puts(JR.str(JR.get(this, :LOG_SUCCESS)))
        IO.puts(JR.str(JR.lget(f, :message)))
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
            JR.lset(f, :hashCodeValue, JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [JR.lget(f, :anyType)]))
            JR.lset(f, :hexString, J.Integer.jm_toHexString(JR.lget(f, :hashCodeValue)))
            JR.lset(f, :className, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.class_name(JR.lget(f, :anyType))]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON)]), :jm_append, [JR.lget(f, :hexString)]), :jm_toString, []))
        end
        JR.lset(f, :message, JR.call(JR.get(this, :logFormatUtil), :jm_get, [JR.lget(f, :className), JR.lget(f, :functionName), JR.lget(f, :specialMessage), JR.lget(f, :exception)]))
        IO.puts(JR.str(JR.get(this, :LOG_SUCCESS)))
        IO.puts(JR.str(JR.lget(f, :message)))
    end)
  end
end


