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
# package org.allbinary.game.input.mapping

defmodule GameInputMapping do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :gameKey, nil)
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :gameKey, GameKey.jstatic_NULL_GAME_KEY())
    nil
  end


  def jinit(this, p_name, p_gameKey) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :gameKey, p_gameKey)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setName, [JR.lget(f, :name)])
        JR.call(this, :jm_setGameKey, [JR.lget(f, :gameKey)])
    end)
  end

  def jnew(p_name, p_gameKey) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_gameKey)
    this
  end


  def jm_setGameKey(this, p_gameKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
        JR.put(this, :gameKey, JR.lget(f, :gameKey))
    end)
  end


  def jm_getGameKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKey)})
    end)
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end
end


