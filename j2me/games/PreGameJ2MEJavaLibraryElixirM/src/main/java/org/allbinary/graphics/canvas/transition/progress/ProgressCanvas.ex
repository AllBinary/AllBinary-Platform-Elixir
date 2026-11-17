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
# package org.allbinary.graphics.canvas.transition.progress

defmodule ProgressCanvas do
  def jsuper(), do: RunnableCanvas

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :hasPainted, false)
    JR.put(this, :backgroundBasicColor, nil)
    JR.put(this, :GAUGE_PAINTABLE, nil)
    JR.put(this, :maxValue, 0.0)
    JR.put(this, :gauge, nil)
    JR.put(this, :TEXT, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :allbinaryMidlet, nil)
    JR.put(this, :value, 0.0)
    JR.put(this, :text, nil)
    JR.put(this, :background, false)
    JR.put(this, :paintable, nil)
    JR.put(this, :inProgress, false)
    JR.put(this, :IN_GAME_PROCESSOR, nil)
    JR.put(this, :inGameProcessor, nil)
    JR.put(this, :progressEndListener, nil)
    JR.put(this, :backgroundLabel, nil)
    JR.put(this, :START_BACKGROUND, nil)
    JR.put(this, :ADD_PORTION, nil)
    JR.put(this, :ADD_EARLY_PORTION, nil)
        JR.put(this, :hasPainted, false)
        
        JR.put(this, :GAUGE_PAINTABLE, ProgressPaintable.jnew(this))
        JR.put(this, :maxValue, 100.0)
        
        JR.put(this, :TEXT, JR.get(JR.get(this, :commonStrings), :LOADING))
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :allbinaryMidlet, AllBinaryMidlet.jm_getNullInstance())
        JR.put(this, :value, 0.0)
        JR.put(this, :text, JR.get(this, :TEXT))
        JR.put(this, :background, true)
        JR.put(this, :paintable, JR.get(this, :GAUGE_PAINTABLE))
        JR.put(this, :inProgress, false)
        JR.put(this, :IN_GAME_PROCESSOR, Processor.jnew())
        JR.put(this, :inGameProcessor, Processor.jm_getInstance())
        JR.put(this, :progressEndListener, ProgressEndListener.jstatic_instance())
        JR.put(this, :backgroundLabel, "Background AI Game Loading...")
        JR.put(this, :START_BACKGROUND, "startBackground")
        JR.put(this, :ADD_PORTION, "addPortion")
        JR.put(this, :ADD_EARLY_PORTION, "addEarlyPortion")
    nil
  end


  def jinit(this, p_title, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        RunnableCanvas.jinit(this, NullCommandListener.jstatic_NULL_COMMAND_LISTENER(), JR.get(CanvasStrings.jm_getInstance(), :EMPTY_CHILD_NAME_LIST), false)
        ProgressCanvas.jinitfields(this)
        JR.put(this, :backgroundBasicColor, JR.lget(f, :backgroundBasicColor))
        JR.put(this, :gauge, ABCustomGaugeItem.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.int32(JR.d2i(JR.get(this, :maxValue))), 0, JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor)))
    end)
  end

  def jnew(p_title, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.call(JR.get(this, :gauge), :jm_setHeight, [(JR.call(JR.lget(f, :font), :jm_getHeight, []) + 2)])
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_init(this, p_gameMidlet) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameMidlet, p_gameMidlet)
        JR.put(this, :allbinaryMidlet, JR.lget(f, :gameMidlet))
    end)
  end


  def jm_update(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        nil
    end)
  end


  def jm_getMaxValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxValue)})
    end)
  end


  def jm_start(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :START_METHOD_NAME)])
        JR.call(this, :jm_setBackground, [true])
        JR.call(JR.get(this, :gauge), :jm_setHeight, [30])
        JR.call(JR.get(this, :gauge), :jm_setLabel, [JR.get(JR.get(this, :commonStrings), :PLEASE_WAIT)])
        JR.call(this, :jm_setText, [JR.get(this, :TEXT)])
        JR.call(this, :jm_setValue, [0])
        JR.put(this, :inGameProcessor, Processor.jm_getInstance())
        JR.put(this, :paintable, JR.get(this, :GAUGE_PAINTABLE))
        JR.put(this, :inProgress, true)
    end)
  end


  def jm_startBackground(this, p_background) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :background, p_background)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(this, :START_BACKGROUND)])
        JR.call(this, :jm_setBackground, [JR.lget(f, :background)])
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.call(JR.get(this, :gauge), :jm_setLabel, [JR.get(this, :backgroundLabel)])
        JR.call(this, :jm_setText, [JR.get(this, :TEXT)])
        JR.call(this, :jm_setValue, [0])
        JR.put(this, :inGameProcessor, Processor.jm_getInstance())
        JR.put(this, :paintable, JR.get(this, :GAUGE_PAINTABLE))
    end)
  end


  def jm_endActual(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :allbinaryMidlet), :jm_commandAction, [JR.get(GameCommandsFactory.jm_getInstance(), :SHOW_GAME_CANVAS), NullCanvas.jstatic_NULL_CANVAS()])
        JR.put(this, :inProgress, false)
        JR.call(this, :jm_inGame, [])
    end)
  end


  def jm_inGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :progressEndListener), :jm_onEndEvent, [])
        JR.put(this, :inGameProcessor, JR.get(this, :IN_GAME_PROCESSOR))
    end)
  end


  def jm_end(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :END_METHOD_NAME)])
        JR.call(JR.get(this, :gauge), :jm_setValue, [JR.call(this, :jm_getMaxValue, [])])
        JR.call(this, :jm_endActual, [])
        JR.put(this, :paintable, NullPaintable.jm_getInstance())
    end)
  end


  def jm_endFromInitialLazyLoadingComplete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :progressEndListener), :jm_onEndEvent, [])
        JR.call(JR.get(this, :gauge), :jm_setValue, [JR.call(this, :jm_getMaxValue, [])])
        JR.put(this, :inGameProcessor, JR.get(this, :IN_GAME_PROCESSOR))
    end)
  end


  def jm_isInGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :inGameProcessor) == JR.get(this, :IN_GAME_PROCESSOR)) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_endIfPaintedSinceStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_addEarlyPortion(this, p_value, p_text, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :text, p_text)
      JR.lset(f, :index, p_index)
        JR.call(this, :jm_setText, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :text)]), :jm_append, [JR.call(JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [JR.lget(f, :index)]), :jm_toString, [])]), :jm_toString, [])])
        JR.call(JR.get(this, :gauge), :jm_setValue, [(JR.call(JR.get(this, :gauge), :jm_getValue, []) + (JR.call(this, :jm_getMaxValue, []) / (JR.lget(f, :value) * 1.0)))])
    end)
  end


  def jm_addPortion(this, p_value, p_text, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :text, p_text)
      JR.lset(f, :index, p_index)
        JR.call(this, :jm_setText, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :text)]), :jm_append, [JR.call(JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [JR.lget(f, :index)]), :jm_toString, [])]), :jm_toString, [])])
        PreLogUtil.jm_put(JR.get(this, :text), this, JR.get(this, :ADD_PORTION))
        JR.call(JR.get(this, :gauge), :jm_setValue, [(JR.call(JR.get(this, :gauge), :jm_getValue, []) + (JR.call(this, :jm_getMaxValue, []) / (JR.lget(f, :value) * 1.0)))])
    end)
  end


  def jm_addNormalPortion(this, p_value, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :text, p_text)
        if (JR.get(this, :text) != JR.lget(f, :text)) do
            PreLogUtil.jm_put(JR.lget(f, :text), this, JR.get(this, :ADD_PORTION))
        end
        JR.call(this, :jm_setText, [JR.lget(f, :text)])
        JR.call(JR.get(this, :gauge), :jm_setValue, [(JR.call(JR.get(this, :gauge), :jm_getValue, []) + (JR.call(this, :jm_getMaxValue, []) / (JR.lget(f, :value) * 1.0)))])
    end)
  end


  def jm_setValue(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        JR.put(this, :value, (JR.lget(f, :value) * 1.0))
        JR.call(JR.get(this, :gauge), :jm_setValue, [(JR.lget(f, :value) * 1.0)])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paint2(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.get(this, :backgroundBasicColor), :jm_intValue, [])])
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [0, 0, JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []), JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, [])])
        JR.call(JR.get(this, :gauge), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
        JR.put(this, :hasPainted, true)
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
        JR.put(this, :text, JR.lget(f, :text))
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :text)})
    end)
  end


  def jm_setBackground(this, p_background) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :background, p_background)
        JR.put(this, :background, JR.lget(f, :background))
    end)
  end


  def jm_isBackground(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :background)})
    end)
  end
end


