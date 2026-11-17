# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

defmodule CommandForm do
  def jsuper(), do: Form
def jstatic_NULL_COMMAND_FORM(), do: JR.static_get(__MODULE__, :NULL_COMMAND_FORM, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_COMMAND_FORM(value), do: JR.static_put(__MODULE__, :NULL_COMMAND_FORM, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :repaintProcessor, nil)
    JR.put(this, :commandStack, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :repaintProcessor, JR.call(ScreenRepaintProcessorFactory.jm_getInstance(), :jm_create, [this]))
        
    nil
  end


  def jm_getNullCommandForm() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (CommandForm.jstatic_NULL_COMMAND_FORM() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            CommandForm.jstatic_set_NULL_COMMAND_FORM(CommandForm.jnew(NullCommandListener.jstatic_NULL_COMMAND_LISTENER(), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, CommandForm.jstatic_NULL_COMMAND_FORM()})
    end)
  end


  def jinit(this, p_commandListener, p_formTitle, p_backgrounBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :formTitle, p_formTitle)
      JR.lset(f, :backgrounBasicColor, p_backgrounBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        Form.jinit(this, JR.lget(f, :formTitle))
        CommandForm.jinitfields(this)
        JR.put(this, :commandStack, JR.call(StdUtil.jm_getInstance(), :jm_createStack, []))
        try do
            JR.call(JR.get(this, :repaintProcessor), :jm_process, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end

  def jnew(p_commandListener, p_formTitle, p_backgrounBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_commandListener, p_formTitle, p_backgrounBasicColor, p_foregroundBasicColor)
    this
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


  def jm_open(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "open"])
    end)
  end


  def jm_close(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CLOSE)])
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
        throw({:jreturn, 0})
    end)
  end


  def jm_addCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        JR.call(JR.get(this, :commandStack), :jm_push, [JR.lget(f, :command)])
        Form.jm_addCommand(this, JR.lget(f, :command))
    end)
  end


  def jm_removeAllCommands(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.call(JR.get(this, :commandStack), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            Form.jm_removeCommand(this, JR.call(JR.get(this, :commandStack), :jm_pop, []))
        end)
    end)
  end
end


