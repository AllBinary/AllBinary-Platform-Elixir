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

defmodule MotionEventFactory do
  def jsuper(), do: JObject
def jstatic_index(), do: JR.static_get(__MODULE__, :index, fn -> 0 end)
  def jstatic_set_index(value), do: JR.static_put(__MODULE__, :index, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :source, nil)
    JR.put(this, :id, 0)
        
        
    nil
  end


  def jinit(this, p_source, p_id) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :source, p_source)
      JR.lset(f, :id, p_id)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :source, JR.lget(f, :source))
        JR.put(this, :id, JR.lget(f, :id))
        MotionEventFactory.jstatic_set_index(JR.call(JR.get(TouchMotionGestureFactory.jm_getInstance(), :LAST_MOTION), :jm_getId, []))
    end)
  end

  def jnew(p_source, p_id) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_source, p_id)
    this
  end


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
        JR.lset(f, :input, JR.call(JR.lget(f, :inputFactory), :jm_getInstanceById, [JR.postinc(MotionEventFactory, :index, 1)]))
        if (JR.lget(f, :input) == JR.get(JR.lget(f, :inputFactory), :NO_INPUT)) do
            throw({:jreturn, MotionGestureEvent.jnew(JR.get(this, :source), JR.get(this, :id), JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION))})
        else
            throw({:jreturn, MotionGestureEvent.jnew(JR.get(this, :source), JR.get(this, :id), JR.lget(f, :input))})
        end
    end)
  end
end


