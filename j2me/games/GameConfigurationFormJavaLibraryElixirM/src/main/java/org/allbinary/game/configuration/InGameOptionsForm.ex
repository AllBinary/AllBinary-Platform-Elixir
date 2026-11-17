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
# package org.allbinary.game.configuration

defmodule InGameOptionsForm do
  def jsuper(), do: CommandForm
def jstatic_DISPLAY(), do: JR.static_get(__MODULE__, :DISPLAY, fn -> Command.jnew("Options In Game", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_DISPLAY(value), do: JR.static_put(__MODULE__, :DISPLAY, value)
def jstatic_SAVE(), do: JR.static_get(__MODULE__, :SAVE, fn -> Command.jnew("Save", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_SAVE(value), do: JR.static_put(__MODULE__, :SAVE, value)
def jstatic_DEFAULT(), do: JR.static_get(__MODULE__, :DEFAULT, fn -> Command.jnew("Default", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_DEFAULT(value), do: JR.static_put(__MODULE__, :DEFAULT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :title, p_title)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        CommandForm.jinit(this, JR.lget(f, :commandListener), JR.lget(f, :title), JR.lget(f, :backgrounBasicColor), JR.lget(f, :foregroundBasicColor))
        InGameOptionsForm.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.lset(f, :gameFeatureFormUtil, GameFeatureFormUtil.jm_getInstance())
        JR.call(JR.lget(f, :gameFeatureFormUtil), :jm_addChoiceGroup, [this, JR.call(InGameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []), Choice.jstatic_EXCLUSIVE()])
        JR.call(JR.lget(f, :gameFeatureFormUtil), :jm_addChoiceGroup, [this, JR.call(InGameFeatureChoiceGroups.jm_getMultipleInstance(), :jm_get, []), Choice.jstatic_MULTIPLE()])
        JR.call(this, :jm_initCommands, [JR.lget(f, :commandListener)])
    end)
  end

  def jnew(p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor)
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
        JR.call(this, :jm_addCommand, [InGameOptionsForm.jstatic_DEFAULT()])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end
end


