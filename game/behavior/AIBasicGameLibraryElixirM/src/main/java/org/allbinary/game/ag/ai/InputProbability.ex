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
# package org.allbinary.game.ag.ai

defmodule InputProbability do
  def jsuper(), do: JObject
def jstatic_INPUT_PROBABILITY(), do: JR.static_get(__MODULE__, :INPUT_PROBABILITY, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [0]) end)
  def jstatic_set_INPUT_PROBABILITY(value), do: JR.static_put(__MODULE__, :INPUT_PROBABILITY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :likelyhoodIntegerArray, nil)
    JR.put(this, :repeatLikelyhoodIntegerArray, nil)
    JR.put(this, :max, 0)
    JR.put(this, :timeDelayHelper, nil)
        
        
        
        
    nil
  end


  def jinit(this, p_likelyhoodIntegerArray, p_repeatLikelyhoodIntegerArray, p_max, p_timeDelayHelper) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :likelyhoodIntegerArray, p_likelyhoodIntegerArray)
      JR.lset(f, :repeatLikelyhoodIntegerArray, p_repeatLikelyhoodIntegerArray)
      JR.lset(f, :max, p_max)
      JR.lset(f, :timeDelayHelper, p_timeDelayHelper)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :likelyhoodIntegerArray, JR.lget(f, :likelyhoodIntegerArray))
        JR.put(this, :repeatLikelyhoodIntegerArray, JR.lget(f, :repeatLikelyhoodIntegerArray))
        JR.put(this, :max, JR.lget(f, :max))
        JR.put(this, :timeDelayHelper, JR.lget(f, :timeDelayHelper))
    end)
  end

  def jnew(p_likelyhoodIntegerArray, p_repeatLikelyhoodIntegerArray, p_max, p_timeDelayHelper) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_likelyhoodIntegerArray, p_repeatLikelyhoodIntegerArray, p_max, p_timeDelayHelper)
    this
  end


  def jm_getLikelyhoodIntegerArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :likelyhoodIntegerArray)})
    end)
  end


  def jm_getRepeatLikelyhoodIntegerArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :repeatLikelyhoodIntegerArray)})
    end)
  end


  def jm_getMax(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :max)})
    end)
  end


  def jm_getTimeDelayHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :timeDelayHelper)})
    end)
  end


  def jm_toHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.call(JR.lget(f, :hashtable), :jm_put, [InputProbability.jstatic_INPUT_PROBABILITY(), this])
        throw({:jreturn, JR.lget(f, :hashtable)})
    end)
  end
end


