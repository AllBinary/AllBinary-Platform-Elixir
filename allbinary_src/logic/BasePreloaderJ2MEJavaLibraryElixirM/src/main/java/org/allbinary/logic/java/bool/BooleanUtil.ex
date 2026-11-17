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
# package org.allbinary.logic.java.bool

defmodule BooleanUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BooleanUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tsUtil, nil)
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, BooleanUtil.jstatic_instance()})
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


  def jm_getFromString(this, p_booleanString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :booleanString, p_booleanString)
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        JR.lset(f, :booleanFactory, BooleanFactory.jm_getInstance())
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :booleanString)]) do
            throw({:jreturn, false})
        end
        JR.lset(f, :booleanStringLowerCase, String.downcase(JR.lget(f, :booleanString)))
        if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :booleanStringLowerCase), JR.get(JR.lget(f, :booleanFactory), :TRUE_STRING)]) == 0) do
            throw({:jreturn, true})
        else
            if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :booleanStringLowerCase), JR.get(JR.lget(f, :booleanFactory), :FALSE_STRING)]) == 0) do
            throw({:jreturn, false})
        else
            throw({:jexception, JR.exception("Exception", "Invalid booleanString - Must be true or false")})
        end
        end
    end)
  end


  def jm_isStringBoolean(this, p_booleanString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :booleanString, p_booleanString)
        JR.lset(f, :booleanFactory, BooleanFactory.jm_getInstance())
        JR.lset(f, :booleanStringLowerCase, String.downcase(JR.lget(f, :booleanString)))
        if ((JR.call(JR.lget(f, :booleanStringLowerCase), :jm_compareTo, [JR.get(JR.lget(f, :booleanFactory), :TRUE_STRING)]) == 0) || (JR.call(JR.lget(f, :booleanStringLowerCase), :jm_compareTo, [JR.get(JR.lget(f, :booleanFactory), :FALSE_STRING)]) == 0)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_toStringFromBooleanArray(this, p_booleanArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :booleanArray, p_booleanArray)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :size, JR.alength(JR.lget(f, :booleanArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringMaker), :jm_appendboolean, [JR.aget(JR.lget(f, :booleanArray), JR.lget(f, :index))])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringMaker), :jm_toString, [])})
    end)
  end
end


