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
defmodule PreLogUtil do
  def jsuper(), do: JObject

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
        throw({:jexception, JR.exception("RuntimeException", "")})
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
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end
end


