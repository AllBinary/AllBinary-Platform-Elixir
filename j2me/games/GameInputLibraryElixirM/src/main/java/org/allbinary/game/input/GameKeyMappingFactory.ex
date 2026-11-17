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

defmodule GameKeyMappingFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :intKeyToGameKey, nil)
        JR.put(this, :intKeyToGameKey, JR.anew(JR.get(InputFactory.jm_getInstance(), :MAX), nil))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (GameKeyMappingFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GameKeyMappingFactory.jstatic_set_instance(GameKeyMappingFactory.jnew())
        end
        throw({:jreturn, GameKeyMappingFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :NONE)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :UP)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :DOWN)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :LEFT)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :RIGHT)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_POUND)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_STAR)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM0)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM1)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM2)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM3)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM4)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM5)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM6)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM7)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM8)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :KEY_NUM9)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :GAME_A)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :GAME_B)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :GAME_C)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :GAME_D)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :FIRE)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_DOWN)])
        JR.call(this, :jm_setGameKey, [JR.get(JR.lget(f, :gameKeyFactory), :LEVEL_UP)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getGameKey(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        throw({:jreturn, JR.aget(JR.get(this, :intKeyToGameKey), JR.lget(f, :key))})
    end)
  end


  def jm_setGameKey(this, p_gameKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKey, p_gameKey)
        JR.aset(JR.get(this, :intKeyToGameKey), JR.call(JR.lget(f, :gameKey), :jm_getId, []), JR.lget(f, :gameKey))
    end)
  end
end


