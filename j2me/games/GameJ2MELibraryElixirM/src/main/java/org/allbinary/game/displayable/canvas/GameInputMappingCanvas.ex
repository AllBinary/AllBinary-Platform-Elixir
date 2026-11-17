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

defmodule GameInputMappingCanvas do
  def jsuper(), do: GameCommandCanvas
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "GameInputMappingCanvas" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)
def jstatic_DISPLAY(), do: JR.static_get(__MODULE__, :DISPLAY, fn -> Command.jnew("Controls", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2) end)
  def jstatic_set_DISPLAY(value), do: JR.static_put(__MODULE__, :DISPLAY, value)
def jstatic_DEFAULT(), do: JR.static_get(__MODULE__, :DEFAULT, fn -> Command.jnew("Default", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2) end)
  def jstatic_set_DEFAULT(value), do: JR.static_put(__MODULE__, :DEFAULT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :paintable, nil)
    JR.put(this, :helpPaintable, nil)
    JR.put(this, :colorFillPaintable, nil)
    JR.put(this, :inputMapping, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :abeClientInformation, nil)
    JR.put(this, :selectedGameKey, nil)
    JR.put(this, :selectedInput, nil)
    JR.put(this, :inputFactory, nil)
        
        
        
        
        JR.put(this, :NONE, JR.get(GameKeyFactory.jm_getInstance(), :NONE))
        
        JR.put(this, :selectedGameKey, JR.get(this, :NONE))
        JR.put(this, :selectedInput, JR.get(this, :NONE))
        JR.put(this, :inputFactory, InputFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_abeClientInformation, p_commandListener, p_allBinaryGameLayerManager, p_helpPaintable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
      JR.lset(f, :helpPaintable, p_helpPaintable)
        GameCommandCanvas.jinit(this, JR.lget(f, :commandListener), GameInputMappingCanvas.jstatic_NAME(), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, []))
        GameInputMappingCanvas.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        if (JR.lget(f, :helpPaintable) == nil) do
            throw({:jexception, JR.exception("Exception", "Help Paintable Exception")})
        end
        JR.put(this, :abeClientInformation, JR.lget(f, :abeClientInformation))
        JR.put(this, :helpPaintable, JR.lget(f, :helpPaintable))
        JR.put(this, :inputMapping, JR.call(PlatformInputMappingFactory.jm_getInstance(), :jm_getPersistentInputMappingInstance, []))
        JR.put(this, :paintable, ProcessPaintable.jnew())
        JR.put(this, :colorFillPaintable, JR.call(ColorFillPaintableFactory.jm_getInstance(), :jm_getInstance, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), false]))
    end)
  end

  def jnew(p_abeClientInformation, p_commandListener, p_allBinaryGameLayerManager, p_helpPaintable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_abeClientInformation, p_commandListener, p_allBinaryGameLayerManager, p_helpPaintable)
    this
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        GameCommandCanvas.jm_close(this)
        JR.call(JR.get(this, :paintable), :jm_process, [])
        JR.put(this, :selectedGameKey, JR.get(this, :NONE))
        JR.put(this, :selectedInput, JR.get(this, :NONE))
        JR.call(this, :jm_update, [])
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
        JR.call(this, :jm_addCommand, [GameInputMappingCanvas.jstatic_DEFAULT()])
        JR.call(this, :jm_addCommand, [GameInputMappingInstructionsCanvas.jstatic_DISPLAY()])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
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
        JR.call(this, :jm_addGameKey, [JR.lget(f, :keyCode), false])
        GameCommandCanvas.jm_keyPressedByDevice(this, JR.lget(f, :keyCode), 0)
    end)
  end


  def jm_addGameKey(this, p_keyCode, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyCode, p_keyCode)
      JR.lset(f, :repeated, p_repeated)
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Raw Device Key Code: "]), :jm_append, [J.Integer.jm_toHexString(JR.lget(f, :keyCode))]), :jm_toString, []), this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT)])
            JR.lset(f, :gameKey, JR.call(JR.get(this, :inputToGameKeyMapping), :jm_getInstanceForCanvas, [this, JR.lget(f, :keyCode)]))
            JR.lset(f, :input, JR.call(JR.get(this, :inputFactory), :jm_getInstanceById, [JR.lget(f, :keyCode)]))
            JR.call(this, :jm_processInputMapping, [JR.lget(f, :gameKey), JR.lget(f, :input)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, ["Key Event Error", this, JR.get(JR.get(this, :gameInputStrings), :ADD_KEY_EVENT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_processInputMapping(this, p_gameKey, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
      JR.lset(f, :input, p_input)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Start Passed GameKey: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :gameKey)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Input: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :input)])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :PROCESS)])
        if (JR.get(this, :selectedGameKey) != JR.get(this, :NONE)) do
            JR.call(this, :jm_gameActionCrud, [JR.lget(f, :gameKey), JR.lget(f, :input)])
        else
            JR.call(this, :jm_setSelectedAction, [JR.lget(f, :gameKey)])
        end
    end)
  end


  def jm_setSelectedAction(this, p_gameKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Selected GameKey: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :gameKey)])]), :jm_toString, []), this, "setSelectedAction"])
        JR.put(this, :selectedGameKey, JR.lget(f, :gameKey))
        JR.put(this, :selectedInput, JR.get(this, :NONE))
        JR.call(JR.get(this, :helpPaintable), :jm_update, [JR.get(this, :selectedGameKey), JR.get(this, :selectedInput)])
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_gameActionCrud(this, p_gameKey, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
      JR.lset(f, :input, p_input)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Start GameKey: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedGameKey)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Input: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedInput)])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "gameActionCrud"])
        if (JR.get(this, :selectedInput) == JR.get(this, :NONE)) do
            JR.lset(f, :list, JR.call(JR.call(JR.get(this, :inputMapping), :jm_getInputMapping, []), :jm_getMappedInput, [JR.get(this, :selectedGameKey)]))
            JR.lset(f, :isInputAlreadyMappedToSelectedAction, JR.call(JR.lget(f, :list), :jm_contains, [JR.lget(f, :input)]))
            if JR.lget(f, :isInputAlreadyMappedToSelectedAction) do
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Already Mapped Input: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :input)])]), :jm_toString, []), this, "gameActionCrud"])
                JR.put(this, :selectedInput, JR.lget(f, :input))
                JR.call(JR.get(this, :helpPaintable), :jm_update, [JR.get(this, :selectedGameKey), JR.get(this, :selectedInput)])
                JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
            else
                JR.call(this, :jm_addNewMapping, [JR.lget(f, :gameKey), JR.lget(f, :input)])
            end
        else
            if JR.call(JR.get(this, :inputMapping), :jm_isDelete, [JR.lget(f, :input)]) do
            JR.call(this, :jm_deleteCurrentMapping, [])
        else
            JR.call(this, :jm_setSelectedAction, [JR.lget(f, :gameKey)])
        end
        end
    end)
  end


  def jm_addNewMapping(this, p_gameKey, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
      JR.lset(f, :input, p_input)
        JR.lset(f, :METHOD_NAME, "addNewMapping")
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.lget(f, :METHOD_NAME)])
        JR.lset(f, :isInputAlreadyMapped, JR.call(JR.call(JR.get(this, :inputMapping), :jm_getInputMapping, []), :jm_isMapped, [JR.lget(f, :input)]))
        if (!JR.lget(f, :isInputAlreadyMapped) && !JR.call(JR.get(this, :inputMapping), :jm_isSystemInput, [JR.lget(f, :input)])) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Add Key Mapping : GameKey: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedGameKey)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Input: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedInput)])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.call(JR.call(JR.get(this, :inputMapping), :jm_getInputMapping, []), :jm_add, [JR.get(this, :selectedGameKey), JR.lget(f, :input)])
            JR.put(this, :selectedInput, JR.lget(f, :input))
            JR.call(this, :jm_update, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, JR.lget(f, :METHOD_NAME)])
            JR.call(this, :jm_setSelectedAction, [JR.lget(f, :gameKey)])
        end
    end)
  end


  def jm_deleteCurrentMapping(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :METHOD_NAME, "deleteCurrentMapping")
        JR.lset(f, :list, JR.call(JR.call(JR.get(this, :inputMapping), :jm_getInputMapping, []), :jm_getMappedInput, [JR.get(this, :selectedGameKey)]))
        if (JR.call(JR.lget(f, :list), :jm_size, []) > 1) do
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Start GameKey: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Remove Key Mapping: GameKey: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedGameKey)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Input: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :selectedInput)])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.call(JR.call(JR.get(this, :inputMapping), :jm_getInputMapping, []), :jm_remove, [JR.get(this, :selectedGameKey), JR.get(this, :selectedInput)])
            JR.put(this, :selectedInput, JR.get(this, :NONE))
            JR.call(this, :jm_update, [])
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Can't Remove Last Key Mapping", this, JR.lget(f, :METHOD_NAME)])
        end
    end)
  end


  def jm_setDefault(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :inputMapping), :jm_setDefault, [JR.get(this, :abeClientInformation)])
        JR.call(JR.get(this, :helpPaintable), :jm_update, [JR.get(this, :NONE), JR.get(this, :NONE)])
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :inputMapping), :jm_update, [JR.get(this, :abeClientInformation)])
        JR.call(JR.get(this, :helpPaintable), :jm_update, [JR.get(this, :selectedGameKey), JR.get(this, :selectedInput)])
        JR.call(JR.get(this, :repaintBehavior), :jm_onChangeRepaint, [this])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :helpPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics)])
        GameCommandCanvas.jm_paint(this, JR.lget(f, :graphics))
    end)
  end
end


