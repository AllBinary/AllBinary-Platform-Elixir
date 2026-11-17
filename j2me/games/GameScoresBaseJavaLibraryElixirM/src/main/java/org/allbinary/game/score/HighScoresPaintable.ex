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

defmodule HighScoresPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :highScores, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :charHeight, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        JR.put(this, :highScores, NullHighScoresSingletonFactory.jm_getInstance())
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :charHeight, 0)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      Paintable.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :charHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        JR.lset(f, :colorChangeEvent, JR.lget(f, :eventObject))
        JR.put(this, :basicColor, JR.call(JR.lget(f, :colorChangeEvent), :jm_getBasicColorP, []))
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
        JR.lset(f, :height, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHeight, []))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.call(this, :jm_getBasicColorP, []), :jm_intValue, [])])
        JR.lset(f, :heading, JR.call(JR.get(this, :highScores), :jm_getHeading, []))
        JR.lset(f, :topScoresWidth, (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.lget(f, :heading)]), 1)))
        JR.lset(f, :charHeight, JR.get(this, :charHeight))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :heading), JR.int32((Bitwise.bsr(JR.lget(f, :width), 1)) - JR.lget(f, :topScoresWidth)), JR.lget(f, :charHeight), JR.get(this, :anchor)])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(JR.get(this, :highScores), :jm_getColumnOneHeading, []), 10, JR.int32(JR.lget(f, :charHeight) * 3), JR.get(this, :anchor)])
        JR.lset(f, :columnTwoHeading, JR.call(JR.get(this, :highScores), :jm_getColumnTwoHeading, []))
        JR.lset(f, :columnTwoHeadingWidth, JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.lget(f, :columnTwoHeading)]))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.lget(f, :columnTwoHeading), JR.int32(JR.int32(JR.lget(f, :width) - 10) - JR.lget(f, :columnTwoHeadingWidth)), JR.int32(JR.lget(f, :charHeight) * 3), JR.get(this, :anchor)])
        JR.lset(f, :index, 4)
        JR.lset(f, :largestSecondColumnWidth, JR.lget(f, :columnTwoHeadingWidth))
        JR.lset(f, :list, JR.call(JR.get(this, :highScores), :jm_getList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :vectorIndex, 0)
        JR.lset(f, :highScore, nil)
        JR.jwhile(fn -> ((JR.lget(f, :vectorIndex) < JR.lget(f, :size)) && (JR.int32(JR.lget(f, :charHeight) * JR.lget(f, :index)) < JR.int32(JR.lget(f, :height) - (JR.int32(JR.lget(f, :charHeight) * 2))))) end, fn ->
            JR.lset(f, :highScore, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :vectorIndex)))
            JR.lset(f, :nextScoreWidth, JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.call(JR.lget(f, :highScore), :jm_getScoreString, [])]))
            if (JR.lget(f, :nextScoreWidth) > JR.lget(f, :largestSecondColumnWidth)) do
                JR.lset(f, :largestSecondColumnWidth, JR.lget(f, :nextScoreWidth))
            end
            JR.lpostinc(f, :vectorIndex, 1)
        end)
        JR.lset(f, :vectorIndex, 0)
        JR.jwhile(fn -> ((JR.lget(f, :vectorIndex) < JR.lget(f, :size)) && (JR.int32(JR.lget(f, :charHeight) * JR.lget(f, :index)) < JR.int32(JR.lget(f, :height) - (JR.int32(JR.lget(f, :charHeight) * 2))))) end, fn ->
            JR.lset(f, :highScore, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :vectorIndex)))
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(JR.lget(f, :highScore), :jm_getName, []), 10, JR.int32(JR.lget(f, :charHeight) * JR.lget(f, :index)), JR.get(this, :anchor)])
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(JR.lget(f, :highScore), :jm_getScoreString, []), JR.int32(JR.int32(JR.lget(f, :width) - 10) - JR.lget(f, :largestSecondColumnWidth)), JR.int32(JR.lget(f, :charHeight) * JR.lget(f, :index)), JR.get(this, :anchor)])
            JR.lpostinc(f, :index, 1)
            JR.lpostinc(f, :vectorIndex, 1)
        end)
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end


  def jm_setHighScores(this, p_highScores) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScores, p_highScores)
        JR.put(this, :highScores, JR.lget(f, :highScores))
    end)
  end
end


