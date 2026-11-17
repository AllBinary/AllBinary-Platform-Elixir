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
# package org.allbinary.util

defmodule BasicArrayListUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicArrayListUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_ARRAY_OF_ARRAY, nil)
    JR.put(this, :myRandomFactory, nil)
    JR.put(this, :immutableInstance, nil)
        JR.put(this, :NULL_ARRAY_OF_ARRAY, JR.anew_of(0, fn -> JR.anew(0, nil) end))
        JR.put(this, :myRandomFactory, MyRandomFactory.jm_getInstance())
        JR.put(this, :immutableInstance, ImmutableBasicArrayList.jnew("Immutable", 0))
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
        throw({:jreturn, BasicArrayListUtil.jstatic_instance()})
    end)
  end


  def jm_getRandom(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :i_random, JR.call(this, :jm_getRandomIndex, [JR.lget(f, :list)]))
        throw({:jreturn, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :i_random))})
    end)
  end


  def jm_getRandomIndex(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        throw({:jreturn, JR.call(JR.get(this, :myRandomFactory), :jm_getAbsoluteNextInt, [JR.call(JR.lget(f, :list), :jm_size, [])])})
    end)
  end


  def jm_reverse(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :lastMinusOneIndex, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 2))
        JR.lset(f, :temp, nil)
        JR.lset(f, :size, div(JR.lget(f, :lastMinusOneIndex), 2))
        JR.lset(f, :secondSwapIndex, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) <= JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :secondSwapIndex, JR.int32(JR.lget(f, :lastMinusOneIndex) - JR.lget(f, :index)))
            JR.lset(f, :temp, JR.call(JR.lget(f, :list), :jm_removeAt, [JR.lget(f, :index)]))
            JR.call(JR.lget(f, :list), :jm_addAt, [JR.lget(f, :index), JR.call(JR.lget(f, :list), :jm_removeAt, [JR.lget(f, :secondSwapIndex)])])
            JR.call(JR.lget(f, :list), :jm_addAt, [JR.int32(JR.lget(f, :secondSwapIndex) + 1), JR.lget(f, :temp)])
        end)
    end)
  end


  def jm_log(this, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
        JR.lset(f, :S_LABEL, " s: ")
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :TOTAL_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :size)])
        JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :usedList, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :S_LABEL)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :usedList), :jm_size, [])])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getImmutableInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :immutableInstance)})
    end)
  end


  def jm_main(p_args) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :args, p_args)
        JR.lset(f, :commonPhoneStrings, CommonPhoneStrings.jm_getInstance())
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :ONE)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :TWO)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :THREE)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :FOUR)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :FIVE)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :SIX)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :SEVEN)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :EIGHT)])
        JR.call(JR.lget(f, :list), :jm_add, [JR.get(JR.lget(f, :commonPhoneStrings), :NINE)])
        JR.call(BasicArrayListUtil.jm_getInstance(), :jm_reverse, [JR.lget(f, :list)])
        IO.puts(JR.str(JR.call(JR.lget(f, :list), :jm_toString, [])))
    end)
  end
end


