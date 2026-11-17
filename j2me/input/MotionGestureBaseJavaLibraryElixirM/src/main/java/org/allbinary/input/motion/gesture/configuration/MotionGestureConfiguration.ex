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
# package org.allbinary.input.motion.gesture.configuration

defmodule MotionGestureConfiguration do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :diagonalMotionGestureAllowed, false)
    JR.put(this, :diagonalTolerance, 0)
    JR.put(this, :minimumMotionGesture, 0)
    JR.put(this, :button, nil)
    JR.put(this, :color, nil)
    JR.put(this, :executingActions, false)
    JR.put(this, :mouseButtonMask, 0)
    JR.put(this, :activeCommands, nil)
        JR.put(this, :diagonalMotionGestureAllowed, true)
        JR.put(this, :diagonalTolerance, 7)
        JR.put(this, :minimumMotionGesture, 9)
        JR.put(this, :button, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :color, JR.get(BasicColorFactory.jm_getInstance(), :BLUE))
        JR.put(this, :executingActions, true)
        JR.put(this, :mouseButtonMask, 0)
        JR.put(this, :activeCommands, BasicArrayListD.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_addMotionGestureAction(this, p_list, p_commandAction) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :list, p_list)
      JR.lset(f, :commandAction, p_commandAction)
        JR.call(JR.get(this, :activeCommands), :jm_add, [MotionGestureToMotionGestureActionAssociation.jnew(JR.lget(f, :list), JR.lget(f, :commandAction))])
    end)
  end


  def jm_clearMotionGestureAction(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :activeCommands), :jm_clear, [])
    end)
  end


  def jm_getAssociateCommandActionsList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :activeCommands)})
    end)
  end


  def jm_isDiagonalMotionGestureAllowed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :diagonalMotionGestureAllowed)})
    end)
  end


  def jm_isExecutingActionsAllowed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :executingActions)})
    end)
  end


  def jm_setExecutingActionsAllowed(this, p_executingActionAllowed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :executingActionAllowed, p_executingActionAllowed)
        JR.put(this, :executingActions, JR.lget(f, :executingActionAllowed))
    end)
  end


  def jm_setDiagonalMotionGestureAllowed(this, p_diagonalMotionGestureAllowed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :diagonalMotionGestureAllowed, p_diagonalMotionGestureAllowed)
        JR.put(this, :diagonalMotionGestureAllowed, JR.lget(f, :diagonalMotionGestureAllowed))
    end)
  end


  def jm_getDiagonalTolerance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :diagonalTolerance)})
    end)
  end


  def jm_setDiagonalTolerance(this, p_diagonalTolerance) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :diagonalTolerance, p_diagonalTolerance)
        JR.put(this, :diagonalTolerance, JR.lget(f, :diagonalTolerance))
    end)
  end


  def jm_getMinimumMotionGesture(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :minimumMotionGesture)})
    end)
  end


  def jm_setMinimumMotionGesture(this, p_minimumMotionGesture) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :minimumMotionGesture, p_minimumMotionGesture)
        JR.put(this, :minimumMotionGesture, JR.lget(f, :minimumMotionGesture))
    end)
  end


  def jm_getButton(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :button)})
    end)
  end


  def jm_setButton(this, p_button) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :button, p_button)
        JR.put(this, :button, JR.lget(f, :button))
    end)
  end


  def jm_getColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :color)})
    end)
  end


  def jm_setColor(this, p_color) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :color, p_color)
        JR.put(this, :color, JR.lget(f, :color))
    end)
  end


  def jm_getMouseButtonMask(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :mouseButtonMask)})
    end)
  end


  def jm_setMouseButtonMask(this, p_mouseButtonMask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mouseButtonMask, p_mouseButtonMask)
        JR.put(this, :mouseButtonMask, JR.lget(f, :mouseButtonMask))
    end)
  end
end


