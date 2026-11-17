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

defmodule DemoCanvasBasicStartInputProcessor do
  def jsuper(), do: BasicMenuInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_gameKeyEventList, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :gameCanvas, p_gameCanvas)
        BasicMenuInputProcessor.jinit(this, JR.lget(f, :gameKeyEventList), -1, JR.lget(f, :gameCanvas))
        DemoCanvasBasicStartInputProcessor.jinitfields(this)
    end)
  end

  def jnew(p_gameKeyEventList, p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_gameCanvas)
    this
  end


  def jm_processInputList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :gameKeyEvent, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameKeyEvent, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Start GameKey: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :gameKeyEvent)])]), :jm_toString, []), this, JR.get(GameInputStrings.jm_getInstance(), :PROCESS_INPUT)])
        end)
        JR.call(JR.call(JR.call(this, :jm_getCanvas, []), :jm_getCustomCommandListener, []), :jm_commandAction, [JR.get(GameCommandsFactory.jm_getInstance(), :START_COMMAND), NullCanvas.jstatic_NULL_CANVAS()])
        throw({:jreturn, JR.lget(f, :size)})
    end)
  end
end


