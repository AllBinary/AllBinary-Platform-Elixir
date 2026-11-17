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
# package org.allbinary.game

defmodule GameTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_GAME_TYPE_ARRAY, nil)
    JR.put(this, :NONE, nil)
    JR.put(this, :SINGLE_PLAYER, nil)
    JR.put(this, :MULTI_PLAYER, nil)
    JR.put(this, :BOT, nil)
        JR.put(this, :NULL_GAME_TYPE_ARRAY, JR.anew(0, nil))
        JR.put(this, :NONE, GameType.jnew(JR.get(StringUtil.jm_getInstance(), :NULL_STRING)))
        JR.put(this, :SINGLE_PLAYER, GameType.jnew("Single Player"))
        JR.put(this, :MULTI_PLAYER, GameType.jnew("Multi Player"))
        JR.put(this, :BOT, GameType.jnew("Artificial Player"))
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
        throw({:jreturn, GameTypeFactory.jstatic_instance()})
    end)
  end
end


