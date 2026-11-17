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

defmodule AllBinaryGameCanvas do
  def jsuper(), do: RunnableCanvas
def jstatic_id(), do: JR.static_get(__MODULE__, :id, fn -> 0 end)
  def jstatic_set_id(value), do: JR.static_put(__MODULE__, :id, value)
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> 2 end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColorFactory, nil)
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :touchFeatureFactory, nil)
    JR.put(this, :openGLFeatureFactory, nil)
    JR.put(this, :touchButtonFactory, nil)
    JR.put(this, :gameAdStateFactory, nil)
    JR.put(this, :gameStrings, nil)
    JR.put(this, :gameInputStrings, nil)
    JR.put(this, :gameStateFactory, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
    JR.put(this, :gameTickDisplayInfoSingleton, nil)
    JR.put(this, :gameRunnable, nil)
    JR.put(this, :gamePauseRunnable, nil)
    JR.put(this, :formUtil, nil)
    JR.put(this, :myFormUtil, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :gameSpecificPaintable, nil)
    JR.put(this, :sensorGameUpdateProcessor, nil)
    JR.put(this, :endGameInfo, nil)
    JR.put(this, :startIntermissionInterface, nil)
    JR.put(this, :endLevelIntermissionInterface, nil)
    JR.put(this, :gameLayerManager, nil)
    JR.put(this, :gameState, nil)
    JR.put(this, :gameOver, false)
    JR.put(this, :initialized, false)
    JR.put(this, :gameStateTimeHelper, nil)
    JR.put(this, :highScoresHelper, nil)
    JR.put(this, :highScoreSubmitted, false)
    JR.put(this, :realHighScoresPaintable, nil)
    JR.put(this, :highScoresPaintable, nil)
    JR.put(this, :localPlayerGameInputList, nil)
    JR.put(this, :isCheating, false)
    JR.put(this, :hashtable, nil)
    JR.put(this, :isSingleKeyRepeatableProcessing, false)
    JR.put(this, :gameInitializationInterfaceFactoryInterface, nil)
    JR.put(this, :touchButtonsPaintable, nil)
    JR.put(this, :touchPaintable, nil)
    JR.put(this, :cheatProcessor, nil)
    JR.put(this, :gameInputProcessor, nil)
    JR.put(this, :endGameProcessor, nil)
    JR.put(this, :realEndGameProcessor, nil)
    JR.put(this, :startIntermissionProcessor, nil)
    JR.put(this, :realStartIntermissionProcessor, nil)
    JR.put(this, :endGamePaintable, nil)
    JR.put(this, :endGameStatePaintable, nil)
    JR.put(this, :nonBotPaintable, nil)
    JR.put(this, :intermissionPaintable, nil)
    JR.put(this, :startIntermissionPaintable, nil)
    JR.put(this, :mainStateProcessor, nil)
    JR.put(this, :processGameProcessor, nil)
    JR.put(this, :highScoresFactoryInterface, nil)
    JR.put(this, :startLevel, 0)
    JR.put(this, :mainMenuInputProcessor, nil)
    JR.put(this, :popupMenuInputProcessor, nil)
    JR.put(this, :menuInputProcessor, nil)
    JR.put(this, :menuForm, nil)
    JR.put(this, :formPaintable, nil)
    JR.put(this, :openMenuPaintable, nil)
    JR.put(this, :menuPaintable, nil)
    JR.put(this, :currentTouchInputFactory, nil)
    JR.put(this, :colorFillPaintable, nil)
    JR.put(this, :baseGameStatistics, nil)
    JR.put(this, :primaryPlayerQueue, nil)
    JR.put(this, :secondaryPlayerQueue, nil)
    JR.put(this, :BUILD_GAME, nil)
    JR.put(this, :gameTypeFactory, nil)
    JR.put(this, :screenCapture, nil)
    JR.put(this, :basicMotionGesturesHandler, nil)
    JR.put(this, :gameKeyEventHandler, nil)
    JR.put(this, :gameBehavior, nil)
    JR.put(this, :menuBehavior, nil)
    JR.put(this, :progressPaintable, nil)
    JR.put(this, :fontHeightP, 0)
    JR.put(this, :gameCanvasStartListener, nil)
    JR.put(this, :rawGameInputProcessor, nil)
    JR.put(this, :rawInputProcessor, nil)
    JR.put(this, :inputProcessor, nil)
    JR.put(this, :YIELD_SLEEP, 0)
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :touchFeatureFactory, TouchFeatureFactory.jm_getInstance())
        JR.put(this, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
        JR.put(this, :touchButtonFactory, TouchButtonFactory.jm_getInstance())
        JR.put(this, :gameAdStateFactory, GameAdStateFactory.jm_getInstance())
        JR.put(this, :gameStrings, GameStrings.jm_getInstance())
        JR.put(this, :gameInputStrings, GameInputStrings.jm_getInstance())
        JR.put(this, :gameStateFactory, GameStateFactory.jm_getInstance())
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
        JR.put(this, :gameTickDisplayInfoSingleton, GameTickDisplayInfoSingleton.jm_getInstance())
        JR.put(this, :gameRunnable, GameCanvasRunnable.jnew(this))
        JR.put(this, :gamePauseRunnable, GameCanvasPauseRunnable.jnew(this))
        JR.put(this, :formUtil, FormUtil.jm_getInstance())
        JR.put(this, :myFormUtil, MyFormUtil.jm_getInstance())
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :gameSpecificPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :sensorGameUpdateProcessor, SingleSensorGameUpdateProcessor.jnew())
        JR.put(this, :endGameInfo, EndGameInfo.jnew())
        JR.put(this, :startIntermissionInterface, Intermission.jnew())
        JR.put(this, :endLevelIntermissionInterface, Intermission.jnew())
        JR.put(this, :gameLayerManager, AllBinaryGameLayerManager.jm_getNullInstance())
        JR.put(this, :gameState, JR.get(JR.get(this, :gameStateFactory), :NO_GAME_STATE))
        JR.put(this, :gameOver, false)
        JR.put(this, :initialized, false)
        JR.put(this, :gameStateTimeHelper, TimeDelayHelper.jnew(0))
        
        JR.put(this, :highScoreSubmitted, false)
        JR.put(this, :realHighScoresPaintable, HighScoresPaintable.jnew())
        JR.put(this, :highScoresPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :localPlayerGameInputList, BasicArrayListD.jnew())
        JR.put(this, :isCheating, false)
        JR.put(this, :hashtable, JR.get(JR.get(this, :stdUtil), :NULL_TABLE))
        JR.put(this, :isSingleKeyRepeatableProcessing, false)
        JR.put(this, :gameInitializationInterfaceFactoryInterface, BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY())
        JR.put(this, :touchButtonsPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :touchPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :cheatProcessor, NoPlayerGameInput.jm_getInstance())
        JR.put(this, :gameInputProcessor, Processor.jm_getInstance())
        JR.put(this, :endGameProcessor, Processor.jm_getInstance())
        JR.put(this, :realEndGameProcessor, Processor.jm_getInstance())
        JR.put(this, :startIntermissionProcessor, Processor.jm_getInstance())
        JR.put(this, :realStartIntermissionProcessor, Processor.jm_getInstance())
        JR.put(this, :endGamePaintable, NullPaintable.jm_getInstance())
        JR.put(this, :endGameStatePaintable, NullPaintable.jm_getInstance())
        JR.put(this, :nonBotPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :intermissionPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :startIntermissionPaintable, NullInitUpdatePaintable.jm_getInstance())
        JR.put(this, :mainStateProcessor, Processor.jm_getInstance())
        JR.put(this, :processGameProcessor, Processor.jm_getInstance())
        
        JR.put(this, :startLevel, 0)
        JR.put(this, :mainMenuInputProcessor, NoMenuInputProcessor.jm_getInstance())
        JR.put(this, :popupMenuInputProcessor, NoMenuInputProcessor.jm_getInstance())
        JR.put(this, :menuInputProcessor, NoMenuInputProcessor.jm_getInstance())
        JR.put(this, :menuForm, ScrollSelectionForm.jm_getNullScrollSelectionForm())
        JR.put(this, :formPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :openMenuPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :menuPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :currentTouchInputFactory, NoButtonsTouchInputFactory.jm_getInstance())
        JR.put(this, :colorFillPaintable, JR.call(ColorFillPaintableFactory.jm_getInstance(), :jm_getInstance, [JR.get(JR.get(this, :basicColorFactory), :BLACK), true]))
        JR.put(this, :baseGameStatistics, GameStatisticsFactory.jm_getInstance())
        JR.put(this, :primaryPlayerQueue, PrimaryPlayerQueueFactory.jm_getInstance())
        JR.put(this, :secondaryPlayerQueue, SecondaryPlayerQueueFactory.jm_getInstance())
        JR.put(this, :BUILD_GAME, "buildGame")
        JR.put(this, :gameTypeFactory, GameTypeFactory.jm_getInstance())
        JR.put(this, :screenCapture, ScreenCaptureFactory.jm_getInstance())
        JR.put(this, :basicMotionGesturesHandler, BasicMotionGesturesHandler.jm_getInstance())
        JR.put(this, :gameKeyEventHandler, GameKeyEventHandler.jm_getInstance())
        JR.put(this, :gameBehavior, nil)
        JR.put(this, :menuBehavior, nil)
        JR.put(this, :progressPaintable, ProgressCanvasFactory.jm_getLazyInstance())
        JR.put(this, :fontHeightP, 0)
        JR.put(this, :gameCanvasStartListener, NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE())
        JR.put(this, :rawGameInputProcessor, GameCanvasInputProcessor.jnew(this))
        JR.put(this, :rawInputProcessor, FormInputProcessor.jnew(this))
        JR.put(this, :inputProcessor, JR.call(this, :jm_getRawGameInputProcessor, []))
        JR.put(this, :YIELD_SLEEP, 100)
    nil
  end


  def jinit(this, p_commandListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :gameLayerManager, p_gameLayerManager)
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :gameInitializationInterfaceFactoryInterface, p_gameInitializationInterfaceFactoryInterface)
      JR.lset(f, :buffered, p_buffered)
        RunnableCanvas.jinit(this, JR.lget(f, :commandListener), JR.get(CanvasStrings.jm_getInstance(), :EMPTY_CHILD_NAME_LIST), true)
        AllBinaryGameCanvas.jinitfields(this)
        JR.put(this, :highScoresHelper, JR.call(JR.lget(f, :highScoresFactoryInterface), :jm_createHighScoresHelper, []))
        JR.put(this, :gameInitializationInterfaceFactoryInterface, JR.lget(f, :gameInitializationInterfaceFactoryInterface))
        JR.call(this, :jm_init, [JR.lget(f, :gameLayerManager), JR.lget(f, :buffered)])
        JR.put(this, :highScoresFactoryInterface, JR.lget(f, :highScoresFactoryInterface))
        if ((JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getGameType, []) == JR.get(JR.get(this, :gameTypeFactory), :BOT)) || (JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getGameType, []) == JR.get(JR.get(this, :gameTypeFactory), :NONE))) do
            JR.put(this, :gameBehavior, DemoGameBehavior.jm_getInstance())
            JR.put(this, :menuBehavior, BaseMenuBehavior.jm_getInstance())
        else
            JR.put(this, :gameBehavior, BaseGameBehavior.jm_getInstance())
            JR.put(this, :menuBehavior, JR.call(this, :jm_getInGameMenuBehavior, []))
        end
        JR.call(this, :jm_initPopupMenu, [])
        JR.call(this, :jm_initMenu, [])
        JR.call(this, :jm_initSpecialPaint, [])
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end

  def jnew(p_commandListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_gameLayerManager, p_highScoresFactoryInterface, p_gameInitializationInterfaceFactoryInterface, p_buffered)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_append, [JR.get(JR.get(this, :canvasStrings), :FD_WIDTH)]), :jm_appendint, [JR.int32(MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)))]), :jm_append, [JR.get(JR.get(this, :canvasStrings), :FD_HEIGHT)]), :jm_appendint, [JR.int32(JR.call(JR.lget(f, :font), :jm_getHeight, []))]), :jm_toString, []), this, JR.get(JR.get(this, :canvasStrings), :UPDATE_MEASUREMENT)])
            JR.put(this, :fontHeightP, JR.call(JR.lget(f, :font), :jm_getHeight, []))
            JR.call(JR.get(this, :myFormUtil), :jm_updateMeasurement, [JR.lget(f, :graphics)])
            JR.lset(f, :popupMenuRectangle, JR.call(JR.get(this, :myFormUtil), :jm_getPopupMenuRectangle, []))
            JR.lset(f, :basicPopupMenuPaintable, (JR.call(this, :jm_getOpenMenuPaintable, [])))
            JR.call(JR.lget(f, :basicPopupMenuPaintable), :jm_init, [JR.lget(f, :popupMenuRectangle)])
            if (JR.call(this, :jm_getPopupMenuInputProcessor, []) != NoMenuInputProcessor.jm_getInstance()) do
                JR.lset(f, :popupMenuInputProcessor, (JR.call(this, :jm_getPopupMenuInputProcessor, [])))
                JR.call(JR.lget(f, :popupMenuInputProcessor), :jm_init, [JR.lget(f, :popupMenuRectangle)])
            end
            JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getInGameMenuBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, InGameMenuBehavior.jm_getInstance()})
    end)
  end


  def jm_setCurrentThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if J2MEUtil.jm_isHTML() do
            RunnableCanvas.jm_setCurrentThreadFake(this)
        else
            RunnableCanvas.jm_setCurrentThread(this)
        end
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onDisplayChangeEvent(this, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_append, [JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :canvasStrings), :UPDATE_MEASUREMENT)])
            JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
            JR.call(JR.get(this, :menuBehavior), :jm_onDisplayChangeEvent, [this, JR.lget(f, :displayChangeEvent)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_updateMenuFromEvent(this, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
        JR.lset(f, :formType, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
        JR.lset(f, :rectangle, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
        JR.call(JR.get(this, :menuForm), :jm_init, [JR.lget(f, :rectangle), JR.lget(f, :formType)])
        if (JR.get(this, :currentTouchInputFactory) != NoButtonsTouchInputFactory.jm_getInstance()) do
            JR.call(JR.get(this, :touchButtonFactory), :jm_toggle, [JR.call(this, :jm_isPaused, []), JR.call(JR.get(this, :currentTouchInputFactory), :jm_getList, [])])
        end
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_processSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        RunnableCanvas.jm_processSleep(this)
        if AllBinaryMediaManager.jm_update() do
            if !JR.call(JR.get(this, :primaryPlayerQueue), :jm_process, []) do
                JR.call(JR.get(this, :secondaryPlayerQueue), :jm_process, [])
            end
        end
        if (JR.call(JR.get(this, :menuInputProcessor), :jm_processInputList, []) != -1) do
            JR.call(JR.get(this, :runnableCanvasRefreshHelper), :jm_process, [])
        end
    end)
  end


  def jm_initPopupMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :popupMenuInputProcessor) == NoMenuInputProcessor.jm_getInstance()) do
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :popupMenuRectangle, JR.call(JR.get(this, :myFormUtil), :jm_getPopupMenuRectangle, []))
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :TOUCH_ENABLED)]) do
                JR.call(this, :jm_setOpenMenuPaintable, [BasicPopupMenuPaintable.jnew(JR.lget(f, :popupMenuRectangle), JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, []))])
                JR.call(this, :jm_setPopupMenuInputProcessor, [PopupMenuInputProcessor.jnew(BasicArrayListD.jnew(), -1, this, JR.lget(f, :popupMenuRectangle))])
            end
        else
            nil
        end
    end)
  end


  def jm_initMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :menuBehavior), :jm_initMenu, [this])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "initMenu", JR.lget(f, :e)])
        end
    end)
  end


  def jm_initMenu2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_closeMenu, [])
        JR.lset(f, :formType, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
        JR.lset(f, :gameLimitedCommandTextItemArrayFactory, GameLimitedCommandTextItemArrayFactory.jm_getInstance())
        JR.lset(f, :commandTextItemArrayFactory, JR.call(JR.lget(f, :gameLimitedCommandTextItemArrayFactory), :jm_getCommandTextItemArrayFactory, []))
        JR.lset(f, :items, JR.call(JR.lget(f, :commandTextItemArrayFactory), :jm_getInstance, [JR.call(this, :jm_getCommandStack, []), JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, [])]))
        JR.lset(f, :rectangle, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
        JR.call(this, :jm_setMenuForm, [CommandCurrentSelectionFormFactory.jm_getInstance(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.lget(f, :items), JR.lget(f, :rectangle), JR.lget(f, :formType), 25, false, JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, []))])
        JR.lset(f, :scrollSelectionForm, JR.call(this, :jm_getMenuForm, []))
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :TOUCH_ENABLED)]) do
            JR.put(this, :mainMenuInputProcessor, PopupCommandFormInputProcessor.jnew(BasicArrayListD.jnew(), -1, this, JR.lget(f, :scrollSelectionForm), JR.call(this, :jm_getPopupMenuInputProcessor, [])))
        else
            nil
        end
        JR.call(this, :jm_setMenuInputProcessor, [JR.call(this, :jm_getPopupMenuInputProcessor, [])])
        if (JR.lget(f, :scrollSelectionForm) != ScrollSelectionFormNoneFactory.jm_getInstance()) do
            JR.call(this, :jm_setFormPaintable, [FormPaintable.jnew(JR.lget(f, :scrollSelectionForm))])
        else
            nil
        end
        JR.call(this, :jm_closeMenu, [])
    end)
  end


  def jm_updateMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :menuBehavior), :jm_updateMenu, [this])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "initMenu", JR.lget(f, :e)])
        end
    end)
  end


  def jm_updateMenu2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :scrollSelectionForm, JR.call(this, :jm_getMenuForm, []))
        JR.call(JR.lget(f, :scrollSelectionForm), :jm_deleteAll, [])
        JR.lset(f, :gameLimitedCommandTextItemArrayFactory, GameLimitedCommandTextItemArrayFactory.jm_getInstance())
        JR.lset(f, :commandTextItemArrayFactory, JR.call(JR.lget(f, :gameLimitedCommandTextItemArrayFactory), :jm_getCommandTextItemArrayFactory, []))
        JR.lset(f, :items, JR.call(JR.lget(f, :commandTextItemArrayFactory), :jm_getInstance, [JR.call(this, :jm_getCommandStack, []), JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, [])]))
        JR.lset(f, :size, JR.alength(JR.lget(f, :items)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :scrollSelectionForm), :jm_append, [JR.aget(JR.lget(f, :items), JR.lget(f, :index))])
        end)
        JR.lset(f, :formType, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
        JR.lset(f, :rectangle, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
        JR.call(JR.lget(f, :scrollSelectionForm), :jm_init, [JR.lget(f, :rectangle), JR.lget(f, :formType)])
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameBehavior), :jm_pause, [this])
        JR.call(this, :jm_closeMenu, [])
        RunnableCanvas.jm_pause(this)
        JR.call(JR.get(this, :touchButtonFactory), :jm_toggle, [JR.call(this, :jm_isPaused, []), JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, [])])
        JR.call(JR.get(this, :tsUtil), :jm_gc, [])
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :gameStrings), :UNPAUSE)])
        JR.call(this, :jm_closeMenu, [])
        JR.call(JR.get(this, :tsUtil), :jm_gc, [])
        RunnableCanvas.jm_unPause(this)
        JR.call(JR.get(this, :touchButtonFactory), :jm_toggle, [JR.call(this, :jm_isPaused, []), JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, [])])
        JR.call(JR.get(this, :gameBehavior), :jm_unPause, [this])
    end)
  end


  def jm_isPausable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(CurrentDisplayableFactory.jm_getInstance(), :jm_getUsedRunnable, []) == NullWaitGameRunnable.jm_getInstance()) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_popupMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :menuBehavior), :jm_popupMenu, [this])
    end)
  end


  def jm_popupMenu2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :primaryPlayerQueue), :jm_add, [SelectSound.jm_getInstance()])
        JR.call(this, :jm_setMenuPaintable, [JR.call(this, :jm_getFormPaintable, [])])
        JR.call(this, :jm_setMenuInputProcessor, [JR.get(this, :mainMenuInputProcessor)])
        JR.call(JR.get(this, :basicMotionGesturesHandler), :jm_addListenerInterface, [JR.get(this, :mainMenuInputProcessor)])
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_addListener, [JR.get(this, :mainMenuInputProcessor)])
    end)
  end


  def jm_toggleMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :gameStrings), :TOGGLE_MENU)])
        if (JR.call(this, :jm_getMenuPaintable, []) == JR.call(this, :jm_getOpenMenuPaintable, [])) do
            JR.call(this, :jm_pause, [])
            JR.call(this, :jm_updateMenu, [])
            JR.call(this, :jm_popupMenu, [])
        else
            if (JR.call(this, :jm_getMenuPaintable, []) == JR.call(this, :jm_getFormPaintable, [])) do
            JR.call(JR.get(this, :primaryPlayerQueue), :jm_add, [SelectSound.jm_getInstance()])
            JR.call(this, :jm_unPause, [])
        end
        end
    end)
  end


  def jm_closeMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :menuBehavior), :jm_closeMenu, [this])
    end)
  end


  def jm_closeMenu2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setMenuPaintable, [JR.call(this, :jm_getOpenMenuPaintable, [])])
        JR.call(JR.get(this, :basicMotionGesturesHandler), :jm_removeListener, [JR.get(this, :mainMenuInputProcessor)])
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_removeListener, [JR.get(this, :mainMenuInputProcessor)])
        JR.call(this, :jm_setMenuInputProcessor, [JR.call(this, :jm_getPopupMenuInputProcessor, [])])
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :basicMotionGesturesHandler), :jm_addListenerInterface, [JR.get(this, :menuInputProcessor)])
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_addListener, [JR.get(this, :menuInputProcessor)])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :basicMotionGesturesHandler), :jm_removeListener, [JR.get(this, :menuInputProcessor)])
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_removeListener, [JR.get(this, :menuInputProcessor)])
        JR.call(JR.get(this, :primaryPlayerQueue), :jm_clear, [])
        JR.call(JR.get(this, :secondaryPlayerQueue), :jm_clear, [])
    end)
  end


  def jm_processorInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setMainStateProcessor, [Processor.jm_getInstance()])
        JR.call(this, :jm_setProcessGameProcessorInit, [])
    end)
  end


  def jm_setProcessGameProcessorInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setProcessGameProcessor, [GameProcessor.jnew(this)])
    end)
  end


  def jm_initSpecialPaint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :menuBehavior), :jm_initSpecialPaint, [this])
    end)
  end


  def jm_init(this, p_gameLayerManager, p_buffered) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameLayerManager, p_gameLayerManager)
      JR.lset(f, :buffered, p_buffered)
        JR.call(JR.get(this, :gameStateTimeHelper), :jm_setStartTimeTNT, [])
        JR.call(this, :jm_setHighScoreSubmitted, [false])
        JR.call(this, :jm_setLayerManager, [JR.lget(f, :gameLayerManager)])
        if !JR.lget(f, :buffered) do
            JR.lset(f, :BUFF_MESSAGE, "XXX Not Buffering Causes Concurrency Issues XXX")
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.lget(f, :BUFF_MESSAGE), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        else
            throw({:jexception, JR.exception("Exception", "Buffering is disabled")})
        end
        JR.call(this, :jm_setGameInputProcessor, [Processor.jm_getInstance()])
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(GameFeatureFactory.jm_getInstance(), :CHEATING)]) do
            JR.put(this, :isCheating, true)
            JR.put(this, :cheatProcessor, CheatGameInputProcessor.jnew(this))
            JR.call(JR.get(this, :gameKeyEventHandler), :jm_addListener, [JR.get(this, :cheatProcessor)])
        else
            JR.put(this, :isCheating, false)
            JR.put(this, :cheatProcessor, NoPlayerGameInput.jm_getInstance())
        end
        JR.put(this, :realEndGameProcessor, EndGameProcessor.jnew(this))
        JR.call(this, :jm_setEndGameProcessor, [Processor.jm_getInstance()])
        JR.put(this, :realStartIntermissionProcessor, StartIntermissionProcessor.jnew(this))
        JR.put(this, :startIntermissionProcessor, Processor.jm_getInstance())
        JR.call(this, :jm_setEndGameStatePaintable, [EndGamePaintable.jnew(this)])
        JR.call(this, :jm_setEndGamePaintable, [NullPaintable.jm_getInstance()])
        JR.call(this, :jm_setIntermissionPaintable, [NullPaintable.jm_getInstance()])
        JR.call(JR.call(this, :jm_getStartIntermissionInterface, []), :jm_setListener, [this])
    end)
  end


  def jm_notifyIntermission(this, p_enable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enable, p_enable)
        if JR.lget(f, :enable) do
            JR.put(this, :startIntermissionProcessor, JR.get(this, :realStartIntermissionProcessor))
        else
            JR.put(this, :startIntermissionProcessor, Processor.jm_getInstance())
        end
        if JR.lget(f, :enable) do
            JR.call(this, :jm_setIntermissionPaintable, [JR.call(this, :jm_getStartIntermissionPaintable, [])])
        else
            JR.call(this, :jm_setIntermissionPaintable, [NullPaintable.jm_getInstance()])
        end
    end)
  end


  def jm_mediaInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end


  def jm_initConfigurable(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Setting Configurables"])
        JR.call(GameInitializationUtil.jm_getInstance(), :jm_initGame, [JR.lget(f, :abeClientInformation), this, JR.get(this, :gameInitializationInterfaceFactoryInterface)])
        JR.lset(f, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
        JR.lset(f, :changedGameFeatureListener, ChangedGameFeatureListener.jm_getInstance())
        if JR.call(JR.lget(f, :changedGameFeatureListener), :jm_isChangedFeature, [JR.get(JR.lget(f, :gameFeatureFactory), :SOUND)]) do
            JR.lset(f, :features, Features.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Sound Changing To: "]), :jm_appendboolean, [JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :gameFeatureFactory), :SOUND)])]), :jm_toString, []), this, "initConfigurable"])
            JR.call(this, :jm_mediaInit, [])
            JR.call(JR.lget(f, :changedGameFeatureListener), :jm_remove, [JR.get(JR.lget(f, :gameFeatureFactory), :SOUND)])
        end
        JR.lset(f, :sensorFeatureFactory, SensorFeatureFactory.jm_getInstance())
        if ((JR.call(JR.lget(f, :changedGameFeatureListener), :jm_isChangedFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :ORIENTATION_SENSORS)]) || JR.call(JR.lget(f, :changedGameFeatureListener), :jm_isChangedFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :NO_ORIENTATION)])) || JR.call(JR.lget(f, :changedGameFeatureListener), :jm_isChangedFeature, [JR.get(JR.lget(f, :sensorFeatureFactory), :SIMULATED_ORIENTATION_SENSORS)])) do
            JR.call(JR.lget(f, :changedGameFeatureListener), :jm_remove, [JR.get(JR.lget(f, :sensorFeatureFactory), :NO_ORIENTATION)])
            JR.call(JR.lget(f, :changedGameFeatureListener), :jm_remove, [JR.get(JR.lget(f, :sensorFeatureFactory), :ORIENTATION_SENSORS)])
            JR.call(JR.lget(f, :changedGameFeatureListener), :jm_remove, [JR.get(JR.lget(f, :sensorFeatureFactory), :SIMULATED_ORIENTATION_SENSORS)])
        end
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        JR.call(this, :jm_loadResourceLoadingLevel, [JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_GAME)])
    end)
  end


  def jm_initApp(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(this, :jm_initConfigurable, [JR.lget(f, :abeClientInformation)])
        JR.call(this, :jm_processorInit, [])
        JR.call(JR.get(this, :sensorGameUpdateProcessor), :jm_process, [JR.get(this, :gameLayerManager)])
        JR.call(JR.get(this, :sensorGameUpdateProcessor), :jm_sendNotifications, [JR.get(this, :gameLayerManager)])
        JR.call(this, :jm_initTouch, [])
    end)
  end


  def jm_initTouch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameInitializedEvent, JR.get(GameInitializationUtil.jm_getInstance(), :EVENT))
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        JR.call(JR.lget(f, :gameInitializedEvent), :jm_setResourceLoadingLevel, [JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_TOUCH)])
        JR.call(GameInitializedEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameInitializedEvent)])
        JR.call(JR.get(this, :touchButtonFactory), :jm_defaultList, [])
        JR.call(this, :jm_updateTouch, [])
        JR.call(this, :jm_postInitTouch, [])
    end)
  end


  def jm_updateCurrentTouchInputFactory(this, p_nextTouchInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :nextTouchInput, p_nextTouchInput)
        if (JR.lget(f, :nextTouchInput) != JR.get(this, :currentTouchInputFactory)) do
            JR.put(this, :currentTouchInputFactory, JR.lget(f, :nextTouchInput))
            PreLogUtil.jm_put(JR.call(JR.get(this, :currentTouchInputFactory), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :UDPATE_CURRENT_TOUCH_INPUT_FACTORY))
            JR.call(JR.get(this, :touchButtonFactory), :jm_toggle, [JR.call(this, :jm_isPaused, []), JR.call(JR.get(this, :currentTouchInputFactory), :jm_getList, [])])
        end
    end)
  end


  def jm_updateTouch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameBehavior), :jm_updateTouch, [this])
    end)
  end


  def jm_updateTouch2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)]) do
            if ((JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getCurrentLevel, []) - JR.call(this, :jm_getStartLevel, [])) == 1) do
                JR.call(this, :jm_setTouchPaintableP, [NullPaintable.jm_getInstance()])
            end
        end
    end)
  end


  def jm_postInitTouch(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setTouchButtonsPaintable, [TouchButtonsPaintableFactory.jm_getInstance(JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, []))])
        JR.call(this, :jm_updateScreenButtonPaintable, [])
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_addCommands, [])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_addCommands(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        JR.lset(f, :myCommandsFactory, MyCommandsFactory.jm_getInstance())
        if (DebugFactory.jm_getInstance() != NoDebug.jm_getInstance()) do
            JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :START_TRACE)])
        end
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :RESTART_COMMAND)])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :myCommandsFactory), :PAUSE_COMMAND)])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :QUIT_COMMAND)])
        JR.lset(f, :isOverScan, JR.call(JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []), :jm_isOverScan, []))
        if J2MEUtil.jm_isHTML() do
            nil
        else
            if SWTUtil.jstatic_isSWT() do
            nil
        else
            if !JR.lget(f, :isOverScan) do
            if (JR.call(TouchScreenFactory.jm_getInstance(), :jm_isTouch, []) && JR.call(InGameFeatures.jnew(), :jm_isAny, [])) do
                JR.call(this, :jm_addCommand, [InGameOptionsForm.jstatic_DISPLAY()])
            end
            JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :SAVE)])
            JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_LOAD_FORM)])
        end
        end
        end
    end)
  end


  def jm_itemStateChanged(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        try do
            JR.lset(f, :itemLabel, JR.call(JR.lget(f, :item), :jm_getLabel, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonLabels), :ITEM_LABEL)]), :jm_append, [JR.lget(f, :itemLabel)]), :jm_toString, []), this, "itemStateChanged"])
            if JR.instance_of(JR.lget(f, :item), ChoiceGroup) do
                JR.lset(f, :gameFeatureUtil, GameFeatureUtil.jm_getInstance())
                if JR.call(JR.lget(f, :gameFeatureUtil), :jm_isExclusive, [JR.lget(f, :itemLabel)]) do
                    JR.call(JR.lget(f, :gameFeatureUtil), :jm_updateExclusiveForChoiceGroup, [JR.lget(f, :item)])
                else
                    JR.call(JR.lget(f, :gameFeatureUtil), :jm_updateMultiple, [JR.lget(f, :item)])
                end
            end
            JR.call(JR.get(this, :sensorGameUpdateProcessor), :jm_process, [JR.get(this, :gameLayerManager)])
            JR.call(this, :jm_updateTouch, [])
            JR.call(this, :jm_updateScreenButtonPaintable, [])
            JR.call(JR.get(this, :sensorGameUpdateProcessor), :jm_sendNotifications, [JR.get(this, :gameLayerManager)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "itemStateChanged", JR.lget(f, :e)])
        end
    end)
  end


  def jm_updateScreenButtonPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameBehavior), :jm_updateScreenButtonPaintable, [this])
    end)
  end


  def jm_updateScreenButtonPaintable2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :AUTO_HIDE_SHOW_SCREEN_BUTTONS)]) do
            JR.call(this, :jm_setTouchPaintableP, [JR.call(this, :jm_getTouchButtonsPaintable, [])])
            JR.call(this, :jm_setStartLevel, [JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getCurrentLevel, [])])
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :SHOW_SCREEN_BUTTONS)]) do
            JR.call(this, :jm_setTouchPaintableP, [JR.call(this, :jm_getTouchButtonsPaintable, [])])
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :touchFeatureFactory), :HIDE_SCREEN_BUTTONS)]) do
            JR.call(this, :jm_setTouchPaintableP, [NullPaintable.jm_getInstance()])
        else
            JR.call(this, :jm_setTouchPaintableP, [NullPaintable.jm_getInstance()])
        end
        end
        end
    end)
  end


  def jm_getLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameLayerManager)})
    end)
  end


  def jm_setLayerManager(this, p_layerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
        JR.put(this, :gameLayerManager, JR.lget(f, :layerManager))
    end)
  end


  def jm_isGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameOver)})
    end)
  end


  def jm_setGameOver(this, p_gameOver) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOver, p_gameOver)
        JR.put(this, :gameOver, JR.lget(f, :gameOver))
    end)
  end


  def jm_processGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :gameStrings), :SET_GAME_OVER))
        JR.call(this, :jm_setGameOver, [true])
        JR.call(this, :jm_removePauseCommand, [])
        JR.call(this, :jm_setGameState, [JR.get(JR.get(this, :gameStateFactory), :SHOW_END_RESULT_GAME_STATE)])
        JR.call(this, :jm_setEndGamePaintable, [JR.call(this, :jm_getEndGameStatePaintable, [])])
    end)
  end


  def jm_isHighScoreSubmitted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highScoreSubmitted)})
    end)
  end


  def jm_setHighScoreSubmitted(this, p_highScoreSubmitted) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoreSubmitted, p_highScoreSubmitted)
        JR.put(this, :highScoreSubmitted, JR.lget(f, :highScoreSubmitted))
        if JR.lget(f, :highScoreSubmitted) do
            JR.call(JR.get(this, :highScoresHelper), :jm_setSelectedHighScores, [NullHighScoresSingletonFactory.jm_getInstance()])
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["isHighScoreSubmitted: "]), :jm_appendboolean, [JR.lget(f, :highScoreSubmitted)]), :jm_toString, []), this, "setHighScoreSubmitted"])
    end)
  end


  def jm_getGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameState)})
    end)
  end


  def jm_setGameState(this, p_gameState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameState, p_gameState)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameStrings), :GAME_STATE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :gameState)])]), :jm_toString, []), this, JR.get(JR.get(this, :gameStrings), :SET_GAME_STATE)])
        JR.put(this, :gameState, JR.lget(f, :gameState))
        JR.call(JR.get(this, :gameStateTimeHelper), :jm_setStartTimeTNT, [])
        JR.call(this, :jm_updateEndGameProcessor, [])
        JR.call(this, :jm_updateGameKeyEventProcessor, [])
        JR.call(JR.get(this, :gameBehavior), :jm_setGameState, [this])
    end)
  end


  def jm_updateGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
        JR.call(JR.lget(f, :gameAdState), :jm_processAdState, [JR.get(this, :gameState), JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getGameType, [])])
        if (JR.get(this, :gameState) != JR.get(JR.get(this, :gameStateFactory), :PLAYING_GAME_STATE)) do
            JR.call(JR.lget(f, :gameAdState), :jm_processPageAdState, [])
        end
    end)
  end


  def jm_updateGameKeyEventProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.call(this, :jm_getGameState, []) != JR.get(JR.get(this, :gameStateFactory), :PLAYING_GAME_STATE)) || JR.get(this, :isCheating)) do
            nil
        else
            nil
        end
    end)
  end


  def jm_removeAllGameKeyInputListenersOnBuild(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_removeAllGameKeyInputListeners, [])
    end)
  end


  def jm_removeAllGameKeyInputListeners(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameBehavior), :jm_removeAllGameKeyInputListeners, [this])
    end)
  end


  def jm_removeAllGameKeyInputListeners2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners"])
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :localPlayerGameInputList), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :playerGameInput, JR.call(JR.get(this, :localPlayerGameInputList), :jm_get, [JR.lget(f, :index)]))
            JR.call(this, :jm_removeKeyInputListener, [JR.lget(f, :playerGameInput)])
            JR.call(JR.lget(f, :playerGameInput), :jm_removeNonAIInputGameKeyEvents, [])
        end)
    end)
  end


  def jm_removeKeyInputListener(this, p_playerGameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerGameInput, p_playerGameInput)
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_removeListener, [JR.lget(f, :playerGameInput)])
    end)
  end


  def jm_updateEndGameProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameBehavior), :jm_updateEndGameProcessor, [this])
    end)
  end


  def jm_updateEndGameProcessor2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.call(this, :jm_getGameState, []) == JR.get(JR.get(this, :gameStateFactory), :SHOW_END_RESULT_GAME_STATE)) || (JR.call(this, :jm_getGameState, []) == JR.get(JR.get(this, :gameStateFactory), :SHOW_HIGH_SCORE_GAME_STATE))) do
            JR.call(this, :jm_setEndGameProcessor, [JR.get(this, :realEndGameProcessor)])
        else
            JR.call(this, :jm_setEndGameProcessor, [Processor.jm_getInstance()])
        end
    end)
  end


  def jm_buildGameInit(this, p_isPortion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isPortion, p_isPortion)
        nil
    end)
  end


  def jm_cleanupGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CLEANUP)])
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [10, "Cleaning Up"])
        JR.call(JR.get(this, :primaryPlayerQueue), :jm_clear, [])
        JR.call(JR.get(this, :secondaryPlayerQueue), :jm_clear, [])
        JR.call(GameLevelDisplayChangeEventListenersFactory.jm_getInstance(), :jm_clear, [])
    end)
  end


  def jm_loadResourceLoadingLevel(this, p_resourceLoadingLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resourceLoadingLevel, p_resourceLoadingLevel)
        JR.lset(f, :gameInitializedEvent, JR.get(GameInitializationUtil.jm_getInstance(), :EVENT))
        JR.call(JR.lget(f, :gameInitializedEvent), :jm_setResourceLoadingLevel, [JR.lget(f, :resourceLoadingLevel)])
        JR.call(GameInitializedEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameInitializedEvent)])
    end)
  end


  def jm_loadResources(this, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :level, p_level)
        JR.lset(f, :gameInitializedEvent, JR.get(GameInitializationUtil.jm_getInstance(), :EVENT))
        JR.call(JR.lget(f, :gameInitializedEvent), :jm_setLevel, [JR.lget(f, :level)])
        JR.call(GameInitializedEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameInitializedEvent)])
    end)
  end


  def jm_updateColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_buildGame(this, p_portion) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :portion, p_portion)
        JR.call(JR.get(this, :screenCapture), :jm_endRecording, [])
        JR.call(JR.get(this, :screenCapture), :jm_startRecording, [])
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.lset(f, :features, Features.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :portion), "Generic Build"])
        JR.call(this, :jm_removeAllGameKeyInputListenersOnBuild, [])
        JR.call(this, :jm_updateTouch, [])
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :portion), "High Scores"])
        JR.call(JR.get(this, :highScoresFactoryInterface), :jm_fetchHighScores, [JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), JR.get(this, :highScoresHelper)])
        JR.call(this, :jm_setHighScoresPaintable, [NullPaintable.jm_getInstance()])
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :portion), "Finishing."])
        JR.call(JR.call(this, :jm_getEndGameInfoP, []), :jm_update, [JR.call(JR.call(this, :jm_getLayerManager, []), :jm_getGameInfo, []), this])
        JR.put(this, :isSingleKeyRepeatableProcessing, JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(InputFeatureFactory.jm_getInstance(), :SINGLE_KEY_REPEAT_PRESS)]))
        JR.call(this, :jm_setGameOver, [false])
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :portion), "Finishing.."])
        JR.call(this, :jm_updateColor, [])
        JR.call(JR.call(this, :jm_getStartIntermissionPaintable, []), :jm_update, [])
        if !JR.call(this, :jm_isRunningInAnotherThread, []) do
            throw({:jreturn, nil})
        end
        JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [JR.lget(f, :portion), "Finishing..."])
        if (JR.call(this, :jm_isMainCanvas, []) || !JR.call(this, :jm_isInitialized, [])) do
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ONDEMAND)]) do
                if (JR.call(this, :jm_getCustomCommandListener, []) != nil) do
                    JR.call(JR.lget(f, :progressCanvas), :jm_end, [])
                end
            else
                JR.call(JR.lget(f, :progressCanvas), :jm_end, [])
            end
            JR.call(this, :jm_setInitialized, [true])
        end
        if (JR.call(this, :jm_getCustomCommandListener, []) == NullCommandListener.jstatic_NULL_COMMAND_LISTENER()) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Show Game Paintable in DemoCanvas Thread", this, JR.get(this, :BUILD_GAME)])
            JR.call(JR.get(this, :gameCanvasStartListener), :jm_showGamePaintable, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["No GameCanvasStartListener", this, JR.get(this, :BUILD_GAME)])
        end
        JR.call(JR.get(this, :colorFillPaintable), :jm_setBasicColorP, [JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, [])])
        JR.call(JR.get(this, :gameBehavior), :jm_buildGame, [this])
    end)
  end


  def jm_buildGame2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :ENABLE_PLAYER_GAME_INPUTS)]), :jm_appendint, [JR.call(JR.get(this, :localPlayerGameInputList), :jm_size, [])]), :jm_toString, []), this, JR.get(this, :BUILD_GAME))
        JR.lset(f, :playerGameInput, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :localPlayerGameInputList), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :playerGameInput, JR.call(JR.get(this, :localPlayerGameInputList), :jm_get, [JR.lget(f, :index)]))
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :ENABLE_PLAYER_GAME_INPUT)]), :jm_append, [JR.call(JR.lget(f, :playerGameInput), :jm_toString, [])]), :jm_toString, []), this, JR.get(this, :BUILD_GAME))
            JR.call(JR.lget(f, :playerGameInput), :jm_removeNonAIInputGameKeyEvents, [])
            JR.call(this, :jm_addKeyInputListener, [JR.lget(f, :playerGameInput)])
        end)
    end)
  end


  def jm_addKeyInputListener(this, p_playerGameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerGameInput, p_playerGameInput)
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_addListenerForPlayer, [JR.lget(f, :playerGameInput), JR.call(JR.lget(f, :playerGameInput), :jm_getPlayerInputId, [])])
    end)
  end


  def jm_setGameCanvasStartListener(this, p_gameCanvasStartListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvasStartListener, p_gameCanvasStartListener)
        JR.put(this, :gameCanvasStartListener, JR.lget(f, :gameCanvasStartListener))
    end)
  end


  def jm_loadState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :LOAD)])
        JR.lset(f, :hashtable, JR.call(this, :jm_getLoadStateHashtable, []))
        if ((JR.lget(f, :hashtable) != nil) && (JR.call(JR.lget(f, :hashtable), :jm_size, []) > 0)) do
            JR.lset(f, :levelAsString, JR.call(JR.lget(f, :hashtable), :jm_get, [GameInfo.jstatic_LEVEL_NAME()]))
            JR.lset(f, :level, JR.call(JR.str(JR.lget(f, :levelAsString)), :jm_intValue, []))
            JR.lset(f, :gameInfo, JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []))
            JR.call(JR.lget(f, :gameInfo), :jm_setCurrentLevel, [JR.lget(f, :level)])
        end
    end)
  end


  def jm_getLoadStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonLabels), :START_LABEL)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :hashtable)])]), :jm_toString, []), this, "getLoadStateHashtable"])
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end


  def jm_setLoadStateHashtable(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonLabels), :START_LABEL)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, "setLoadStateHashtable"])
        JR.put(this, :hashtable, JR.lget(f, :hashtable))
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :hashtable, JR.call(JR.get(this, :stdUtil), :jm_createHashtable, []))
        JR.lset(f, :level, JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getCurrentLevel, []))
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.call(GameInfo.jstatic_LEVEL_NAME(), :jm_toString, []), JR.str(JR.lget(f, :level))])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["End: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, "getCurrentStateHashtable"])
        throw({:jreturn, JR.lget(f, :hashtable)})
    end)
  end


  def jm_paintGameOver(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end


  def jm_draw(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, [])])
        JR.call(JR.get(this, :gameSpecificPaintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_clear(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :baseGameStatistics), :jm_nextRefresh, [])
        JR.call(this, :jm_draw, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :menuPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :progressPaintable), :jm_paint, [JR.lget(f, :graphics)])
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


  def jm_processEndLevelIntermissionGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_nonBotPaint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :endGamePaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :intermissionPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(this, :jm_paintIntermission, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :touchPaintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paintIntermission(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_keyPressed(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyPressedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyReleased(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyReleasedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyRepeated(this, p_keyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
        JR.call(this, :jm_keyRepeatedByDevice, [JR.lget(f, :keyCode), 0])
    end)
  end


  def jm_keyPressedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(JR.get(this, :inputProcessor), :jm_keyPressedByDevice, [JR.lget(f, :keyCode), JR.lget(f, :deviceId)])
    end)
  end


  def jm_keyRepeatedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        if JR.get(this, :isSingleKeyRepeatableProcessing) do
            JR.call(JR.get(this, :inputProcessor), :jm_keyPressedByDevice, [JR.lget(f, :keyCode), JR.lget(f, :deviceId)])
        end
    end)
  end


  def jm_keyReleasedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(JR.get(this, :inputProcessor), :jm_keyReleasedByDevice, [this, JR.lget(f, :keyCode), JR.lget(f, :deviceId)])
    end)
  end


  def jm_handleRawKey(this, p_keyCode, p_deviceId, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :repeated, p_repeated)
        nil
    end)
  end


  def jm_endProgress(this, p_isProgress) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isProgress, p_isProgress)
        JR.lset(f, :portion, 30)
        if (JR.lget(f, :isProgress) && JR.call(this, :jm_isMainCanvas, [])) do
            JR.lset(f, :myCommandsFactory, MyCommandsFactory.jm_getInstance())
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.call(JR.lget(f, :progressCanvas), :jm_start, [])
            JR.call(JR.call(this, :jm_getCustomCommandListener, []), :jm_commandAction, [JR.get(JR.lget(f, :myCommandsFactory), :SET_DISPLAYABLE), JR.lget(f, :progressCanvas)])
            JR.lset(f, :portion, 4)
        end
        throw({:jreturn, JR.lget(f, :portion)})
    end)
  end


  def jm_processPlayingGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :cheatProcessor), :jm_update, [])
        JR.call(JR.call(JR.get(this, :sensorGameUpdateProcessor), :jm_getInputSensor, []), :jm_update, [])
        JR.call(JR.get(this, :gameInputProcessor), :jm_process, [])
        JR.call(JR.get(this, :gameLayerManager), :jm_process, [])
        JR.call(JR.get(this, :startIntermissionProcessor), :jm_process, [])
    end)
  end


  def jm_threadInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_processGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        RunnableCanvas.jm_process(this)
        if AllBinaryMediaManager.jm_update() do
            if !JR.call(JR.get(this, :primaryPlayerQueue), :jm_process, []) do
                JR.call(JR.get(this, :secondaryPlayerQueue), :jm_process, [])
            end
        end
        JR.call(JR.get(this, :mainStateProcessor), :jm_process, [])
        JR.call(JR.get(this, :menuInputProcessor), :jm_processInputList, [])
        JR.call(JR.get(this, :endGameProcessor), :jm_process, [])
        JR.call(JR.get(this, :baseGameStatistics), :jm_nextFrame, [])
    end)
  end


  def jm_notifyDonePainting(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.call(JR.get(this, :threadObjectUtil), :jm_notifyObject, [this])
        )
    end)
  end


  def jm_shouldWait(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        if AndroidUtil.jm_isAndroid() do
            nil
        else
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_2D)]) do
            nil
        else
            if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL)]) do
                JR.lset(f, :openGLImageSpecificFactory, OpenGLImageSpecificFactory.jm_getInstance())
                JR.jwhile(fn -> JR.get(JR.lget(f, :openGLImageSpecificFactory), :updating) end, fn ->
                    J.Thread.jm_sleep(JR.get(this, :YIELD_SLEEP))
                end)
            end
        end
        end
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Game Thread"])
            JR.call(this, :jm_setCurrentThread, [])
            JR.call(this, :jm_setRunning, [true])
            if (JR.call(this, :jm_getCustomCommandListener, []) == NullCommandListener.jstatic_NULL_COMMAND_LISTENER()) do
                J.Thread.jm_sleep(JR.get(this, :YIELD_SLEEP))
            end
            JR.call(this, :jm_shouldWait, [])
            JR.call(this, :jm_threadInit, [])
            if (JR.call(this, :jm_getCustomCommandListener, []) == NullCommandListener.jstatic_NULL_COMMAND_LISTENER()) do
                J.Thread.jm_sleep(JR.get(this, :YIELD_SLEEP))
            end
            JR.call(this, :jm_open, [])
            JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
            JR.call(JR.lget(f, :gameAdState), :jm_init, [])
            JR.call(JR.lget(f, :gameAdState), :jm_setGameIsReady, [true])
            JR.call(JR.get(this, :gameBehavior), :jm_run, [this])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end


  def jm_run2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        if (JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD)]) || J2MEUtil.jm_isHTML()) do
            if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD)]) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD), :jm_getName, []), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            end
            if J2MEUtil.jm_isHTML() do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(GraphicsStrings.jm_getInstance(), :HTML), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            end
            JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
            JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setRunnable, [JR.get(this, :gameRunnable)])
            JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setDisplayable, [this])
            JR.call(OpenGLThreadUtil.jm_getInstance(), :jm_onResume, [])
        else
            if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS), :jm_getName, []), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.call(OpenGLThreadUtil.jm_getInstance(), :jm_onResume, [])
            JR.jwhile(fn -> JR.call(this, :jm_isRunning, []) end, fn ->
                JR.call(this, :jm_run3, [])
            end)
            JR.call(this, :jm_end, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["this thread", this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.jwhile(fn -> JR.call(this, :jm_isRunning, []) end, fn ->
                JR.call(this, :jm_run3, [])
            end)
            JR.call(this, :jm_end, [])
        end
        end
    end)
  end


  def jm_run3(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :loopTimeHelper), :jm_setStartTime, [JR.call(JR.get(this, :gameTickTimeDelayHelper), :jm_setStartTime, [])])
        JR.call(JR.get(this, :gameTickDisplayInfoSingleton), :jm_update, [])
        JR.call(this, :jm_processGame, [])
        JR.call(this, :jm_processLoopSleep, [])
    end)
  end


  def jm_setRunning(this, p_running) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :running, p_running)
        RunnableCanvas.jm_setRunning(this, JR.lget(f, :running))
        try do
            JR.lset(f, :features, Features.jm_getInstance())
            if JR.lget(f, :running) do
                nil
            else
                if (JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.get(this, :openGLFeatureFactory), :OPENGL)]) || SWTUtil.jstatic_isSWT()) do
                    if (JR.call(JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), :jm_getGameType, []) != JR.get(JR.get(this, :gameTypeFactory), :BOT)) do
                        JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
                        JR.call(JR.lget(f, :currentDisplayableFactory), :jm_clearRunnable, [])
                    end
                    JR.call(this, :jm_end, [])
                end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(this, :SET_RUNNING), JR.lget(f, :e)])
        end
    end)
  end


  def jm_end(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :screenCapture), :jm_endRecording, [])
        JR.call(JR.get(this, :baseGameStatistics), :jm_add, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.call(JR.get(this, :baseGameStatistics), :jm_toString, [])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)]), :jm_toString, [])])
        JR.call(JR.get(this, :baseGameStatistics), :jm_init, [])
        JR.call(JR.get(this, :gameKeyEventHandler), :jm_removeListener, [JR.get(this, :cheatProcessor)])
        JR.call(this, :jm_close, [])
        JR.call(this, :jm_removeAllGameKeyInputListeners, [])
        JR.call(this, :jm_endGameThread, [])
    end)
  end


  def jm_endGameThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_removeListener, [this])
        JR.call(GameLevelDisplayChangeEventListenersFactory.jm_getInstance(), :jm_clear, [])
        JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
        JR.call(JR.lget(f, :gameAdState), :jm_notPlayingAdState, [])
    end)
  end


  def jm_createHighScore(this, p_score) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :score, p_score)
        JR.lset(f, :gameInfo, JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []))
        throw({:jreturn, HighScore.jnew(0, "NONE", GameInfo.jnew(JR.call(JR.lget(f, :gameInfo), :jm_getGameType, []), JR.call(JR.lget(f, :gameInfo), :jm_getGameMode, []), JR.get(PlayerTypesFactory.jm_getInstance(), :PLAYER_TYPE_ONE), 0, 0), JR.lget(f, :score))})
    end)
  end


  def jm_setHighScore(this, p_abeClientInformation, p_name, p_score, p_autoSubmit, p_isLast) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :name, p_name)
      JR.lset(f, :score, p_score)
      JR.lset(f, :autoSubmit, p_autoSubmit)
      JR.lset(f, :isLast, p_isLast)
        JR.call(JR.get(this, :gameBehavior), :jm_setHighScore, [JR.lget(f, :abeClientInformation), this, JR.lget(f, :name), JR.lget(f, :score), JR.lget(f, :autoSubmit), JR.lget(f, :isLast)])
    end)
  end


  def jm_setHighScore2(this, p_abeClientInformation, p_name, p_score, p_autoSubmit, p_isLast) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :name, p_name)
      JR.lset(f, :score, p_score)
      JR.lset(f, :autoSubmit, p_autoSubmit)
      JR.lset(f, :isLast, p_isLast)
        JR.lset(f, :highScore, JR.call(this, :jm_createHighScore, [JR.lget(f, :score)]))
        JR.lset(f, :textBox, HighScoreTextBox.jnew(JR.get(this, :highScoresFactoryInterface), JR.get(this, :highScoresHelper), JR.lget(f, :abeClientInformation), JR.call(JR.get(this, :gameLayerManager), :jm_getGameInfo, []), JR.call(this, :jm_getCustomCommandListener, []), JR.lget(f, :name), JR.lget(f, :highScore), JR.call(JR.get(this, :gameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.get(this, :gameLayerManager), :jm_getForegroundBasicColor, [])))
        if JR.lget(f, :isLast) do
            JR.call(JR.call(this, :jm_getCustomCommandListener, []), :jm_commandAction, [JR.get(GameCommandsFactory.jm_getInstance(), :SET_MENU_DISPLAYABLE), JR.lget(f, :textBox)])
        end
        if JR.lget(f, :autoSubmit) do
            JR.call(SecondaryThreadPool.jm_getInstance(), :jm_runTask, [SaveHighScoreRunnable.jnew(JR.lget(f, :isLast), JR.lget(f, :textBox))])
        end
    end)
  end


  def jm_getGameStateTimeHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameStateTimeHelper)})
    end)
  end


  def jm_setInitialized(this, p_initialized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initialized, p_initialized)
        JR.put(this, :initialized, JR.lget(f, :initialized))
    end)
  end


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initialized)})
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinaryGameCanvas.jstatic_id()})
    end)
  end


  def jm_setProgressPaintable(this, p_paintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :paintable, p_paintable)
        JR.put(this, :progressPaintable, JR.lget(f, :paintable))
    end)
  end


  def jm_getStartIntermissionInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startIntermissionInterface)})
    end)
  end


  def jm_getEndLevelIntermissionInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :endLevelIntermissionInterface)})
    end)
  end


  def jm_setTouchPaintableP(this, p_paintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :paintable, p_paintable)
        JR.put(this, :touchPaintable, JR.lget(f, :paintable))
    end)
  end


  def jm_getTouchPaintableP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :touchPaintable)})
    end)
  end


  def jm_setEndGamePaintable(this, p_endGamePaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :endGamePaintable, p_endGamePaintable)
        JR.put(this, :endGamePaintable, JR.lget(f, :endGamePaintable))
    end)
  end


  def jm_getEndGamePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :endGamePaintable)})
    end)
  end


  def jm_setIntermissionPaintable(this, p_intermissionPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :intermissionPaintable, p_intermissionPaintable)
        JR.put(this, :intermissionPaintable, JR.lget(f, :intermissionPaintable))
    end)
  end


  def jm_getIntermissionPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :intermissionPaintable)})
    end)
  end


  def jm_getEndGameInfoP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :endGameInfo)})
    end)
  end


  def jm_setHighScoresPaintable(this, p_highScoresPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresPaintable, p_highScoresPaintable)
        JR.put(this, :highScoresPaintable, JR.lget(f, :highScoresPaintable))
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


  def jm_getRealHighScoresPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :realHighScoresPaintable)})
    end)
  end


  def jm_clearPlayerGameInputList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :playerGameInput, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.get(this, :localPlayerGameInputList), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :playerGameInput, JR.call(JR.get(this, :localPlayerGameInputList), :jm_get, [JR.lget(f, :index)]))
            JR.call(JR.get(this, :gameKeyEventHandler), :jm_removeListener, [JR.lget(f, :playerGameInput)])
        end)
        JR.call(JR.get(this, :localPlayerGameInputList), :jm_clear, [])
    end)
  end


  def jm_addPlayerGameInput(this, p_playerGameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :playerGameInput, p_playerGameInput)
        JR.call(JR.get(this, :localPlayerGameInputList), :jm_add, [JR.lget(f, :playerGameInput)])
    end)
  end


  def jm_setMenuInputProcessor(this, p_menuInputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :menuInputProcessor, p_menuInputProcessor)
        JR.put(this, :menuInputProcessor, JR.lget(f, :menuInputProcessor))
    end)
  end


  def jm_getMenuInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :menuInputProcessor)})
    end)
  end


  def jm_getMenuForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :menuForm)})
    end)
  end


  def jm_setMenuForm(this, p_menuForm) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :menuForm, p_menuForm)
        JR.put(this, :menuForm, JR.lget(f, :menuForm))
    end)
  end


  def jm_getStartLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startLevel)})
    end)
  end


  def jm_setStartLevel(this, p_startLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startLevel, p_startLevel)
        JR.put(this, :startLevel, JR.lget(f, :startLevel))
    end)
  end


  def jm_setTouchButtonsPaintable(this, p_touchButtonsPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonsPaintable, p_touchButtonsPaintable)
        JR.put(this, :touchButtonsPaintable, JR.lget(f, :touchButtonsPaintable))
    end)
  end


  def jm_getTouchButtonsPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :touchButtonsPaintable)})
    end)
  end


  def jm_setGameInputProcessor(this, p_gameInputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInputProcessor, p_gameInputProcessor)
        JR.put(this, :gameInputProcessor, JR.lget(f, :gameInputProcessor))
    end)
  end


  def jm_getGameInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInputProcessor)})
    end)
  end


  def jm_setEndGameProcessor(this, p_endGameProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :endGameProcessor, p_endGameProcessor)
        JR.put(this, :endGameProcessor, JR.lget(f, :endGameProcessor))
    end)
  end


  def jm_getEndGameProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :endGameProcessor)})
    end)
  end


  def jm_setEndGameStatePaintable(this, p_endGameStatePaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :endGameStatePaintable, p_endGameStatePaintable)
        JR.put(this, :endGameStatePaintable, JR.lget(f, :endGameStatePaintable))
    end)
  end


  def jm_getEndGameStatePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :endGameStatePaintable)})
    end)
  end


  def jm_setNonBotPaintableP(this, p_nonBotPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :nonBotPaintable, p_nonBotPaintable)
        JR.put(this, :nonBotPaintable, JR.lget(f, :nonBotPaintable))
    end)
  end


  def jm_getNonBotPaintableP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :nonBotPaintable)})
    end)
  end


  def jm_setStartIntermissionPaintable(this, p_startIntermissionPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :startIntermissionPaintable, p_startIntermissionPaintable)
        JR.put(this, :startIntermissionPaintable, JR.lget(f, :startIntermissionPaintable))
    end)
  end


  def jm_getStartIntermissionPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :startIntermissionPaintable)})
    end)
  end


  def jm_setMainStateProcessor(this, p_mainStateProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mainStateProcessor, p_mainStateProcessor)
        JR.put(this, :mainStateProcessor, JR.lget(f, :mainStateProcessor))
    end)
  end


  def jm_getMainStateProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :mainStateProcessor)})
    end)
  end


  def jm_setProcessGameProcessor(this, p_processGameProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :processGameProcessor, p_processGameProcessor)
        JR.put(this, :processGameProcessor, JR.lget(f, :processGameProcessor))
    end)
  end


  def jm_getProcessGameProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :processGameProcessor)})
    end)
  end


  def jm_setOpenMenuPaintable(this, p_openMenuPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :openMenuPaintable, p_openMenuPaintable)
        JR.put(this, :openMenuPaintable, JR.lget(f, :openMenuPaintable))
    end)
  end


  def jm_getOpenMenuPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :openMenuPaintable)})
    end)
  end


  def jm_setPopupMenuInputProcessor(this, p_popupMenuInputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :popupMenuInputProcessor, p_popupMenuInputProcessor)
        JR.put(this, :popupMenuInputProcessor, JR.lget(f, :popupMenuInputProcessor))
    end)
  end


  def jm_getPopupMenuInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :popupMenuInputProcessor)})
    end)
  end


  def jm_getSensorGameUpdateProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sensorGameUpdateProcessor)})
    end)
  end


  def jm_getRawGameInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rawGameInputProcessor)})
    end)
  end


  def jm_getRawInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rawInputProcessor)})
    end)
  end


  def jm_setInputProcessor(this, p_inputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputProcessor, p_inputProcessor)
        JR.put(this, :inputProcessor, JR.lget(f, :inputProcessor))
    end)
  end


  def jm_getInputProcessor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :inputProcessor)})
    end)
  end


  def jm_setMenuPaintable(this, p_menuPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :menuPaintable, p_menuPaintable)
        JR.put(this, :menuPaintable, JR.lget(f, :menuPaintable))
    end)
  end


  def jm_getMenuPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :menuPaintable)})
    end)
  end


  def jm_setFormPaintable(this, p_formPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :formPaintable, p_formPaintable)
        JR.put(this, :formPaintable, JR.lget(f, :formPaintable))
    end)
  end


  def jm_getFormPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :formPaintable)})
    end)
  end


  def jm_setGameSpecificPaintableP(this, p_gameSpecificPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameSpecificPaintable, p_gameSpecificPaintable)
        JR.put(this, :gameSpecificPaintable, JR.lget(f, :gameSpecificPaintable))
    end)
  end


  def jm_getGameSpecificPaintableP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameSpecificPaintable)})
    end)
  end


  def jm_isSingleThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(OpenGLFeatureUtil.jm_getInstance(), :jm_isAnyThreed, []) || SWTUtil.jstatic_isSWT())})
    end)
  end


  def jm_isRunningInAnotherThread(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD)]) do
            throw({:jreturn, true})
        else
            throw({:jreturn, JR.call(this, :jm_isRunning, [])})
        end
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinaryGameCanvas.jstatic_TYPE()})
    end)
  end


  def jm_getTitle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, RunnableCanvas.jm_getTitle(this)})
    end)
  end


  def jm_isPaused(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, RunnableCanvas.jm_isPaused(this)})
    end)
  end
end


