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

defmodule TouchMotionGestureFactory do
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
    JR.put(this, :PRESSED, nil)
    JR.put(this, :RELEASED, nil)
    JR.put(this, :DIAGONAL_DOWN_RIGHT, nil)
    JR.put(this, :DIAGONAL_DOWN_LEFT, nil)
    JR.put(this, :DIAGONAL_UP_RIGHT, nil)
    JR.put(this, :DIAGONAL_UP_LEFT, nil)
    JR.put(this, :SCROLL_UP, nil)
    JR.put(this, :SCROLL_DOWN, nil)
    JR.put(this, :NO_MOTION, nil)
    JR.put(this, :LAST_MOTION, nil)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (TouchMotionGestureFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            TouchMotionGestureFactory.jstatic_set_instance(TouchMotionGestureFactory.jnew())
        end
        throw({:jreturn, TouchMotionGestureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :MAX, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.put(this, :LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 3), "Left Touch"))
        JR.put(this, :RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 4), "Right Touch"))
        JR.put(this, :UP, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 5), "Up Touch"))
        JR.put(this, :DOWN, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 6), "Down Touch"))
        JR.put(this, :PRESSED, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 7), "Screen Press"))
        JR.put(this, :RELEASED, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 8), "Released"))
        JR.put(this, :DIAGONAL_DOWN_RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 9), "Diagonal Dn R"))
        JR.put(this, :DIAGONAL_DOWN_LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 10), "Diagonal Dn L"))
        JR.put(this, :DIAGONAL_UP_RIGHT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 11), "Diagonal Up R"))
        JR.put(this, :DIAGONAL_UP_LEFT, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 12), "Diagonal Up L"))
        JR.put(this, :SCROLL_UP, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 13), "Scroll Up"))
        JR.put(this, :SCROLL_DOWN, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 14), "Scroll Down"))
        JR.put(this, :NO_MOTION, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 2), "No Motion"))
        JR.put(this, :LAST_MOTION, MotionGestureInput.jnew(JR.int32(JR.lget(f, :MAX) - 19), "Last Motion"))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


