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
# package org.allbinary.input.motion.gesture

defmodule TrackballMotionGestureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :LEFT, nil)
    JR.put(this, :RIGHT, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :DOWN, nil)
        
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (TrackballMotionGestureFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            TrackballMotionGestureFactory.jstatic_set_instance(TrackballMotionGestureFactory.jnew())
        end
        throw({:jreturn, TrackballMotionGestureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :MAX, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.put(this, :LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 26), "L Trackball"))
        JR.put(this, :RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 27), "R Trackball"))
        JR.put(this, :UP, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 28), "Up Trackball"))
        JR.put(this, :DOWN, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 29), "D Trackball"))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


