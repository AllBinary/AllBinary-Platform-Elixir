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
defmodule LogFormatUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LogFormatUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :timeStampUtil, nil)
    JR.put(this, :commonSeps, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :LOG_ERROR, nil)
    JR.put(this, :EMPTY, nil)
    JR.put(this, :STACK_TRACE, nil)
    JR.put(this, :TIME, nil)
    JR.put(this, :CLASS_NAME, nil)
    JR.put(this, :FUNCTION_CALL, nil)
    JR.put(this, :SPECIAL_MESSAGE, nil)
    JR.put(this, :stringUtil, nil)
    JR.put(this, :exceptionUtil, nil)
    JR.put(this, :nullUtil, nil)
        JR.put(this, :timeStampUtil, TimeStampUtil.jm_getInstance())
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :NONE, "None")
        JR.put(this, :LOG_ERROR, "\nLog-Error: ")
        JR.put(this, :EMPTY, "Empty")
        JR.put(this, :STACK_TRACE, "\nStack Trace: ")
        JR.put(this, :TIME, "Time: ")
        JR.put(this, :CLASS_NAME, JR.get(JR.get(this, :commonSeps), :SPACE))
        JR.put(this, :FUNCTION_CALL, JR.get(CommonLabels.jm_getInstance(), :COLON_SEP))
        JR.put(this, :SPECIAL_MESSAGE, "> ")
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :exceptionUtil, ExceptionUtil.jm_getInstance())
        JR.put(this, :nullUtil, NullUtil.jm_getInstance())
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
        JR.lset(f, :stringBuffer, JR.call(this, :jm_getF, [JR.lget(f, :className), JR.lget(f, :functionName)]))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getO, [JR.lget(f, :exception)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPECIAL_MESSAGE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :specialMessage)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :NEW_LINE)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
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
        JR.lset(f, :stringBuffer, JR.call(this, :jm_getF, [JR.lget(f, :className), JR.lget(f, :functionName)]))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :SPECIAL_MESSAGE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :specialMessage)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :commonSeps), :NEW_LINE)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getF(this, p_className, p_functionName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :className, p_className)
      JR.lset(f, :functionName, p_functionName)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :TIME)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :timeStampUtil), :jm_getAsString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :CLASS_NAME)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :className)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :FUNCTION_CALL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :functionName)])
        throw({:jreturn, JR.lget(f, :stringBuffer)})
    end)
  end


  def jm_getO(this, p_exception) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :exception, p_exception)
        if (JR.lget(f, :exception) != JR.get(JR.get(this, :nullUtil), :NULL_OBJECT)) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :LOG_ERROR)])
            JR.lset(f, :exceptionAsString, JR.call(JR.lget(f, :exception), :jm_toString, []))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :exceptionAsString)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :STACK_TRACE)])
            if (JR.lget(f, :exception) != JR.get(JR.get(this, :nullUtil), :NULL_OBJECT)) do
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :exceptionUtil), :jm_getStackTrace, [JR.lget(f, :exception)])])
            else
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :stringUtil), :NULL_STRING)])
            end
            throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
        else
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end
end


