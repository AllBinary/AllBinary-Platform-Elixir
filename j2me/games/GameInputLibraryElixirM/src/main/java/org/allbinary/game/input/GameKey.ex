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
# package org.allbinary.game.input

defmodule GameKey do
  def jsuper(), do: Input
def jstatic_NULL_GAME_KEY(), do: JR.static_get(__MODULE__, :NULL_GAME_KEY, fn -> GameKey.jnew(-1, JR.get(StringUtil.jm_getInstance(), :NULL_STRING)) end)
  def jstatic_set_NULL_GAME_KEY(value), do: JR.static_put(__MODULE__, :NULL_GAME_KEY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_key, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
      JR.lset(f, :name, p_name)
        Input.jinit(this, JR.lget(f, :key), JR.lget(f, :name))
        GameKey.jinitfields(this)
    end)
  end

  def jnew(p_key, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_key, p_name)
    this
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["GameKey "]), :jm_append, [Input.jm_toString(this)]), :jm_toString, [])})
    end)
  end
end


