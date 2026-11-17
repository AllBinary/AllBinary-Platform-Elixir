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

defmodule SaveGameForm do
  def jsuper(), do: CommandForm
def jstatic_FORM(), do: JR.static_get(__MODULE__, :FORM, fn -> CommandForm.jm_getNullCommandForm() end)
  def jstatic_set_FORM(value), do: JR.static_put(__MODULE__, :FORM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :meUtil, nil)
        JR.put(this, :meUtil, MIDPUtil.jm_getInstance())
    nil
  end


  def jm_createForm(p_commandListener, p_title, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :title, p_title)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        SaveGameForm.jstatic_set_FORM(SaveGameForm.jnew(JR.lget(f, :commandListener), JR.lget(f, :title), JR.lget(f, :backgrounBasicColor), JR.lget(f, :foregroundBasicColor)))
        throw({:jreturn, SaveGameForm.jstatic_FORM()})
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SaveGameForm.jstatic_FORM()})
    end)
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
        SaveGameForm.jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.lset(f, :timeString, JR.str(JR.call(ABSystemWrapper.jm_getInstance(), :jm_currentTimeMillis, [])))
        JR.call(JR.get(this, :meUtil), :jm_appendItem, [this, TextField.jnew("Name: ", JR.lget(f, :timeString), 30, TextField.jstatic_ANY())])
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
        JR.lset(f, :gameCommandsFactory, GameCommandsFactory.jm_getInstance())
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :SAVE)])
        JR.call(this, :jm_addCommand, [JR.get(JR.lget(f, :gameCommandsFactory), :CLOSE_AND_SHOW_GAME_CANVAS)])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end
end


