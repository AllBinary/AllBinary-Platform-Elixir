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
# package org.allbinary.graphics.displayable.command

defmodule MyCommandsFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MyCommandsFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NO_COMMAND, nil)
    JR.put(this, :GAUGE_CHANGE, nil)
    JR.put(this, :SET_DISPLAYABLE, nil)
    JR.put(this, :PAUSE_COMMAND, nil)
    JR.put(this, :RESUME_COMMAND, nil)
        JR.put(this, :NO_COMMAND, Command.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), -1, -1))
        JR.put(this, :GAUGE_CHANGE, Command.jnew("GAUGE_CHANGE", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_ITEM(), 1))
        JR.put(this, :SET_DISPLAYABLE, Command.jnew("Display", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 2))
        JR.put(this, :PAUSE_COMMAND, Command.jnew("Pause", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 0))
        JR.put(this, :RESUME_COMMAND, Command.jnew("Resume", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 0))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MyCommandsFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


