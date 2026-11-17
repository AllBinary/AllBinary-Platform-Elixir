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

defmodule MotionGestureEventListener do
  def jsuper(), do: JObject


  def jm_onPressedMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onPressedMotionGestureEvent")})
    end)
  end


  def jm_onUpMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onUpMotionGestureEvent")})
    end)
  end


  def jm_onDownMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onDownMotionGestureEvent")})
    end)
  end


  def jm_onLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onLeftMotionGestureEvent")})
    end)
  end


  def jm_onRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onRightMotionGestureEvent")})
    end)
  end


  def jm_onDiagonalDownRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onDiagonalDownRightMotionGestureEvent")})
    end)
  end


  def jm_onDiagonalDownLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onDiagonalDownLeftMotionGestureEvent")})
    end)
  end


  def jm_onDiagonalUpRightMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onDiagonalUpRightMotionGestureEvent")})
    end)
  end


  def jm_onDiagonalUpLeftMotionGestureEvent(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "onDiagonalUpLeftMotionGestureEvent")})
    end)
  end


  def jm_released(this, p_ev) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ev, p_ev)
      throw({:jexception, JR.exception("AbstractMethodError", "released")})
    end)
  end
end


