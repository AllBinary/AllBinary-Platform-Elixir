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

defmodule BaseMotionGestureEventListener do
  def jsuper(), do: JObject


  def jm_onMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onMotionGestureEvent")})
    end)
  end


  def jm_onScrolledMotionGestureEvent(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onScrolledMotionGestureEvent")})
    end)
  end
end


