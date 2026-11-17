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

defmodule DemoCanvas do
  def jsuper(), do: RunnableCanvas
def jstatic_id(), do: JR.static_get(__MODULE__, :id, fn -> 0 end)
  def jstatic_set_id(value), do: JR.static_put(__MODULE__, :id, value)
def jstatic_BOT_GAME_STATS(), do: JR.static_get(__MODULE__, :BOT_GAME_STATS, fn -> "Bot Game Statistics: " end)
  def jstatic_set_BOT_GAME_STATS(value), do: JR.static_put(__MODULE__, :BOT_GAME_STATS, value)
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> 3 end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColorFactory, nil)
    JR.put(this, :myCommandsFactory, nil)
    JR.put(this, :gameAdStateFactory, nil)
    JR.put(this, :gameInputStrings, nil)
    JR.put(this, :gameStateFactory, nil)
    JR.put(this, :threadFactoryUtil, nil)
    JR.put(this, :formUtil, nil)
    JR.put(this, :fullscreenPaintable, nil)
    JR.put(this, :basicGameDemoPaintable, nil)
    JR.put(this, :specialAnimationInterface, nil)
    JR.put(this, :paintedSpecialAnimationInterface, nil)
    JR.put(this, :fullScreenUtil, nil)
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :highScoresHelper, nil)
    JR.put(this, :realHighScoresPaintable, nil)
    JR.put(this, :highScoresPaintable, nil)
    JR.put(this, :state, 0)
    JR.put(this, :canvasThread, nil)
    JR.put(this, :timeDelayHelper, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :abeClientInformation, nil)
    JR.put(this, :highScoresFactoryInterface, nil)
    JR.put(this, :menuInputProcessor, nil)
    JR.put(this, :menuForm, nil)
    JR.put(this, :gameInitializationInterfaceFactoryInterface, nil)
    JR.put(this, :initialized, false)
    JR.put(this, :demoGameRunnable, nil)
    JR.put(this, :defaultPaintableInterface, nil)
    JR.put(this, :paintableInterface, nil)
    JR.put(this, :overlayPaintable, nil)
    JR.put(this, :progressPaintable, nil)
    JR.put(this, :tempWait, 0)
    JR.put(this, :inputToGameKeyMapping, nil)
    JR.put(this, :gameRunnable, nil)
    JR.put(this, :isSingleKeyRepeatableProcessing, false)
    JR.put(this, :NONE, nil)
    JR.put(this, :gameKeyEventFactory, nil)
    JR.put(this, :lastKeyNotMapped, 0)
    JR.put(this, :SET_STATE, nil)
    JR.put(this, :baseGameStatistics, nil)
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.put(this, :myCommandsFactory, MyCommandsFactory.jm_getInstance())
        JR.put(this, :gameAdStateFactory, GameAdStateFactory.jm_getInstance())
        JR.put(this, :gameInputStrings, GameInputStrings.jm_getInstance())
        JR.put(this, :gameStateFactory, GameStateFactory.jm_getInstance())
        JR.put(this, :threadFactoryUtil, ThreadFactoryUtil.jm_getInstance())
        JR.put(this, :formUtil, FormUtil.jm_getInstance())
        JR.put(this, :fullscreenPaintable, JR.get(FullScreenPaintableFactory.jm_getInstance(), :paintable))
        JR.put(this, :basicGameDemoPaintable, StatePaintableFactory.jm_getInstance())
        JR.put(this, :specialAnimationInterface, SpecialAnimation.jm_getInstance())
        JR.put(this, :paintedSpecialAnimationInterface, SpecialAnimation.jm_getInstance())
        JR.put(this, :fullScreenUtil, FullScreenUtil.jm_getInstance())
        JR.put(this, :gameCanvas, NullGameCanvas.jm_getInstance())
        JR.put(this, :highScoresHelper, HighScoresHelper.jnew())
        JR.put(this, :realHighScoresPaintable, HighScoresPaintable.jnew())
        JR.put(this, :highScoresPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :state, 0)
        JR.put(this, :canvasThread, NullThread.jstatic_NULL_THREAD())
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(6000))
        JR.put(this, :basicColor, JR.get(JR.get(this, :basicColorFactory), :RED))
        
        
        JR.put(this, :menuInputProcessor, NoMenuInputProcessor.jm_getInstance())
        JR.put(this, :menuForm, ScrollSelectionForm.jm_getNullScrollSelectionForm())
        
        JR.put(this, :initialized, false)
        
        JR.put(this, :defaultPaintableInterface, NullPaintable.jm_getInstance())
        JR.put(this, :paintableInterface, NullPaintable.jm_getInstance())
        
        JR.put(this, :progressPaintable, ProgressCanvasFactory.jm_getLazyInstance())
        JR.put(this, :tempWait, JR.get(NullWaitGameRunnable.jm_getInstance(), :WAIT))
        JR.put(this, :inputToGameKeyMapping, JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, []))
        JR.put(this, :gameRunnable, NullWaitGameRunnable.jm_getInstance())
        JR.put(this, :isSingleKeyRepeatableProcessing, JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(InputFeatureFactory.jm_getInstance(), :SINGLE_KEY_REPEAT_PRESS)]))
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
        JR.put(this, :lastKeyNotMapped, -1)
        JR.put(this, :SET_STATE, "setState")
        JR.put(this, :baseGameStatistics, GameStatisticsFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_abeClientInformation, p_commandListener, p_highScoresFactoryInterface, p_paintable, p_overlayPaintable, p_gameInitializationInterfaceFactoryInterface, p_isContinue) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :paintable, p_paintable)
      JR.lset(f, :overlayPaintable, p_overlayPaintable)
      JR.lset(f, :gameInitializationInterfaceFactoryInterface, p_gameInitializationInterfaceFactoryInterface)
      JR.lset(f, :isContinue, p_isContinue)
        RunnableCanvas.jinit(this, JR.lget(f, :commandListener), JR.get(CurrentDisplayableFactory.jm_getInstance(), :DEFAULT_CHILD_NAME_LIST), true)
        DemoCanvas.jinitfields(this)
        JR.put(this, :abeClientInformation, JR.lget(f, :abeClientInformation))
        JR.call(this, :jm_setWait, [JR.get(NullWaitGameRunnable.jm_getInstance(), :WAIT)])
        JR.put(this, :gameInitializationInterfaceFactoryInterface, JR.lget(f, :gameInitializationInterfaceFactoryInterface))
        JR.call(GameInitializationUtil.jm_getInstance(), :jm_initDemo, [JR.lget(f, :abeClientInformation), this, JR.lget(f, :gameInitializationInterfaceFactoryInterface)])
        JR.call(ResizableListenerHandler.jm_getInstance(), :jm_fireEvent, [false])
        JR.put(this, :overlayPaintable, JR.lget(f, :overlayPaintable))
        JR.put(this, :highScoresFactoryInterface, JR.lget(f, :highScoresFactoryInterface))
        JR.call(this, :jm_setDefaultPaintableInterface, [JR.lget(f, :paintable)])
        JR.call(this, :jm_setPaintableInterface, [JR.call(this, :jm_getDefaultPaintableInterface, [])])
        if JR.lget(f, :isContinue) do
            JR.call(this, :jm_addCommand, [JR.get(GameCommandsFactory.jm_getInstance(), :CONTINUE_COMMAND)])
        end
        if JR.call(ChangedGameFeatureListener.jm_getInstance(), :jm_isChangedFeature, [JR.get(GameFeatureFactory.jm_getInstance(), :SOUND)]) do
            JR.call(this, :jm_mediaInit, [])
        end
        JR.put(this, :demoGameRunnable, DemoGameStartupRunnable.jnew(this))
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end

  def jnew(p_abeClientInformation, p_commandListener, p_highScoresFactoryInterface, p_paintable, p_overlayPaintable, p_gameInitializationInterfaceFactoryInterface, p_isContinue) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_abeClientInformation, p_commandListener, p_highScoresFactoryInterface, p_paintable, p_overlayPaintable, p_gameInitializationInterfaceFactoryInterface, p_isContinue)
    this
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
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonLabels), :START_LABEL)]), :jm_append, [JR.call(JR.get(this, :displayInfo), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT)])
            JR.lset(f, :scrollSelectionForm, JR.call(this, :jm_getMenuForm, []))
            if (JR.lget(f, :scrollSelectionForm) != nil) do
                JR.lset(f, :formType, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
                JR.lset(f, :rectangle, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
                JR.call(JR.lget(f, :scrollSelectionForm), :jm_init, [JR.lget(f, :rectangle), JR.lget(f, :formType)])
            end
            JR.call(JR.get(this, :overlayPaintable), :jm_init, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getCustomCommands(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        if J2MEUtil.jm_isHTML() do
            JR.lset(f, :commandArray, JR.afrom([JR.get(JR.lget(f, :gameCommandsFactory), :START_COMMAND), JR.get(HighScoreCommands.jm_getInstance(), :DISPLAY), GameInputMappingCanvas.jstatic_DISPLAY(), JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_ABOUT)]))
            throw({:jreturn, JR.lget(f, :commandArray)})
        else
            JR.lset(f, :commandList, BasicArrayListD.jnew())
            JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(JR.lget(f, :gameCommandsFactory), :START_COMMAND)])
            JR.lset(f, :inApplicationPurchaseFactory, InApplicationPurchaseFactory.jm_getInstance())
            if JR.call(JR.lget(f, :inApplicationPurchaseFactory), :jm_isEnabled, []) do
                JR.lset(f, :list, JR.call(LockableFeatureFactory.jm_getInstance(), :jm_getList, []))
                if ((JR.call(JR.lget(f, :list), :jm_size, []) > 0) && !JR.call(JR.lget(f, :inApplicationPurchaseFactory), :jm_isPurchased, [JR.call(JR.lget(f, :list), :jm_get, [0])])) do
                    JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(JR.lget(f, :gameCommandsFactory), :BUY_COMMAND)])
                end
            end
            JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(HighScoreCommands.jm_getInstance(), :DISPLAY)])
            try do
                JR.lset(f, :isOverScan, JR.call(JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []), :jm_isOverScan, []))
                if SWTUtil.jstatic_isSWT() do
                    JR.call(JR.lget(f, :commandList), :jm_add, [GameInputMappingCanvas.jstatic_DISPLAY()])
                else
                    if !JR.lget(f, :isOverScan) do
                    JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_OPTIONS)])
                    JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_LOAD_FORM)])
                    JR.call(JR.lget(f, :commandList), :jm_add, [GameInputMappingCanvas.jstatic_DISPLAY()])
                end
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                nil
            end
            JR.call(JR.lget(f, :commandList), :jm_add, [JR.get(JR.lget(f, :gameCommandsFactory), :DISPLAY_ABOUT)])
            JR.lset(f, :commandArray, JR.call(JR.lget(f, :commandList), :jm_toArray, []))
            throw({:jreturn, JR.lget(f, :commandArray)})
        end
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.lset(f, :commandArray, JR.call(this, :jm_getCustomCommands, []))
        JR.lset(f, :size, JR.alength(JR.lget(f, :commandArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(this, :jm_addCommand, [JR.aget(JR.lget(f, :commandArray), JR.lget(f, :index))])
        end)
        CustomGameMenuUtil.jm_add(this)
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_initPostPaint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_mediaInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        AllBinaryMediaManager.jm_init(EarlySoundsFactory.jm_getInstance())
    end)
  end


  def jm_itemStateChanged(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        ForcedLogUtil.jm_log(JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this)
    end)
  end


  def jm_initMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_close, [])
        JR.lset(f, :commandTextItemArrayFactory, JR.call(DemoLimitedCommandTextItemArrayFactory.jm_getInstance(), :jm_getCommandTextItemArrayFactory, []))
        JR.lset(f, :items, JR.call(JR.lget(f, :commandTextItemArrayFactory), :jm_getInstance, [JR.call(this, :jm_getCommandStack, []), JR.get(JR.get(this, :basicColorFactory), :BLACK), JR.get(JR.get(this, :basicColorFactory), :WHITE)]))
        JR.lset(f, :formType, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
        JR.lset(f, :rectangle, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonLabels), :START_LABEL)]), :jm_append, [JR.call(JR.get(this, :displayInfo), :jm_toString, [])]), :jm_toString, []), this, "initMenu")
        JR.lset(f, :scrollSelectionForm, CommandCurrentSelectionFormFactory.jm_getInstance(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.lget(f, :items), JR.lget(f, :rectangle), JR.lget(f, :formType), 15, true, JR.get(JR.get(this, :basicColorFactory), :BLACK), JR.get(JR.get(this, :basicColorFactory), :WHITE)))
        JR.call(this, :jm_setMenuForm, [JR.lget(f, :scrollSelectionForm)])
        JR.lset(f, :formType2, JR.call(FormTypeFactory.jm_getInstance(), :jm_getFormType, []))
        JR.lset(f, :rectangle2, JR.call(JR.get(this, :formUtil), :jm_createFormRectangle, []))
        JR.call(JR.lget(f, :scrollSelectionForm), :jm_init, [JR.lget(f, :rectangle2), JR.lget(f, :formType2)])
        if (JR.call(this, :jm_getMenuForm, []) != ScrollSelectionFormNoneFactory.jm_getInstance()) do
            JR.call(this, :jm_setMenuInputProcessor, [CommandFormInputProcessor.jnew(BasicArrayListD.jnew(), -1, this, JR.call(this, :jm_getMenuForm, []))])
        end
        JR.call(this, :jm_open, [])
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_addListenerInterface, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_addListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_removeListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_removeListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, DemoCanvas.jstatic_id()})
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
        JR.call(this, :jm_addGameKeyEvent, [JR.lget(f, :keyCode), false])
    end)
  end


  def jm_keyReleasedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(this, :jm_removeGameKeyEvent, [JR.lget(f, :keyCode), false])
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
            JR.call(this, :jm_addGameKeyEvent, [JR.lget(f, :keyCode), true])
        end
    end)
  end


  def jm_addGameKeyEvent(this, p_keyCode, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [this, JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(this, :NONE)) do
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [this, JR.lget(f, :gameKey)]))
                JR.call(DownGameKeyEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            else
                if (JR.get(this, :lastKeyNotMapped) != JR.lget(f, :keyCode)) do
                    JR.put(this, :lastKeyNotMapped, JR.lget(f, :keyCode))
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :NO_KEY)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT)])
                end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_removeGameKeyEvent(this, p_keyCode, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [this, JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(this, :NONE)) do
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [this, JR.lget(f, :gameKey)]))
                JR.call(UpGameKeyEventHandler.jm_getInstance(), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :NO_KEY)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :REMOVE_KEY_EVENT)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :REMOVE_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_close, [])
        JR.call(this, :jm_setPaused, [true])
        JR.put(this, :gameRunnable, NullWaitGameRunnable.jm_getInstance())
        JR.call(JR.get(this, :gameCanvas), :jm_pause, [])
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_open, [])
        JR.call(JR.get(this, :gameCanvas), :jm_unPause, [])
        JR.put(this, :gameRunnable, JR.get(JR.get(this, :gameCanvas), :gameRunnable))
        JR.call(this, :jm_setPaused, [false])
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


  def jm_isGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED)]), :jm_append, [" since not a game"]), :jm_toString, []), this, "isGameOver"])
        throw({:jreturn, false})
    end)
  end


  def jm_setLoadStateHashtable(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable"])
    end)
  end


  def jm_getLoadStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable"])
        throw({:jreturn, JR.get(JR.get(this, :stdUtil), :NULL_TABLE)})
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Trying to save the AI lol", this, "getCurrentStateHashtable"])
        throw({:jreturn, JR.get(JR.get(this, :stdUtil), :NULL_TABLE)})
    end)
  end


  def jm_setHighScoreSubmitted(this, p_isNotUsed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isNotUsed, p_isNotUsed)
        nil
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :paintableInterface), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :paintedSpecialAnimationInterface), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
        JR.call(JR.get(this, :highScoresPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.call(this, :jm_getBasicGameDemoPaintable, []), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :overlayPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :fullscreenPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :progressPaintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :paintableInterface), :jm_paintThreed, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :paintedSpecialAnimationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), 0, 0, 0])
    end)
  end


  def jm_processGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Not Implemented since not a game", this, "setGameOver"])
    end)
  end


  def jm_demoStateChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :newState, JR.int32(JR.get(this, :state) + 1))
        if (JR.lget(f, :newState) > 2) do
            JR.lset(f, :newState, 0)
        else
            if (JR.lget(f, :newState) == 2) do
            if !JR.call(JR.get(this, :highScoresHelper), :jm_isAnyHighScores, []) do
                JR.lset(f, :newState, 0)
            else
                JR.lset(f, :highScores, JR.call(JR.get(this, :highScoresHelper), :jm_getNextHighScores, []))
                if (JR.lget(f, :highScores) == NullHighScoresSingletonFactory.jm_getInstance()) do
                    JR.lset(f, :newState, 0)
                else
                    JR.call(JR.call(this, :jm_getRealHighScoresPaintable, []), :jm_setHighScores, [JR.lget(f, :highScores)])
                end
            end
        end
        end
        JR.call(this, :jm_setState, [JR.lget(f, :newState)])
        JR.call(this, :jm_updateDemoState, [])
    end)
  end


  def jm_updateDemoState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PreLogUtil.jm_put(JR.call(JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_createInstance, [JR.get(this, :state)]), :jm_toString, []), this, JR.get(this, :SET_STATE))
        JR.call(JR.call(this, :jm_getBasicGameDemoPaintable, []), :jm_setState, [JR.get(this, :state)])
        if (JR.get(this, :state) == 0) do
            JR.put(this, :highScoresPaintable, NullPaintable.jm_getInstance())
            JR.put(this, :paintedSpecialAnimationInterface, JR.call(this, :jm_getSpecialAnimationInterface, []))
            if (!JR.call(JR.get(this, :demoGameRunnable), :jm_isRunning, []) && JR.call(JR.get(this, :gameCanvas), :jm_isInitialized, [])) do
                JR.call(JR.call(this, :jm_getSpecialAnimationInterface, []), :jm_reset, [])
            end
        else
            if (JR.get(this, :state) == 1) do
            JR.put(this, :paintedSpecialAnimationInterface, SpecialAnimation.jm_getInstance())
        else
            if (JR.get(this, :state) == 2) do
            JR.put(this, :highScoresPaintable, JR.call(this, :jm_getRealHighScoresPaintable, []))
        end
        end
        end
        JR.lset(f, :gameAdState, JR.call(JR.get(this, :gameAdStateFactory), :jm_getCurrentInstance, []))
        JR.call(JR.lget(f, :gameAdState), :jm_processPageAdState, [])
    end)
  end


  def jm_getNextRandom(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_createGameLayerManager(this, p_randomValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :randomValue, p_randomValue)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_createRunnable(this, p_randomLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :randomLevel, p_randomLevel)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_create(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :START), this, "create")
        JR.put(this, :highScoresPaintable, NullPaintable.jm_getInstance())
        JR.lset(f, :randomLevel, JR.call(this, :jm_getNextRandom, []))
        JR.put(this, :gameCanvas, JR.call(this, :jm_createRunnable, [JR.lget(f, :randomLevel)]))
        JR.put(this, :basicColor, JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getLayerManager, []), :jm_getForegroundBasicColor, []))
        JR.call(JR.call(this, :jm_getRealHighScoresPaintable, []), :jm_setBasicColorP, [JR.get(this, :basicColor)])
        JR.call(JR.get(this, :gameCanvas), :jm_setGameCanvasStartListener, [this])
        JR.lset(f, :gameInfo, JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getLayerManager, []), :jm_getGameInfo, []))
        JR.call(JR.call(this, :jm_getHighScoresFactoryInterface, []), :jm_fetchHighScores, [JR.lget(f, :gameInfo), JR.get(this, :highScoresHelper)])
    end)
  end


  def jm_start(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameCanvas, JR.get(this, :gameCanvas))
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Game Thread in DemoCanvas: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :gameCanvas)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :START))
        JR.put(this, :canvasThread, JR.call(JR.get(this, :threadFactoryUtil), :jm_getInstanceGameCanvasRunnable, [JR.lget(f, :gameCanvas)]))
        JR.call(JR.get(this, :gameCanvas), :jm_setThread, [JR.get(this, :canvasThread)])
        JR.call(JR.get(this, :threadFactoryUtil), :jm_start, [JR.get(this, :canvasThread)])
        if (JR.call(this, :jm_getWait, []) == JR.get(NullWaitGameRunnable.jm_getInstance(), :WAIT)) do
            JR.call(this, :jm_setWait, [JR.call(this, :jm_getTempWait, [])])
        end
    end)
  end


  def jm_preDemoProcess(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (!JR.call(JR.get(this, :gameCanvas), :jm_isInitialized, []) || (JR.call(JR.get(this, :gameCanvas), :jm_getTitle, []) == NullGameCanvas.jstatic_NO_GAME())) do
            if AllBinaryMediaManager.jm_update() do
                if !JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_process, []) do
                    JR.call(SecondaryPlayerQueueFactory.jm_getInstance(), :jm_process, [])
                end
            end
        end
        JR.call(JR.get(this, :overlayPaintable), :jm_update, [])
    end)
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        RunnableCanvas.jm_process(this)
        JR.call(JR.call(this, :jm_getMenuInputProcessor, []), :jm_processInputList, [])
        JR.call(this, :jm_preDemoProcess, [])
        if (JR.get(this, :state) == 0) do
            JR.lset(f, :indexedAnimationBehavior, (JR.call(JR.call(this, :jm_getSpecialAnimationInterface, []), :jm_getAnimationBehavior, [])))
            if (JR.get(JR.lget(f, :indexedAnimationBehavior), :loopIndex) < 1) do
                JR.call(JR.get(this, :timeDelayHelper), :jm_setStartTimeTNT, [])
            end
            JR.lset(f, :demoGameMidlet, JR.call(this, :jm_getCustomCommandListener, []))
            if ((JR.get(this, :gameCanvas) != NullGameCanvas.jm_getInstance()) && JR.call(JR.get(this, :gameCanvas), :jm_isGameOver, [])) do
                JR.call(this, :jm_stopGameDemo, [])
                JR.lset(f, :randomLevel, JR.call(this, :jm_getNextRandom, []))
                JR.lset(f, :gameInfo, JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getLayerManager, []), :jm_getGameInfo, []))
                JR.call(JR.lget(f, :gameInfo), :jm_setCurrentLevel, [JR.lget(f, :randomLevel)])
                JR.call(JR.get(this, :gameCanvas), :jm_setGameOver, [false])
                JR.call(this, :jm_start, [])
            else
                if ((JR.get(this, :gameCanvas) == NullGameCanvas.jm_getInstance()) && JR.call(JR.lget(f, :demoGameMidlet), :jm_isReady, [])) do
                if !JR.call(JR.get(this, :demoGameRunnable), :jm_isRunning, []) do
                    JR.call(this, :jm_startDemoGame, [])
                    JR.call(JR.get(this, :demoGameRunnable), :jm_setRunning, [true])
                    JR.lset(f, :thread, JR.call(JR.get(this, :threadFactoryUtil), :jm_getInstanceForRunnable, [JR.get(this, :demoGameRunnable)]))
                    JR.call(JR.get(this, :demoGameRunnable), :jm_setThread, [JR.lget(f, :thread)])
                    JR.call(JR.get(this, :threadFactoryUtil), :jm_start, [JR.lget(f, :thread)])
                end
            end
            end
        end
    end)
  end


  def jm_startDemoGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        DemoCanvasProgressUtil.jm_showProgress(this)
    end)
  end


  def jm_stopGameDemo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.get(this, :gameCanvas) != NullGameCanvas.jm_getInstance()) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Set Running False", this, "stopGameDemo"])
            JR.call(JR.get(this, :gameCanvas), :jm_setRunning, [false])
        end
        JR.call(ThreadUtil.jm_getInstance(), :jm_join, [JR.get(this, :canvasThread)])
    end)
  end


  def jm_showGamePaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :METHOD_NAME, "showGamePaintable")
        PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :START), this, JR.lget(f, :METHOD_NAME))
        JR.lset(f, :isDefault, J2MEUtil.jm_isHTML())
        if (((JR.get(this, :gameCanvas) != NullGameCanvas.jm_getInstance()) && (((JR.call(JR.get(this, :gameCanvas), :jm_isRunning, []) || JR.lget(f, :isDefault)) || SWTUtil.jstatic_isSWT()))) && !((JR.call(JR.get(this, :gameCanvas), :jm_getType, []) == NullGameCanvas.jstatic_TYPE()))) do
            JR.put(this, :gameRunnable, JR.get(JR.get(this, :gameCanvas), :gameRunnable))
            PreLogUtil.jm_put("Showing Game", this, JR.lget(f, :METHOD_NAME))
            JR.call(this, :jm_setPaintableInterface, [JR.get(this, :gameCanvas)])
        else
            JR.put(this, :gameRunnable, NullWaitGameRunnable.jm_getInstance())
            PreLogUtil.jm_put("Not Showing Game", this, JR.lget(f, :METHOD_NAME))
            JR.call(this, :jm_setPaintableInterface, [JR.call(this, :jm_getDefaultPaintableInterface, [])])
        end
    end)
  end


  def jm_isReadyForStateChange(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (!JR.call(JR.get(this, :demoGameRunnable), :jm_isRunning, []) && JR.call(JR.get(this, :gameCanvas), :jm_isInitialized, []))})
    end)
  end


  def jm_processGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :gameRunnable), :jm_run, [])
        if (!JR.call(JR.get(this, :specialAnimationInterface), :jm_isComplete, []) && JR.call(this, :jm_isReadyForStateChange, [])) do
            JR.call(JR.get(this, :specialAnimationInterface), :jm_nextFrame, [])
        end
        if (JR.call(JR.get(this, :timeDelayHelper), :jm_isTimeTNT, []) && JR.call(this, :jm_isReadyForStateChange, [])) do
            JR.call(this, :jm_demoStateChange, [])
        else
            JR.call(this, :jm_process, [])
        end
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        try do
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Demo Thread"])
            JR.call(this, :jm_setCurrentThread, [])
            JR.call(this, :jm_setRunning, [true])
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ONDEMAND)]) do
                JR.call(JR.lget(f, :progressCanvas), :jm_end, [])
            else
                JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Demo Thread Running"])
            end
            JR.call(JR.get(this, :fullScreenUtil), :jm_initOnRun, [this, JR.call(this, :jm_getCustomCommandListener, [])])
            JR.call(this, :jm_initMenu, [])
            JR.call(this, :jm_initPostPaint, [])
            JR.call(this, :jm_updateDemoState, [])
            if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD)]) do
                JR.jwhile(fn -> ((JR.get(this, :gameCanvas) == NullGameCanvas.jm_getInstance()) || !JR.call(JR.get(this, :gameCanvas), :jm_isInitialized, [])) end, fn ->
                    JR.call(JR.get(this, :loopTimeHelper), :jm_setStartTimeTNT, [])
                    JR.call(this, :jm_processGame, [])
                    JR.call(this, :jm_processLoopSleep, [])
                end)
                JR.lset(f, :demoGameRunnable, DemoGameRunnable.jnew(this))
                JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
                JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setRunnable, [JR.lget(f, :demoGameRunnable)])
                JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setMyCanvas, [this])
                JR.call(OpenGLThreadUtil.jm_getInstance(), :jm_onResume, [])
            end
            if (JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL_AS_GAME_THREAD)]) || J2MEUtil.jm_isHTML()) do
                JR.lset(f, :demoGameRunnable, DemoGameRunnable.jnew(this))
                JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
                JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setRunnable, [JR.lget(f, :demoGameRunnable)])
                JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setMyCanvas, [this])
            else
                JR.jwhile(fn -> JR.call(this, :jm_isRunning, []) end, fn ->
                    JR.call(this, :jm_run3, [])
                end)
                JR.call(this, :jm_end, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
    end)
  end


  def jm_run3(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :loopTimeHelper), :jm_setStartTimeTNT, [])
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
            JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
            if JR.lget(f, :running) do
                nil
            else
                if (((JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL)]) || J2MEUtil.jm_isHTML())) || SWTUtil.jstatic_isSWT()) do
                    JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
                    JR.call(JR.lget(f, :currentDisplayableFactory), :jm_clearRunnable, [])
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
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.lset(f, :features, Features.jm_getInstance())
        JR.call(JR.get(this, :baseGameStatistics), :jm_add, [JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [DemoCanvas.jstatic_BOT_GAME_STATS()]), :jm_append, [JR.call(JR.get(this, :baseGameStatistics), :jm_toString, [])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)]), :jm_toString, [])])
        JR.call(JR.get(this, :baseGameStatistics), :jm_init, [])
        if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(MainFeatureFactory.jm_getInstance(), :LOAD_ONDEMAND)]) do
            JR.call(JR.lget(f, :progressCanvas), :jm_start, [])
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Demo End", this, JR.get(JR.get(this, :commonStrings), :RUN)])
        JR.call(this, :jm_close, [])
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_removeListener, [this])
        JR.call(this, :jm_stopGameDemo, [])
    end)
  end


  def jm_setGameState(this, p_gameState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameState, p_gameState)
        nil
    end)
  end


  def jm_getGameState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(JR.get(this, :gameStateFactory), :PLAYING_GAME_STATE)})
    end)
  end


  def jm_getGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameCanvas)})
    end)
  end


  def jm_isDemoLoading(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameCanvas, JR.get(this, :gameCanvas))
        if (JR.lget(f, :gameCanvas) == NullGameCanvas.jm_getInstance()) do
            throw({:jreturn, true})
        else
            if JR.call(JR.lget(f, :gameCanvas), :jm_isInitialized, []) do
            throw({:jreturn, false})
        end
        end
        throw({:jreturn, true})
    end)
  end


  def jm_getState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :state)})
    end)
  end


  def jm_setState(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        JR.put(this, :state, JR.lget(f, :state))
    end)
  end


  def jm_isHighScoreSubmitted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Wow the AI got a high score!", this, "isHighScoreSubmitted"])
        throw({:jreturn, false})
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


  def jm_setSpecialAnimationInterface(this, p_specialAnimationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :specialAnimationInterface, p_specialAnimationInterface)
        JR.call(JR.lget(f, :specialAnimationInterface), :jm_setFrame, [0])
        JR.put(this, :specialAnimationInterface, JR.lget(f, :specialAnimationInterface))
    end)
  end


  def jm_getSpecialAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :specialAnimationInterface)})
    end)
  end


  def jm_setPaintableInterface(this, p_paintableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :paintableInterface, p_paintableInterface)
        JR.put(this, :paintableInterface, JR.lget(f, :paintableInterface))
    end)
  end


  def jm_getPaintableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :paintableInterface)})
    end)
  end


  def jm_setDefaultPaintableInterface(this, p_defaultPaintableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :defaultPaintableInterface, p_defaultPaintableInterface)
        JR.put(this, :defaultPaintableInterface, JR.lget(f, :defaultPaintableInterface))
    end)
  end


  def jm_getDefaultPaintableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :defaultPaintableInterface)})
    end)
  end


  def jm_getHighScoresFactoryInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highScoresFactoryInterface)})
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


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initialized)})
    end)
  end


  def jm_getOverlayPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :overlayPaintable)})
    end)
  end


  def jm_setBasicGameDemoPaintable(this, p_basicGameDemoPaintable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicGameDemoPaintable, p_basicGameDemoPaintable)
        JR.put(this, :basicGameDemoPaintable, JR.lget(f, :basicGameDemoPaintable))
    end)
  end


  def jm_getBasicGameDemoPaintable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicGameDemoPaintable)})
    end)
  end


  def jm_setTempWait(this, p_tempWait) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :tempWait, p_tempWait)
        JR.put(this, :tempWait, JR.lget(f, :tempWait))
    end)
  end


  def jm_getTempWait(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :tempWait)})
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


  def jm_getGameInitializationInterfaceFactoryInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInitializationInterfaceFactoryInterface)})
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, DemoCanvas.jstatic_TYPE()})
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


