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
# package org.allbinary.game.score.displayable

defmodule HighScoresCanvas do
  def jsuper(), do: GameCommandCanvas
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "HighScoresCanvas" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :paintable, nil)
    JR.put(this, :highScoreCommandsFactory, nil)
    JR.put(this, :waitPaintable, nil)
    JR.put(this, :highScoresPaintable, nil)
    JR.put(this, :highScoresFactoryInterface, nil)
    JR.put(this, :colorFillPaintable, nil)
    JR.put(this, :highScoresHelper, nil)
    JR.put(this, :gameInfo, nil)
    JR.put(this, :highScoresCanvasInputProcessor, nil)
    JR.put(this, :currentCommand, nil)
    JR.put(this, :hasPainted, false)
        JR.put(this, :paintable, NullPaintable.jm_getInstance())
        JR.put(this, :highScoreCommandsFactory, HighScoreCommandsFactory.jm_getInstance())
        JR.put(this, :waitPaintable, SimpleTextPaintable.jnew(JR.get(JR.get(this, :commonStrings), :PLEASE_WAIT_FOR_SERVER), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        
        
        
        JR.put(this, :highScoresHelper, HighScoresHelperBase.jnew())
        
        
        JR.put(this, :currentCommand, JR.aget(JR.get(JR.get(this, :highScoreCommandsFactory), :HIGH_SCORE_COMMANDS), 0))
        JR.put(this, :hasPainted, false)
    nil
  end


  def jinit(this, p_commandListener, p_allBinaryGameLayerManager, p_gameInfo, p_paintable, p_highScoresFactoryInterface, p_highScoresCanvasInputProcessorFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :paintable, p_paintable)
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :highScoresCanvasInputProcessorFactoryInterface, p_highScoresCanvasInputProcessorFactoryInterface)
        GameCommandCanvas.jinit(this, JR.lget(f, :commandListener), HighScoresCanvas.jstatic_NAME(), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, []))
        HighScoresCanvas.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :highScoresPaintable, JR.lget(f, :paintable))
        JR.put(this, :highScoresFactoryInterface, JR.lget(f, :highScoresFactoryInterface))
        JR.put(this, :highScoresCanvasInputProcessor, JR.call(JR.lget(f, :highScoresCanvasInputProcessorFactoryInterface), :jm_getInstance, [this]))
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
        JR.call(JR.get(this, :waitPaintable), :jm_setBasicColorP, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, [])])
        JR.call(JR.call(this, :jm_getHighScoresPaintable, []), :jm_setBasicColorP, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, [])])
        JR.put(this, :colorFillPaintable, JR.call(ColorFillPaintableFactory.jm_getInstance(), :jm_getInstance, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), false]))
        if (JR.alength(JR.call(JR.get(this, :highScoresHelper), :jm_getHighScoresArray, [])) == JR.alength(JR.get(NoHighScoresFactory.jm_getInstance(), :NO_HIGH_SCORES))) do
            JR.call(this, :jm_setPaintable, [JR.get(this, :waitPaintable)])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Show HighScores that are already loaded", this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
            JR.call(this, :jm_updateCommand, [JR.get(this, :currentCommand)])
            JR.call(this, :jm_setPaintable, [JR.call(this, :jm_getHighScoresPaintable, [])])
        end
        JR.call(SecondaryThreadPool.jm_getInstance(), :jm_runTask, [HighScoreRunnable.jnew(this)])
    end)
  end

  def jnew(p_commandListener, p_allBinaryGameLayerManager, p_gameInfo, p_paintable, p_highScoresFactoryInterface, p_highScoresCanvasInputProcessorFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_allBinaryGameLayerManager, p_gameInfo, p_paintable, p_highScoresFactoryInterface, p_highScoresCanvasInputProcessorFactoryInterface)
    this
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_addCommand, [JR.get(GameCommandsFactory.jm_getInstance(), :CLOSE_AND_SHOW_GAME_CANVAS)])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        GameCommandCanvas.jm_open(this)
        JR.call(JR.get(this, :highScoresCanvasInputProcessor), :jm_open, [])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        GameCommandCanvas.jm_close(this)
        JR.call(JR.get(this, :highScoresCanvasInputProcessor), :jm_close, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics)])
        if (JR.get(this, :waitPaintable) != JR.get(this, :paintable)) do
            JR.call(JR.get(this, :highScoresCanvasInputProcessor), :jm_paint, [JR.lget(f, :graphics)])
        end
        GameCommandCanvas.jm_paint(this, JR.lget(f, :graphics))
        JR.put(this, :hasPainted, true)
    end)
  end


  def jm_executeUpdate(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :highScoresFactoryInterface), :jm_fetchHighScores, [JR.call(this, :jm_getGameInfo, []), this])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getHighScoresPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highScoresPaintable)})
    end)
  end


  def jm_setHighScoresArray(this, p_highScoresArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresArray, p_highScoresArray)
        try do
            if (JR.lget(f, :highScoresArray) != nil) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_appendint, [JR.alength(JR.lget(f, :highScoresArray))]), :jm_toString, []), this, "setHighScoresArray"])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "setHighScoresArray"])
            end
            JR.call(JR.get(this, :highScoresHelper), :jm_setHighScoresArray, [JR.lget(f, :highScoresArray)])
            JR.call(this, :jm_updateCommand, [JR.get(this, :currentCommand)])
            JR.call(this, :jm_setPaintable, [JR.call(this, :jm_getHighScoresPaintable, [])])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end


  def jm_updateCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :command)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE)])
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        if JR.call(JR.get(this, :highScoreCommandsFactory), :jm_isHighScoreCommand, [JR.lget(f, :command)]) do
            JR.lset(f, :index, JR.call(JR.get(this, :highScoreCommandsFactory), :jm_getIndex, [JR.lget(f, :command)]))
            JR.lset(f, :nextIndex, JR.int32(JR.lget(f, :index) + 1))
            JR.lset(f, :highScoresArray, JR.call(JR.get(this, :highScoresHelper), :jm_getHighScoresArray, []))
            if (JR.lget(f, :nextIndex) >= JR.alength(JR.lget(f, :highScoresArray))) do
                JR.lset(f, :nextIndex, 0)
            end
            if (JR.alength(JR.lget(f, :highScoresArray)) > 0) do
                JR.call(JR.call(this, :jm_getHighScoresPaintable, []), :jm_setHighScores, [JR.aget(JR.lget(f, :highScoresArray), JR.lget(f, :index))])
            else
                JR.call(JR.call(this, :jm_getHighScoresPaintable, []), :jm_setHighScores, [NullHighScoresSingletonFactory.jm_getInstance()])
            end
            if (JR.lget(f, :index) != JR.lget(f, :nextIndex)) do
                JR.call(this, :jm_removeAllCommands, [])
                JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS)])
                JR.call(this, :jm_addCommand, [JR.aget(JR.get(JR.get(this, :highScoreCommandsFactory), :HIGH_SCORE_COMMANDS), JR.lget(f, :nextIndex))])
            end
        end
        JR.put(this, :currentCommand, JR.lget(f, :command))
        JR.call(this, :jm_close, [])
        GameCommandCanvas.jm_initMenu(this)
        JR.call(this, :jm_open, [])
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_getGameInfo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInfo)})
    end)
  end


  def jm_setPaintable(this, p_paintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :paintable, p_paintable)
        JR.put(this, :paintable, JR.lget(f, :paintable))
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end
end


