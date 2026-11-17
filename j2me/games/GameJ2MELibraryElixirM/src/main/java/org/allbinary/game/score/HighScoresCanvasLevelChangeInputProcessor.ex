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
# package org.allbinary.game.score

defmodule HighScoresCanvasLevelChangeInputProcessor do
  def jsuper(), do: HighScoresCanvasInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :INSTRUCTIONS, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :fontHeight, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :INSTRUCTIONS, "(Right = Next Track, Left = Previous Track)")
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :fontHeight, 0)
    nil
  end


  def jinit(this, p_highScoresCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresCanvas, p_highScoresCanvas)
        HighScoresCanvasInputProcessor.jinit(this, JR.lget(f, :highScoresCanvas))
        HighScoresCanvasLevelChangeInputProcessor.jinitfields(this)
    end)
  end

  def jnew(p_highScoresCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_highScoresCanvas)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_addListener, [this])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_removeListener, [this])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :key, GameKeyEventUtil.jm_getKey(JR.lget(f, :anyType)))
            if (JR.lget(f, :key) == Canvas.jstatic_RIGHT()) do
                JR.call(JR.call(JR.call(this, :jm_getHighScoresCanvas, []), :jm_getGameInfo, []), :jm_nextGameLevel, [])
            else
                if (JR.lget(f, :key) == Canvas.jstatic_LEFT()) do
                JR.call(JR.call(JR.call(this, :jm_getHighScoresCanvas, []), :jm_getGameInfo, []), :jm_previousGameLevel, [])
            end
            end
            JR.call(JR.call(this, :jm_getHighScoresCanvas, []), :jm_executeUpdate, [])
        end)
        JR.call(JR.lget(f, :list), :jm_clear, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :width, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []))
        JR.lset(f, :topScoresWidth, (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.get(this, :INSTRUCTIONS)]), 1)))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :INSTRUCTIONS), JR.int32((Bitwise.bsr(JR.lget(f, :width), 1)) - JR.lget(f, :topScoresWidth)), JR.int32(JR.get(this, :fontHeight) * 2), JR.get(this, :anchor)])
    end)
  end
end


