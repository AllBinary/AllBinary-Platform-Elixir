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
# package org.allbinary.game.displayable.canvas

defmodule PopupCommandFormInputProcessor do
  def jsuper(), do: CommandFormInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form, p_popupMenuInputProcessor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :gameCanvas, p_gameCanvas)
      JR.lset(f, :form, p_form)
      JR.lset(f, :popupMenuInputProcessor, p_popupMenuInputProcessor)
        CommandFormInputProcessor.jinit(this, JR.lget(f, :gameKeyEventList), JR.lget(f, :playerInputId), JR.lget(f, :gameCanvas), JR.lget(f, :form))
        PopupCommandFormInputProcessor.jinitfields(this)
    end)
  end

  def jnew(p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form, p_popupMenuInputProcessor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form, p_popupMenuInputProcessor)
    this
  end


  def jm_processInput(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        throw({:jreturn, CommandFormInputProcessor.jm_processInput(this, JR.lget(f, :key))})
    end)
  end


  def jm_processMotionInput(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        CommandFormInputProcessor.jm_processMotionInput(this, JR.lget(f, :motionGestureEvent))
    end)
  end
end


