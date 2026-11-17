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
# package org.allbinary.input.gyro

defmodule OrientationMotionGestureFactory do
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
    JR.put(this, :ROLL_LEFT, nil)
    JR.put(this, :ROLL_RIGHT, nil)
        
        
        
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (OrientationMotionGestureFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            OrientationMotionGestureFactory.jstatic_set_instance(OrientationMotionGestureFactory.jnew())
        end
        throw({:jreturn, OrientationMotionGestureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :MAX, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.put(this, :LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 20), "Left Orient"))
        JR.put(this, :RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 21), "Right Orient"))
        JR.put(this, :UP, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 22), "Up Orient"))
        JR.put(this, :DOWN, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 23), "Down Orient"))
        JR.put(this, :ROLL_LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 24), "Roll Left"))
        JR.put(this, :ROLL_RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 25), "Roll Right"))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


