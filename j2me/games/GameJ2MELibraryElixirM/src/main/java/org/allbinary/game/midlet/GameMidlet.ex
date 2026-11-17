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
# package org.allbinary.game.midlet

defmodule GameMidlet do
  def jsuper(), do: ProgressMidlet

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :enumerationUtil, nil)
    JR.put(this, :basicColorFactory, nil)
    JR.put(this, :features, nil)
    JR.put(this, :midletStrings, nil)
    JR.put(this, :myCommandsFactory, nil)
    JR.put(this, :gameStrings, nil)
    JR.put(this, :gameAdStateFactory, nil)
    JR.put(this, :gameStateFactory, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :DISPLAYABLE, nil)
    JR.put(this, :COMMAND_NAME, nil)
    JR.put(this, :NO_COMMAND, nil)
    JR.put(this, :NO_DISPLAYABLE, nil)
    JR.put(this, :COMMAND_ACTION, nil)
    JR.put(this, :PAUSE_APP_BACKGROUND, nil)
    JR.put(this, :UN_PAUSE_APP_BACKGROUND, nil)
    JR.put(this, :aboutCommandProcessor, nil)
    JR.put(this, :webCommandProcessor, nil)
    JR.put(this, :gameMidletStateFactory, nil)
    JR.put(this, :gameStartTimeHelper, nil)
    JR.put(this, :fullScreenUtil, nil)
    JR.put(this, :debugInterface, nil)
    JR.put(this, :allbinaryGameCanvasRunnableInterface, nil)
    JR.put(this, :thread, nil)
    JR.put(this, :loadGameForm, nil)
    JR.put(this, :isFullScreen, false)
    JR.put(this, :resized, false)
    JR.put(this, :startedBefore, false)
        JR.put(this, :enumerationUtil, EnumerationUtil.jm_getInstance())
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.put(this, :features, Features.jm_getInstance())
        JR.put(this, :midletStrings, MidletStrings.jm_getInstance())
        JR.put(this, :myCommandsFactory, MyCommandsFactory.jm_getInstance())
        JR.put(this, :gameStrings, GameStrings.jm_getInstance())
        JR.put(this, :gameAdStateFactory, GameAdStateFactory.jm_getInstance())
        JR.put(this, :gameStateFactory, GameStateFactory.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :DISPLAYABLE, " Displayable: ")
        JR.put(this, :COMMAND_NAME, "command Name/Label: ")
        JR.put(this, :NO_COMMAND, "No Command")
        JR.put(this, :NO_DISPLAYABLE, "No Displayable")
        JR.put(this, :COMMAND_ACTION, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["GameMidlet::"]), :jm_append, [JR.get(JR.get(this, :midletStrings), :COMMAND_ACTION)]), :jm_toString, []))
        JR.put(this, :PAUSE_APP_BACKGROUND, "pauseAppBackground")
        JR.put(this, :UN_PAUSE_APP_BACKGROUND, "unPauseAppBackground")
        JR.put(this, :aboutCommandProcessor, AboutCommandProcessor.jm_getInstance())
        JR.put(this, :webCommandProcessor, WebCommandProcessor.jm_getInstance())
        JR.put(this, :gameMidletStateFactory, GameMidletStateFactory.jm_getInstance())
        JR.put(this, :gameStartTimeHelper, TimeDelayHelper.jnew(240))
        JR.put(this, :fullScreenUtil, FullScreenUtil.jm_getInstance())
        
        JR.put(this, :allbinaryGameCanvasRunnableInterface, NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE())
        JR.put(this, :thread, NullThread.jstatic_NULL_THREAD())
        
        JR.put(this, :isFullScreen, false)
        JR.put(this, :resized, false)
        JR.put(this, :startedBefore, false)
    nil
  end


  def jinit(this, p_clientInformationFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :clientInformationFactory, p_clientInformationFactory)
        ProgressMidlet.jinit(this, JR.lget(f, :clientInformationFactory))
        GameMidlet.jinitfields(this)
        JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_initWithRange, [0x291, 6])
        JR.put(this, :loadGameForm, CommandForm.jm_getNullCommandForm())
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_init, [this])
        JR.call(GameFeatureEventHandler.jm_getInstance(), :jm_addListenerInterface, [ChangedGameFeatureListener.jm_getInstance()])
        JR.call(GamePersistanceSingleton.jm_getInstance(), :jm_clear, [])
        JR.put(this, :debugInterface, DebugFactory.jm_getInstance())
        JR.call(this, :jm_init, [])
    end)
  end

  def jnew(p_clientInformationFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_clientInformationFactory)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setDemo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_createGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_mediaShutdown(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_stopAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_pauseApp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_pauseAppBackground, [true])
        JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
        JR.call(JR.call(JR.lget(f, :gameAdState), :jm_getAdvertisements, []), :jm_stopAll, [])
    end)
  end


  def jm_pauseAppBackground(this, p_background) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :background, p_background)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(this, :PAUSE_APP_BACKGROUND)])
        if (JR.get(this, :allbinaryGameCanvasRunnableInterface) != NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()) do
            JR.call(JR.get(this, :allbinaryGameCanvasRunnableInterface), :jm_pause, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["<<<<<< Null", this, JR.get(this, :PAUSE_APP_BACKGROUND)])
        end
        JR.call(AllBinarySensorManager.jm_getInstance(), :jm_shutdown, [])
    end)
  end


  def jm_unPauseApp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_unPauseAppBackground, [true])
        JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
        JR.call(JR.call(JR.lget(f, :gameAdState), :jm_getAdvertisements, []), :jm_startAll, [])
    end)
  end


  def jm_unPauseAppBackground(this, p_background) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :background, p_background)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(this, :UN_PAUSE_APP_BACKGROUND)])
        JR.call(AllBinarySensorManager.jm_getInstance(), :jm_init, [])
        JR.lset(f, :gameCanvasRunnableInterface, JR.get(this, :allbinaryGameCanvasRunnableInterface))
        if (JR.lget(f, :gameCanvasRunnableInterface) != NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()) do
            JR.call(JR.lget(f, :gameCanvasRunnableInterface), :jm_unPause, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["<<<<<< Null", this, JR.get(this, :UN_PAUSE_APP_BACKGROUND)])
        end
    end)
  end


  def jm_destroyAppInRunnable(this, p_unconditional, p_isProgress) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unconditional, p_unconditional)
      JR.lset(f, :isProgress, p_isProgress)
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        if JR.lget(f, :isProgress) do
            JR.call(JR.lget(f, :progressCanvas), :jm_start, [])
            JR.call(this, :jm_commandAction, [JR.get(JR.get(this, :myCommandsFactory), :SET_DISPLAYABLE), JR.lget(f, :progressCanvas)])
        end
        JR.call(this, :jm_destroyApp, [JR.lget(f, :unconditional)])
        if JR.lget(f, :isProgress) do
            JR.call(JR.lget(f, :progressCanvas), :jm_end, [])
        end
    end)
  end


  def jm_destroyApp(this, p_unconditional) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unconditional, p_unconditional)
        JR.lset(f, :METHOD_NAME, "GameMidlet::destroyApp")
        try do
            PreLogUtil.jm_put(JR.call(GameStatisticsFactory.jm_getInstance(), :jm_toString, []), this, JR.lget(f, :METHOD_NAME))
            JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
            JR.call(JR.call(JR.lget(f, :gameAdState), :jm_getAdvertisements, []), :jm_stopAll, [])
            if !JR.call(this, :jm_isDestroyed, []) do
                JR.call(this, :jm_stopGameCanvasRunnableInterface, [])
                JR.call(this, :jm_setGameCanvasRunnableInterface, [NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()])
                JR.call(this, :jm_mediaShutdown, [])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, ["Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, JR.lget(f, :METHOD_NAME)])
            end
            ProgressMidlet.jm_destroyApp(this, true)
            PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :END), this, JR.lget(f, :METHOD_NAME))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.lget(f, :METHOD_NAME), JR.lget(f, :e)])
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END), this, JR.lget(f, :METHOD_NAME)])
    end)
  end


  def jm_startApp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
            JR.call(JR.call(JR.lget(f, :gameAdState), :jm_getAdvertisements, []), :jm_startAll, [])
            JR.lset(f, :START_APP, "startApp")
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.lget(f, :START_APP)])
            JR.lset(f, :gameCanvasRunnableInterface, JR.get(this, :allbinaryGameCanvasRunnableInterface))
            if (JR.lget(f, :gameCanvasRunnableInterface) == NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()) do
                JR.call(JR.get(this, :gameMidletStateFactory), :jm_setCurrentGameState, [JR.get(JR.get(this, :gameStateFactory), :NO_GAME_STATE)])
                JR.call(this, :jm_setDemo, [])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, ["GameCanvasRunnableInterface is available", this, JR.lget(f, :START_APP)])
                if (JR.lget(f, :gameCanvasRunnableInterface) == JR.call(this, :jm_getCurrentDisplayable, [])) do
                    JR.call(this, :jm_unPauseAppBackground, [false])
                else
                    JR.call(JR.get(this, :logUtil), :jm_putF, ["GameCanvasRunnableInterface is not current displayable", this, JR.lget(f, :START_APP)])
                end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "startApp", JR.lget(f, :e)])
            JR.call(this, :jm_destroyApp, [false])
            JR.call(this, :jm_notifyDestroyed, [])
        end
    end)
  end


  def jm_commandAction(this, p_command, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
      JR.lset(f, :displayable, p_displayable)
        try do
            JR.lset(f, :displayableAsString, JR.get(this, :NO_DISPLAYABLE))
            if (JR.lget(f, :displayable) != nil) do
                JR.lset(f, :displayableAsString, JR.call(JR.lget(f, :displayable), :jm_toString, []))
            end
            JR.lset(f, :label, JR.get(this, :NO_COMMAND))
            if (JR.lget(f, :command) != nil) do
                JR.lset(f, :label, JR.call(JR.lget(f, :command), :jm_getLabel, []))
            end
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :COMMAND_NAME)]), :jm_append, [JR.lget(f, :label)]), :jm_append, [JR.get(this, :DISPLAYABLE)]), :jm_append, [JR.lget(f, :displayableAsString)]), :jm_toString, []), this, JR.get(this, :COMMAND_ACTION))
            JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
            JR.lset(f, :allbinaryGameCanvasRunnableInterface, JR.get(this, :allbinaryGameCanvasRunnableInterface))
            JR.lset(f, :gameCanvasRunnableInterface, JR.lget(f, :allbinaryGameCanvasRunnableInterface))
            if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :SHOW_GAME_CANVAS)) do
                if ((JR.call(JR.call(this, :jm_getDisplay, []), :jm_getCurrent, []) != JR.lget(f, :gameCanvasRunnableInterface)) && (JR.call(JR.lget(f, :allbinaryGameCanvasRunnableInterface), :jm_getType, []) != JR.call(NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE(), :jm_getType, []))) do
                    JR.call(this, :jm_setDisplay, [JR.lget(f, :gameCanvasRunnableInterface)])
                end
                JR.call(this, :jm_unPauseAppBackground, [false])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS)) do
                JR.lset(f, :menuListener, JR.lget(f, :displayable))
                JR.call(JR.lget(f, :menuListener), :jm_close, [])
                JR.call(this, :jm_setDisplay, [JR.lget(f, :gameCanvasRunnableInterface)])
                JR.call(this, :jm_unPauseAppBackground, [false])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :EXIT_COMMAND)) do
                if (JR.call(JR.call(GameMidletEventHandler.jm_getInstance(), :jm_getEventListenerInterfaceListP, []), :jm_size, []) == 0) do
                    JR.call(this, :jm_exitProgress, [true])
                end
                JR.call(GameMidletEventHandler.jm_getInstance(), :jm_fireEvent, [DemoGameMidletEvent.jnew(this, JR.get(DemoGameMidletStateFactory.jm_getInstance(), :NONE))])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :EXIT_WITHOUT_PROGRESS_COMMAND)) do
                JR.call(this, :jm_exitProgress, [false])
            else
                if (((JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :START_COMMAND)) || (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :RESTART_COMMAND))) || (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :CONTINUE_COMMAND))) do
                if ((JR.call(JR.get(this, :gameMidletStateFactory), :jm_getCurrentGameState, []) != JR.get(JR.get(this, :gameStateFactory), :PLAYING_GAME_STATE)) || (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :RESTART_COMMAND))) do
                    if JR.call(JR.get(this, :gameStartTimeHelper), :jm_isTimeTNT, []) do
                        if ((JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :START_COMMAND)) && JR.call(this, :jm_isDemoLoading, [])) do
                            JR.call(JR.get(this, :logUtil), :jm_putF, ["Trying to Start Game Before Loading Complete", this, JR.get(JR.get(this, :midletStrings), :COMMAND_ACTION)])
                        else
                            JR.put(this, :startedBefore, true)
                            JR.call(this, :jm_createGame, [])
                            JR.call(JR.get(this, :gameMidletStateFactory), :jm_setCurrentGameState, [JR.get(JR.get(this, :gameStateFactory), :PLAYING_GAME_STATE)])
                        end
                    else
                        JR.call(JR.get(this, :logUtil), :jm_putF, ["Starting Game Too Often", this, JR.get(JR.get(this, :midletStrings), :COMMAND_ACTION)])
                    end
                else
                    JR.call(JR.get(this, :logUtil), :jm_putF, ["Already in playing state", this, JR.get(this, :COMMAND_ACTION)])
                end
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :BUY_COMMAND)) do
                JR.lset(f, :inApplicationPurchaseFactory, InApplicationPurchaseFactory.jm_getInstance())
                JR.lset(f, :list, JR.call(LockableFeatureFactory.jm_getInstance(), :jm_getList, []))
                JR.lset(f, :lockableFeature, JR.call(JR.lget(f, :list), :jm_get, [0]))
                if ((JR.call(JR.lget(f, :list), :jm_size, []) > 0) && !JR.call(JR.lget(f, :inApplicationPurchaseFactory), :jm_isPurchased, [JR.lget(f, :lockableFeature)])) do
                    JR.call(JR.lget(f, :inApplicationPurchaseFactory), :jm_purchase, [JR.lget(f, :lockableFeature)])
                else
                    JR.call(TextNotificationUtil.jm_getInstance(), :jm_fireSuccess, ["Already Purchased"])
                end
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :QUIT_COMMAND)) do
                if JR.call(JR.get(this, :gameStartTimeHelper), :jm_isTimeTNT, []) do
                    if JR.instance_of(JR.lget(f, :displayable), HighScoreTextBox) do
                        JR.lset(f, :menuListener, JR.lget(f, :displayable))
                        JR.call(JR.lget(f, :menuListener), :jm_close, [])
                    end
                    JR.call(this, :jm_stopGameCanvasRunnableInterface, [])
                    JR.call(JR.get(this, :gameMidletStateFactory), :jm_setCurrentGameState, [JR.get(JR.get(this, :gameStateFactory), :NO_GAME_STATE)])
                    JR.call(this, :jm_setDemo, [])
                end
            else
                if (JR.lget(f, :command) == JR.get(JR.get(this, :myCommandsFactory), :RESUME_COMMAND)) do
                JR.call(this, :jm_unPauseAppBackground, [false])
            else
                if (JR.lget(f, :command) == JR.get(JR.get(this, :myCommandsFactory), :PAUSE_COMMAND)) do
                JR.call(this, :jm_pauseAppBackground, [false])
            else
                if (JR.lget(f, :command) == JR.get(JR.get(this, :myCommandsFactory), :SET_DISPLAYABLE)) do
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.call(this, :jm_setDisplay, [JR.lget(f, :displayable)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE)) do
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.lset(f, :menuListener, JR.lget(f, :displayable))
                JR.call(JR.lget(f, :menuListener), :jm_open, [])
                JR.call(this, :jm_setDisplay, [JR.lget(f, :displayable)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :START_TRACE)) do
                JR.call(JR.get(this, :debugInterface), :jm_start, [])
                JR.lset(f, :gameCanvas, JR.lget(f, :allbinaryGameCanvasRunnableInterface))
                JR.call(JR.lget(f, :gameCanvas), :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :STOP_TRACE)])
                JR.call(JR.lget(f, :gameCanvas), :jm_removeCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :START_TRACE)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :STOP_TRACE)) do
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.call(JR.get(this, :debugInterface), :jm_stop, [])
                JR.call(this, :jm_unPauseAppBackground, [false])
                JR.lset(f, :gameCanvas, JR.lget(f, :allbinaryGameCanvasRunnableInterface))
                JR.call(JR.lget(f, :gameCanvas), :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :START_TRACE)])
                JR.call(JR.lget(f, :gameCanvas), :jm_removeCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :STOP_TRACE)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :DEFAULT_OPTIONS)) do
                JR.lset(f, :tempDisplayable, JR.lget(f, :displayable))
                if JR.instance_of(JR.lget(f, :tempDisplayable), GameOptionsForm) do
                    JR.call(GameFeatureFormUtil.jm_getInstance(), :jm_setDefault, [JR.lget(f, :tempDisplayable)])
                end
            else
                if (JR.lget(f, :command) == GameInputMappingInstructionsCanvas.jstatic_DISPLAY()) do
                JR.lset(f, :tempDisplayable, JR.lget(f, :displayable))
                if JR.instance_of(JR.lget(f, :tempDisplayable), GameInputMappingCanvas) do
                    JR.lset(f, :gameInputMappingCanvas, JR.lget(f, :tempDisplayable))
                    JR.call(JR.lget(f, :gameInputMappingCanvas), :jm_update, [])
                end
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_getInputMappingInstructionsCanvas, [])])
            else
                if JR.call(HighScoreCommandsFactory.jm_getInstance(), :jm_isHighScoreCommand, [JR.lget(f, :command)]) do
                JR.lset(f, :tempDisplayable, JR.lget(f, :displayable))
                if JR.instance_of(JR.lget(f, :tempDisplayable), HighScoresCanvas) do
                    JR.lset(f, :highScoresCanvas, JR.lget(f, :tempDisplayable))
                    JR.call(JR.lget(f, :highScoresCanvas), :jm_updateCommand, [JR.lget(f, :command)])
                end
            else
                if (JR.lget(f, :command) == JR.get(HighScoreCommands.jm_getInstance(), :DISPLAY)) do
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_createHighScoresCanvas, [])])
            else
                if (JR.lget(f, :command) == GameInputMappingInstructionsCanvas.jstatic_CLOSE()) do
                JR.lset(f, :menuListener, JR.lget(f, :displayable))
                JR.call(JR.lget(f, :menuListener), :jm_close, [])
                JR.call(this, :jm_commandAction, [GameInputMappingCanvas.jstatic_DISPLAY(), NullCanvas.jstatic_NULL_CANVAS()])
            else
                if (JR.lget(f, :command) == GameInputMappingCanvas.jstatic_DISPLAY()) do
                if J2MEUtil.jm_isHTML() do
                    JR.call(this, :jm_pauseAppBackground, [false])
                end
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_getInputMappingCanvas, [])])
            else
                if (JR.lget(f, :command) == GameInputMappingCanvas.jstatic_DEFAULT()) do
                JR.lset(f, :tempDisplayable, JR.lget(f, :displayable))
                if JR.instance_of(JR.lget(f, :tempDisplayable), GameInputMappingCanvas) do
                    JR.lset(f, :gameInputMappingCanvas, JR.lget(f, :tempDisplayable))
                    JR.call(JR.lget(f, :gameInputMappingCanvas), :jm_setDefault, [])
                end
            else
                if (JR.lget(f, :command) == InGameOptionsForm.jstatic_DISPLAY()) do
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
                JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "In Game Options"])
                JR.lset(f, :layerManager, JR.call(this, :jm_createGameLayerManager, []))
                JR.lset(f, :inGameOptionsFormFactory, InGameOptionsFormFactory.jm_getInstance())
                JR.call(JR.lget(f, :inGameOptionsFormFactory), :jm_init, [this, InGameFeatures.jnew(), "Options In Game", JR.call(JR.lget(f, :layerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :layerManager), :jm_getForegroundBasicColor, [])])
                JR.lset(f, :inGameOptionsForm, JR.call(JR.lget(f, :inGameOptionsFormFactory), :jm_get, []))
                JR.call(JR.lget(f, :inGameOptionsForm), :jm_setItemStateListener, [JR.lget(f, :allbinaryGameCanvasRunnableInterface)])
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.lget(f, :inGameOptionsForm)])
            else
                if (JR.lget(f, :command) == InGameOptionsForm.jstatic_DEFAULT()) do
                JR.lset(f, :inGameOptionsForm, JR.call(InGameOptionsFormFactory.jm_getInstance(), :jm_get, []))
                JR.call(GameFeatureFormUtil.jm_getInstance(), :jm_setDefault, [JR.lget(f, :inGameOptionsForm)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_OPTIONS)) do
                AllBinaryMediaManager.jm_setMuted(true)
                JR.call(this, :jm_stopAll, [])
                JR.lset(f, :mainFeatureFactory, MainFeatureFactory.jm_getInstance())
                JR.put(this, :isFullScreen, JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)]))
                JR.call(ResizableListenerHandler.jm_getInstance(), :jm_fireEvent, [true])
                JR.call(this, :jm_setResized, [false])
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_getGameOptionsForm, [])])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_OPTIONS)) do
                JR.call(ResizableListenerHandler.jm_getInstance(), :jm_fireEvent, [false])
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS), JR.lget(f, :displayable)])
                JR.lset(f, :stringBuffer, StringMaker.jnew())
                JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Close isFullScreen/change: "])
                JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.get(this, :isFullScreen)])
                JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(JR.get(this, :fullScreenUtil), :jm_isScreenChange, [JR.get(this, :isFullScreen)])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [" isResized: "])
                JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isResized, [])])
                PreLogUtil.jm_put(JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(this, :COMMAND_ACTION))
                if (JR.call(this, :jm_isResized, []) || JR.call(JR.get(this, :fullScreenUtil), :jm_isScreenChange, [JR.get(this, :isFullScreen)])) do
                    JR.call(this, :jm_updateFullScreen, [])
                end
                AllBinaryMediaManager.jm_setMuted(false)
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_LOAD_FORM)) do
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.lset(f, :keyValuePersistance, GamePersistanceSingleton.jm_getInstance())
                JR.call(JR.lget(f, :keyValuePersistance), :jm_clear, [])
                JR.call(JR.lget(f, :keyValuePersistance), :jm_loadAll, [JR.get(this, :abeClientInformation)])
                if (JR.call(this, :jm_getLoadGameForm, []) == CommandForm.jm_getNullCommandForm()) do
                    JR.lset(f, :layerManager, JR.call(this, :jm_createGameLayerManager, []))
                    JR.call(this, :jm_setLoadGameForm, [LoadGameForm.jnew(this, "Load Game", JR.call(JR.lget(f, :layerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :layerManager), :jm_getForegroundBasicColor, []))])
                else
                    JR.call(JR.call(this, :jm_getLoadGameForm, []), :jm_update, [])
                end
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_getLoadGameForm, [])])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :LOAD_FILE)) do
                JR.lset(f, :loadGameForm, JR.call(this, :jm_getLoadGameForm, []))
                JR.lset(f, :index, JR.call(JR.lget(f, :loadGameForm), :jm_getSelectedId, []))
                if (JR.lget(f, :index) != -1) do
                    JR.lset(f, :keyValuePersistance, GamePersistanceSingleton.jm_getInstance())
                    JR.call(this, :jm_setStartStateHashtable, [JR.call(JR.lget(f, :keyValuePersistance), :jm_get, [JR.lget(f, :index)])])
                    JR.lset(f, :menuListener, JR.call(this, :jm_getLoadGameForm, []))
                    JR.call(JR.lget(f, :menuListener), :jm_close, [])
                    PreLogUtil.jm_put(JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_toString, []), this, JR.get(this, :COMMAND_ACTION))
                    JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :START_COMMAND), NullCanvas.jstatic_NULL_CANVAS()])
                    PreLogUtil.jm_put(JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_toString, []), this, JR.get(this, :COMMAND_ACTION))
                end
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :DELETE_FILE)) do
                JR.lset(f, :loadGameForm, JR.call(this, :jm_getLoadGameForm, []))
                JR.lset(f, :index, JR.call(JR.lget(f, :loadGameForm), :jm_getSelectedText, []))
                if (JR.lget(f, :index) != -1) do
                    JR.lset(f, :keyValuePersistance, GamePersistanceSingleton.jm_getInstance())
                    JR.call(JR.lget(f, :keyValuePersistance), :jm_delete, [JR.get(this, :abeClientInformation), JR.lget(f, :index)])
                    JR.call(JR.lget(f, :keyValuePersistance), :jm_clear, [])
                    JR.call(JR.lget(f, :keyValuePersistance), :jm_loadAllSize, [JR.get(this, :abeClientInformation), 1])
                    JR.call(JR.call(this, :jm_getLoadGameForm, []), :jm_update, [])
                end
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :SAVE)) do
                JR.lset(f, :keyValuePersistance, GamePersistanceSingleton.jm_getInstance())
                JR.call(this, :jm_pauseAppBackground, [false])
                JR.call(JR.lget(f, :keyValuePersistance), :jm_save, [JR.get(this, :abeClientInformation), JR.call(this, :jm_getCurrentStateHashtable, [])])
                JR.call(this, :jm_unPauseAppBackground, [false])
            else
                if (JR.lget(f, :command) == HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND()) do
                JR.call(JR.get(this, :logUtil), :jm_putF, ["Submitted Score", this, JR.get(this, :COMMAND_ACTION)])
                if JR.instance_of(JR.lget(f, :displayable), HighScoreTextBox) do
                    JR.lset(f, :highScoreTextBox, JR.lget(f, :displayable))
                    JR.put(JR.lget(f, :highScoreTextBox), :submitted, true)
                end
                JR.call(JR.lget(f, :allbinaryGameCanvasRunnableInterface), :jm_setHighScoreSubmitted, [true])
                JR.call(this, :jm_commandAction, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS), JR.lget(f, :displayable)])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_ABOUT)) do
                JR.call(JR.get(this, :aboutCommandProcessor), :jm_process, [this, JR.get(JR.lget(f, :gameCommandsFactory), :SET_MENU_DISPLAYABLE), JR.call(this, :jm_getAboutCanvas, [])])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :OPEN_WEB_URL)) do
                JR.call(JR.get(this, :webCommandProcessor), :jm_process, [this, JR.get(JR.lget(f, :gameCommandsFactory), :OPEN_WEB_URL), NullCanvas.jstatic_NULL_CANVAS()])
            else
                if (JR.lget(f, :command) == JR.get(JR.lget(f, :gameCommandsFactory), :TOGGLE_KEYBOARD)) do
                JR.lset(f, :virtualKeyboardEventHandler, VirtualKeyboardEventHandler.jm_getInstance())
                JR.call(JR.lget(f, :virtualKeyboardEventHandler), :jm_fireEvent, [JR.get(JR.lget(f, :virtualKeyboardEventHandler), :SHOW_EVENT)])
            else
                if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.call(JR.lget(f, :command), :jm_getLabel, []), JR.call(JR.get(JR.lget(f, :gameCommandsFactory), :TOGGLE_FULLSCREEN), :jm_getLabel, [])]) == 0) do
                JR.lset(f, :mainFeatureFactory, MainFeatureFactory.jm_getInstance())
                JR.lset(f, :isFullScreen, JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)]))
                if JR.lget(f, :isFullScreen) do
                    JR.call(JR.get(this, :features), :jm_removeDefault, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)])
                else
                    JR.call(JR.get(this, :features), :jm_addDefault, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)])
                end
                JR.call(this, :jm_updateFullScreen, [])
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :EXCEPTION_LABEL)]), :jm_append, [JR.call(JR.lget(f, :command), :jm_getLabel, [])]), :jm_toString, []), this, JR.get(JR.get(this, :midletStrings), :COMMAND_ACTION), JR.lget(f, :e)])
            if (JR.lget(f, :command) != JR.get(GameCommandsFactory.jm_getInstance(), :EXIT_COMMAND)) do
                JR.call(this, :jm_exitProgress, [false])
            end
        end
    end)
  end


  def jm_updateFullScreen(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :mainFeatureFactory, MainFeatureFactory.jm_getInstance())
        JR.lset(f, :isFullScreen, JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(JR.lget(f, :mainFeatureFactory), :FULL_SCREEN)]))
        JR.lset(f, :displayable, JR.call(JR.call(this, :jm_getDisplay, []), :jm_getCurrent, []))
        if JR.instance_of(JR.lget(f, :displayable), Canvas) do
            JR.lset(f, :canvas, JR.lget(f, :displayable))
            JR.call(JR.lget(f, :canvas), :jm_setFullScreenMode, [JR.lget(f, :isFullScreen)])
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


  def jm_getInputMappingInstructionsCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInputMappingInstructionsCanvas.jnew(this, JR.call(this, :jm_createGameLayerManager, []))})
    end)
  end


  def jm_getInputMappingCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, GameInputMappingCanvas.jnew(JR.get(this, :abeClientInformation), this, JR.call(this, :jm_createGameLayerManager, []), JR.call(this, :jm_getHelpPaintable, []))})
    end)
  end


  def jm_getAboutCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, BasicPaintablesCanvas.jnew(this, JR.get(CanvasStrings.jm_getInstance(), :ABOUT), JR.call(this, :jm_createGameLayerManager, []), JR.get(AboutPaintableFactory.jm_getInstance(), :paintableArray))})
    end)
  end


  def jm_getHelpPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_createHighScoresCanvas(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_startGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :threadFactoryUtil, ThreadFactoryUtil.jm_getInstance())
        JR.put(this, :thread, JR.call(JR.lget(f, :threadFactoryUtil), :jm_getInstanceGameCanvasRunnable, [JR.get(this, :allbinaryGameCanvasRunnableInterface)]))
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Thread Priority: "]), :jm_appendint, [JR.int32(JR.call(JR.get(this, :thread), :jm_getPriority, []))]), :jm_toString, []), this, "startGameCanvasRunnableInterface"])
        JR.call(JR.get(this, :allbinaryGameCanvasRunnableInterface), :jm_setThread, [JR.get(this, :thread)])
        JR.call(JR.lget(f, :threadFactoryUtil), :jm_start, [JR.get(this, :thread)])
    end)
  end


  def jm_stopGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :gameStrings), :STOP_GAME_CANVAS_RUNNABLE_INTERFACE)])
        JR.call(GameNotificationEventHandler.jm_getInstance(), :jm_removeAllListeners, [])
        JR.call(ColorChangeEventHandler.jm_getInstance(), :jm_removeAllListeners, [])
        GameEventHandlerUtil.jm_removeAllListeners()
        JR.lset(f, :gameCanvasRunnableInterface, JR.get(this, :allbinaryGameCanvasRunnableInterface))
        if (JR.lget(f, :gameCanvasRunnableInterface) != NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Set Running False: "]), :jm_append, [JR.call(JR.lget(f, :gameCanvasRunnableInterface), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :gameStrings), :STOP_GAME_CANVAS_RUNNABLE_INTERFACE)])
            JR.call(JR.lget(f, :gameCanvasRunnableInterface), :jm_setRunning, [false])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["StopGame - Could Not Stop", this, JR.get(JR.get(this, :gameStrings), :STOP_GAME_CANVAS_RUNNABLE_INTERFACE)])
        end
        JR.call(ThreadUtil.jm_getInstance(), :jm_join, [JR.get(this, :thread)])
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        if JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ALL)]) do
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Stopped Game Runnable"])
        else
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Stopped Main Runnable"])
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END), this, JR.get(JR.get(this, :gameStrings), :STOP_GAME_CANVAS_RUNNABLE_INTERFACE)])
    end)
  end


  def jm_getGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :allbinaryGameCanvasRunnableInterface)})
    end)
  end


  def jm_setGameCanvasRunnableInterface(this, p_gameCanvasRunnableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvasRunnableInterface, p_gameCanvasRunnableInterface)
        JR.put(this, :allbinaryGameCanvasRunnableInterface, JR.lget(f, :gameCanvasRunnableInterface))
    end)
  end


  def jm_createGameLayerManager(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameInfo, GameInfo.jnew(JR.get(GameTypeFactory.jm_getInstance(), :SINGLE_PLAYER), GameMode.jstatic_SERVER(), JR.get(PlayerTypesFactory.jm_getInstance(), :PLAYER_TYPE_ONE), 1, 1))
        throw({:jreturn, AllBinaryGameLayerManager.jnew(JR.get(JR.get(this, :basicColorFactory), :BLACK), JR.get(JR.get(this, :basicColorFactory), :WHITE), JR.lget(f, :gameInfo))})
    end)
  end


  def jm_getGameOptionsForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :layerManager, JR.call(this, :jm_createGameLayerManager, []))
        throw({:jreturn, JR.call(GameOptionsFormFactory.jm_getInstance(), :jm_init, [this, "Game Options", JR.call(JR.lget(f, :layerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :layerManager), :jm_getForegroundBasicColor, [])])})
    end)
  end


  def jm_save(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :SAVE)])
        JR.lset(f, :hashtable, JR.call(this, :jm_getCurrentStateHashtable, []))
        JR.call(GamePersistanceSingleton.jm_getInstance(), :jm_save, [JR.get(this, :abeClientInformation), JR.lget(f, :hashtable)])
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "getCurrentStateHashtable"])
        JR.lset(f, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        if (JR.get(this, :allbinaryGameCanvasRunnableInterface) != NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()) do
            JR.lset(f, :currentHashtable, JR.call(JR.get(this, :allbinaryGameCanvasRunnableInterface), :jm_getCurrentStateHashtable, []))
            JR.lset(f, :enumeration, JR.call(JR.lget(f, :currentHashtable), :jm_keys, []))
            JR.lset(f, :key, nil)
            JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
                JR.lset(f, :key, JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
                JR.call(JR.lget(f, :hashtable), :jm_put, [JR.lget(f, :key), JR.call(JR.lget(f, :currentHashtable), :jm_get, [JR.lget(f, :key)])])
            end)
        end
        throw({:jreturn, JR.lget(f, :hashtable)})
    end)
  end


  def jm_setLoadGameForm(this, p_loadGameForm) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :loadGameForm, p_loadGameForm)
        JR.put(this, :loadGameForm, JR.lget(f, :loadGameForm))
    end)
  end


  def jm_getLoadGameForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :loadGameForm)})
    end)
  end


  def jm_setResized(this, p_resized) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resized, p_resized)
        JR.put(this, :resized, JR.lget(f, :resized))
    end)
  end


  def jm_isResized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :resized)})
    end)
  end


  def jm_isDemoLoading(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.get(this, :startedBefore) do
            throw({:jreturn, false})
        end
        JR.lset(f, :displayable, JR.call(JR.call(this, :jm_getDisplay, []), :jm_getCurrent, []))
        if JR.instance_of(JR.lget(f, :displayable), DemoCanvas) do
            JR.lset(f, :demoCanvas, JR.lget(f, :displayable))
            if JR.call(JR.lget(f, :demoCanvas), :jm_isDemoLoading, []) do
                throw({:jreturn, true})
            end
        end
        throw({:jreturn, false})
    end)
  end
end


