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
# package org.allbinary.logic.string

defmodule StringUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> StringUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :INIT_STRING, nil)
    JR.put(this, :NULL_STRING, nil)
    JR.put(this, :EMPTY_STRING, nil)
    JR.put(this, :ONE_EMPTY_STRING_ARRAY, nil)
    JR.put(this, :ONE_EMPTY_STRING_ARRAY_OF_ARRAYS, nil)
    JR.put(this, :stringArray, nil)
        JR.put(this, :INIT_STRING, "")
        JR.put(this, :NULL_STRING, "null")
        JR.put(this, :EMPTY_STRING, "")
        JR.put(this, :ONE_EMPTY_STRING_ARRAY, JR.afrom([JR.get(this, :EMPTY_STRING)]))
        JR.put(this, :ONE_EMPTY_STRING_ARRAY_OF_ARRAYS, JR.anew_of(0, fn -> JR.anew(0, nil) end))
        JR.put(this, :stringArray, JR.anew(0, nil))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, StringUtil.jstatic_instance()})
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


  def jm_getNonNull(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        throw({:jreturn, JR.lget(f, :string)})
    end)
  end


  def jm_getArrayInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :stringArray)})
    end)
  end


  def jm_count(this, p_string, p_aChar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
      JR.lset(f, :aChar, p_aChar)
        JR.lset(f, :count, 0)
        JR.lset(f, :size, byte_size(JR.lget(f, :string)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.char_at(JR.lget(f, :string), JR.lget(f, :index)) == JR.lget(f, :aChar)) do
                JR.lpostinc(f, :count, 1)
            end
        end)
        throw({:jreturn, JR.lget(f, :count)})
    end)
  end


  def jm_toString(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        if (JR.lget(f, :anyType) != nil) do
            throw({:jreturn, JR.call(JR.lget(f, :anyType), :jm_toString, [])})
        else
            throw({:jreturn, JR.get(this, :NULL_STRING)})
        end
    end)
  end
end


