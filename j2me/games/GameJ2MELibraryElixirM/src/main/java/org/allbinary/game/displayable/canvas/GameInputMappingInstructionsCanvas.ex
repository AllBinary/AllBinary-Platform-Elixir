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

defmodule GameInputMappingInstructionsCanvas do
  def jsuper(), do: GameCommandCanvas
def jstatic_DISPLAY(), do: JR.static_get(__MODULE__, :DISPLAY, fn -> Command.jnew("Help", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_DISPLAY(value), do: JR.static_put(__MODULE__, :DISPLAY, value)
def jstatic_CLOSE(), do: JR.static_get(__MODULE__, :CLOSE, fn -> Command.jnew("Close", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_CLOSE(value), do: JR.static_put(__MODULE__, :CLOSE, value)
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "GameInputMappingInstructionsCanvas" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :drawStringUtil, nil)
    JR.put(this, :TITLE, nil)
    JR.put(this, :instructions, nil)
    JR.put(this, :colorFillPaintable, nil)
    JR.put(this, :anchor, 0)
        JR.put(this, :drawStringUtil, DrawStringUtil.jm_getInstance())
        JR.put(this, :TITLE, "Input Instructions")
        JR.put(this, :instructions, JR.afrom(["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]))
        
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jinit(this, p_commandListener, p_allBinaryGameLayerManager) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
        GameCommandCanvas.jinit(this, JR.lget(f, :commandListener), GameInputMappingInstructionsCanvas.jstatic_NAME(), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, []))
        GameInputMappingInstructionsCanvas.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :colorFillPaintable, JR.call(ColorFillPaintableFactory.jm_getInstance(), :jm_getInstance, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), false]))
    end)
  end

  def jnew(p_commandListener, p_allBinaryGameLayerManager) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_allBinaryGameLayerManager)
    this
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_addCommand, [GameInputMappingInstructionsCanvas.jstatic_CLOSE()])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.lset(f, :halfWidth, JR.call(JR.get(this, :displayInfo), :jm_getLastHalfWidth, []))
        JR.lset(f, :beginWidth, (Bitwise.bsr(JR.call(JR.call(JR.lget(f, :graphics), :jm_getFont, []), :jm_stringWidth, [JR.get(this, :TITLE)]), 1)))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :foregroundColor)])
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :TITLE), JR.int32(JR.lget(f, :halfWidth) - JR.lget(f, :beginWidth)), JR.get(this, :fontHeight), JR.get(this, :anchor)])
        JR.call(JR.get(this, :drawStringUtil), :jm_drawCenterStrings, [JR.lget(f, :graphics), JR.get(this, :instructions), JR.call(JR.get(this, :displayInfo), :jm_getLastWidth, []), JR.get(this, :fontHeight), JR.lget(f, :halfWidth), (3 * JR.get(this, :fontHeight))])
        GameCommandCanvas.jm_paint(this, JR.lget(f, :graphics))
    end)
  end
end


