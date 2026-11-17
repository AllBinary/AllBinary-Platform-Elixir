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
# package org.allbinary.input.motion.gesture.observer

defmodule MotionEventCircularPool do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MIN, 0)
    JR.put(this, :eventPool, nil)
        JR.put(this, :MIN, JR.call(JR.get(TouchMotionGestureFactory.jm_getInstance(), :LAST_MOTION), :jm_getId, []))
        JR.put(this, :eventPool, AllBinaryEventCircularPool.jnew((((JR.get(InputFactory.jm_getInstance(), :MAX) - 1)) - JR.get(this, :MIN))))
    nil
  end


  def jm_createPool(p_id) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        throw({:jreturn, MotionEventCircularPool.jnew(JR.lget(f, :id))})
    end)
  end


  def jinit(this, p_id) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :eventPool), :jm_initAllBinaryEventCircularPool, [MotionEventFactory.jnew(JR.get(this, :eventPool), JR.lget(f, :id))])
    end)
  end

  def jnew(p_id) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id)
    this
  end


  def jm_getInstance(this, p_motionGestureInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureInput, p_motionGestureInput)
        throw({:jreturn, JR.call(JR.get(this, :eventPool), :jm_getInstance, [(JR.call(JR.lget(f, :motionGestureInput), :jm_getId, []) - JR.get(this, :MIN))])})
    end)
  end
end


