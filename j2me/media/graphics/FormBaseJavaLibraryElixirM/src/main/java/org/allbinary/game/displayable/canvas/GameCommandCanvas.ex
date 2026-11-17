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

defmodule GameCommandCanvas do
  def jsuper(), do: MyCanvas
def jstatic_id(), do: JR.static_get(__MODULE__, :id, fn -> 0 end)
  def jstatic_set_id(value), do: JR.static_put(__MODULE__, :id, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :repaintProcessor, nil)
    JR.put(this, :gameInputStrings, nil)
    JR.put(this, :foregroundBasicColor, nil)
    JR.put(this, :backgroundBasicColor, nil)
    JR.put(this, :inputToGameKeyMapping, nil)
    JR.put(this, :gameKeyFactory, nil)
    JR.put(this, :gameKeyEventFactory, nil)
    JR.put(this, :downGameKeyEventHandler, nil)
    JR.put(this, :upGameKeyEventHandler, nil)
    JR.put(this, :repaintBehavior, nil)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :foregroundColor, 0)
    JR.put(this, :backgroundColor, 0)
    JR.put(this, :menuInputProcessor, nil)
    JR.put(this, :menuPaintable, nil)
    JR.put(this, :menuForm, nil)
    JR.put(this, :isSingleKeyRepeatableProcessing, false)
    JR.put(this, :fontHeight, 0)
        JR.put(this, :repaintProcessor, JR.call(ScreenRepaintProcessorFactory.jm_getInstance(), :jm_create, [this]))
        JR.put(this, :gameInputStrings, GameInputStrings.jm_getInstance())
        
        
        JR.put(this, :inputToGameKeyMapping, JR.call(JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []), :jm_getInputMapping, []))
        JR.put(this, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
        JR.put(this, :downGameKeyEventHandler, DownGameKeyEventHandler.jm_getInstance())
        JR.put(this, :upGameKeyEventHandler, UpGameKeyEventHandler.jm_getInstance())
        
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        
        
        JR.put(this, :menuInputProcessor, NoMenuInputProcessor.jm_getInstance())
        JR.put(this, :menuPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :menuForm, PaintableForm.jm_getNullPaintableForm())
        JR.put(this, :isSingleKeyRepeatableProcessing, JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(InputFeatureFactory.jm_getInstance(), :SINGLE_KEY_REPEAT_PRESS)]))
        JR.put(this, :fontHeight, 0)
    nil
  end


  def jinit(this, p_cmdListener, p_name, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :name, p_name)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        MyCanvas.jinit(this, JR.lget(f, :name), JR.get(CanvasStrings.jm_getInstance(), :EMPTY_CHILD_NAME_LIST))
        GameCommandCanvas.jinitfields(this)
        JR.put(this, :repaintBehavior, RepaintBehavior.jm_getInstance())
        JR.put(this, :foregroundBasicColor, JR.lget(f, :foregroundBasicColor))
        JR.put(this, :backgroundBasicColor, JR.lget(f, :backgroundBasicColor))
        JR.put(this, :foregroundColor, JR.call(JR.get(this, :foregroundBasicColor), :jm_intValue, []))
        JR.put(this, :backgroundColor, JR.call(JR.get(this, :backgroundBasicColor), :jm_intValue, []))
        JR.call(this, :jm_initCommands, [JR.lget(f, :cmdListener)])
        if (JR.lget(f, :cmdListener) != NullCommandListener.jstatic_NULL_COMMAND_LISTENER()) do
            try do
                JR.call(this, :jm_initMenu, [])
                JR.call(JR.get(this, :repaintProcessor), :jm_process, [])
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                throw({:jexception, JR.exception("RuntimeException", "")})
            end
        end
    end)
  end

  def jnew(p_cmdListener, p_name, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cmdListener, p_name, p_backgroundBasicColor, p_foregroundBasicColor)
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
            JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
            JR.lset(f, :rectangle, JR.call(this, :jm_createRectangle, [JR.call(JR.get(this, :menuForm), :jm_size, [])]))
            JR.call(JR.get(this, :menuForm), :jm_init, [JR.lget(f, :rectangle), JR.get(FormTypeFactory.jm_getInstance(), :VERTICAL_CENTER_FORM)])
            JR.call(this, :jm_update, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT), JR.lget(f, :e)])
        end
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
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
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_append, [JR.call(DisplayInfoSingleton.jm_getInstance(), :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :canvasStrings), :ON_DISPLAY_CHANGE_EVENT)])
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
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


  def jm_initMenu(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :form, JR.call(this, :jm_createForm, []))
        JR.put(this, :menuForm, JR.lget(f, :form))
        if (JR.lget(f, :form) != ScrollSelectionFormNoneFactory.jm_getInstance()) do
            JR.call(this, :jm_setMenuInputProcessor, [ImmediateCommandFormInputProcessor.jnew(BasicArrayListD.jnew(), -1, this, JR.lget(f, :form))])
            JR.put(this, :menuPaintable, FormPaintable.jnew(JR.lget(f, :form)))
        end
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_createForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :items, JR.call(CommandTextItemArrayFactory.jnew(AllCommandsVisitor.jnew()), :jm_getInstance, [JR.call(this, :jm_getCommandStack, []), JR.get(this, :backgroundBasicColor), JR.get(this, :foregroundBasicColor)]))
        JR.lset(f, :rectangle, JR.call(this, :jm_createRectangle, [JR.alength(JR.lget(f, :items))]))
        throw({:jreturn, CommandCurrentSelectionFormFactory.jm_getInstance(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.lget(f, :items), JR.lget(f, :rectangle), JR.get(FormTypeFactory.jm_getInstance(), :VERTICAL_CENTER_FORM), 15, false, JR.get(this, :backgroundBasicColor), JR.get(this, :foregroundBasicColor))})
    end)
  end


  def jm_createRectangle(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        JR.lset(f, :height, JR.int32(JR.lget(f, :size) * JR.get(this, :fontHeight)))
        JR.lset(f, :startY, ((((JR.call(JR.get(this, :displayInfo), :jm_getLastHeight, []) * 2) / 3)) - JR.lget(f, :height)))
        JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
        JR.lset(f, :rectangle, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [30, JR.lget(f, :startY)]), (JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []) - 30), JR.lget(f, :startY)))
        throw({:jreturn, JR.lget(f, :rectangle)})
    end)
  end


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "open"])
        JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_addListenerInterface, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_addListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CLOSE)])
        JR.call(BasicMotionGesturesHandler.jm_getInstance(), :jm_removeListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(GameKeyEventHandler.jm_getInstance(), :jm_removeListener, [JR.call(this, :jm_getMenuInputProcessor, [])])
        JR.call(DisplayChangeEventHandler.jm_getInstance(), :jm_removeListener, [this])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :repaintProcessor), :jm_process, [])
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, GameCommandCanvas.jstatic_id()})
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
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :KEY_PRESSED)])
        JR.call(this, :jm_addGameKeyEvent, [JR.lget(f, :keyCode), 0, false])
    end)
  end


  def jm_keyReleasedByDevice(this, p_keyCode, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(this, :jm_removeGameKeyEvent, [JR.lget(f, :keyCode), JR.lget(f, :deviceId), false])
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
            JR.call(this, :jm_addGameKeyEvent, [JR.lget(f, :keyCode), JR.lget(f, :deviceId), true])
        end
    end)
  end


  def jm_addGameKeyEvent(this, p_keyCode, p_deviceId, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [this, JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(JR.get(this, :gameKeyFactory), :NONE)) do
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [this, JR.lget(f, :gameKey)]))
                JR.call(JR.get(this, :downGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                JR.call(JR.call(JR.get(this, :downGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
            else
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :gameInputStrings), :NO_KEY)]), :jm_appendint, [JR.lget(f, :keyCode)]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_removeGameKeyEvent(this, p_keyCode, p_deviceId, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [this, JR.lget(f, :keyCode)]))
            if (JR.lget(f, :gameKey) != JR.get(JR.get(this, :gameKeyFactory), :NONE)) do
                JR.lset(f, :gameKeyEvent, JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForInput, [this, JR.lget(f, :gameKey)]))
                JR.call(JR.get(this, :upGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                JR.call(JR.call(JR.get(this, :upGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
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


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :menuPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :repaintBehavior), :jm_repaint, [this])
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
end


