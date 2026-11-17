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

defmodule Log do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logFormatUtil, nil)
    JR.put(this, :specialMessage, nil)
    JR.put(this, :anyType, nil)
    JR.put(this, :functionName, nil)
    JR.put(this, :exception, nil)
        JR.put(this, :logFormatUtil, LogFormatUtil.jm_getInstance())
        
        
        
        
    nil
  end


  def jinit(this, p_specialMessage, p_anyType, p_functionName, p_exception) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :specialMessage, p_specialMessage)
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :functionName, p_functionName)
      JR.lset(f, :exception, p_exception)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :specialMessage, JR.lget(f, :specialMessage))
        JR.put(this, :anyType, JR.lget(f, :anyType))
        JR.put(this, :functionName, JR.lget(f, :functionName))
        JR.put(this, :exception, JR.lget(f, :exception))
    end)
  end

  def jnew(p_specialMessage, p_anyType, p_functionName, p_exception) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_specialMessage, p_anyType, p_functionName, p_exception)
    this
  end


  def jm_getSpecialMessage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :specialMessage)})
    end)
  end


  def jm_getObject(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :anyType)})
    end)
  end


  def jm_getFunctionName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :functionName)})
    end)
  end


  def jm_getThrowable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :exception)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :className, JR.get(CommonStrings.jm_getInstance(), :EMPTY))
        JR.lset(f, :clazz, JR.class_name(JR.get(this, :anyType)))
        if (JR.call(JR.lget(f, :clazz), :jm_getName, []) != nil) do
            JR.lset(f, :className, JR.call(JR.lget(f, :clazz), :jm_getName, []))
        end
        throw({:jreturn, JR.call(JR.get(this, :logFormatUtil), :jm_get, [JR.lget(f, :className), JR.get(this, :functionName), JR.get(this, :specialMessage), JR.get(this, :exception)])})
    end)
  end
end


