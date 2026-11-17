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
# package org.allbinary.logic.math

defmodule PrimitiveLongSingleton do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PrimitiveLongSingleton.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :UNK, nil)
    JR.put(this, :NUMBER_ARRAY, nil)
    JR.put(this, :NUMBER_CHAR_ARRAY, nil)
    JR.put(this, :NUMBER_CHAR_ARRAYS, nil)
    JR.put(this, :ZERO, nil)
        JR.put(this, :UNK, JR.afrom([?U, ?n, ?k]))
        JR.put(this, :NUMBER_ARRAY, JR.afrom([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]))
        JR.put(this, :NUMBER_CHAR_ARRAY, JR.afrom([?0, ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9]))
        JR.put(this, :NUMBER_CHAR_ARRAYS, JR.afrom([JR.afrom([?0]), JR.afrom([?1]), JR.afrom([?2]), JR.afrom([?3]), JR.afrom([?4]), JR.afrom([?5]), JR.afrom([?6]), JR.afrom([?7]), JR.afrom([?8]), JR.afrom([?9])]))
        JR.put(this, :ZERO, JR.afrom([JR.aget(JR.get(this, :NUMBER_CHAR_ARRAY), 0)]))
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PrimitiveLongSingleton.jstatic_instance()})
    end)
  end


  def jm_getNumberFromChar(this, p_numberAsChar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :numberAsChar, p_numberAsChar)
        JR.lset(f, :size, JR.alength(JR.get(this, :NUMBER_CHAR_ARRAY)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.get(this, :NUMBER_CHAR_ARRAY), JR.lget(f, :index)) == JR.lget(f, :numberAsChar)) do
                throw({:jreturn, JR.aget(JR.get(this, :NUMBER_ARRAY), JR.lget(f, :index))})
            end
        end)
        throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["numberAsChar was not in array: "]), :jm_appendchar, [JR.lget(f, :numberAsChar)]), :jm_toString, []))})
    end)
  end
end


