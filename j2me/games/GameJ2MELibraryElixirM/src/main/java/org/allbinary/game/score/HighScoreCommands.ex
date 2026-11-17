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
# package org.allbinary.game.score

defmodule HighScoreCommands do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> HighScoreCommands.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :DISPLAY, nil)
    JR.put(this, :PERSONAL, nil)
    JR.put(this, :WORLD, nil)
        JR.put(this, :DISPLAY, Command.jnew("Scores", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :PERSONAL, Command.jnew("Personal", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
        JR.put(this, :WORLD, Command.jnew("World", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1))
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, HighScoreCommands.jstatic_instance()})
    end)
  end
end


