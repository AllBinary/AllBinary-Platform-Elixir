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
# package org.allbinary.game.input.event

defmodule GameKeyEvent do
  def jsuper(), do: AllBinaryEventObject
def jstatic_NONE(), do: JR.static_get(__MODULE__, :NONE, fn -> GameKeyEvent.jnew(JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT), -1, -1, -1, -1, false) end)
  def jstatic_set_NONE(value), do: JR.static_put(__MODULE__, :NONE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sourceId, 0)
    JR.put(this, :repeated, false)
    JR.put(this, :key, 0)
    JR.put(this, :gameActionKey, 0)
    JR.put(this, :originalKey, 0)
        
        JR.put(this, :repeated, false)
        
        JR.put(this, :gameActionKey, 0)
        JR.put(this, :originalKey, 0)
    nil
  end


  def jm_createEvent(p_anyType, p_sourceId, p_key) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :sourceId, p_sourceId)
      JR.lset(f, :key, p_key)
        throw({:jreturn, GameKeyEvent.jnew(JR.lget(f, :anyType), JR.lget(f, :sourceId), 0, 0, JR.lget(f, :key), false)})
    end)
  end


  def jinit(this, p_anyType, p_sourceId, p_originalKey, p_gameActionKey, p_key, p_repeated) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :sourceId, p_sourceId)
      JR.lset(f, :originalKey, p_originalKey)
      JR.lset(f, :gameActionKey, p_gameActionKey)
      JR.lset(f, :key, p_key)
      JR.lset(f, :repeated, p_repeated)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        GameKeyEvent.jinitfields(this)
        JR.put(this, :sourceId, JR.lget(f, :sourceId))
        JR.call(this, :jm_setOriginalKey, [JR.lget(f, :originalKey)])
        JR.put(this, :key, JR.lget(f, :key))
        JR.call(this, :jm_setGameActionKey, [JR.lget(f, :gameActionKey)])
        JR.call(this, :jm_setRepeatEvents, [JR.lget(f, :repeated)])
    end)
  end

  def jnew(p_anyType, p_sourceId, p_originalKey, p_gameActionKey, p_key, p_repeated) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType, p_sourceId, p_originalKey, p_gameActionKey, p_key, p_repeated)
    this
  end


  def jm_init(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_setSource, [JR.lget(f, :anyType)])
    end)
  end


  def jm_setRepeatEvents(this, p_repeated) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :repeated, p_repeated)
        JR.put(this, :repeated, JR.lget(f, :repeated))
    end)
  end


  def jm_hasRepeatEvents(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :repeated)})
    end)
  end


  def jm_getKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :key)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["\nKey: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getKey, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getOriginalKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :originalKey)})
    end)
  end


  def jm_setOriginalKey(this, p_originalKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalKey, p_originalKey)
        JR.put(this, :originalKey, JR.lget(f, :originalKey))
    end)
  end


  def jm_getGameActionKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameActionKey)})
    end)
  end


  def jm_setGameActionKey(this, p_gameActionKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameActionKey, p_gameActionKey)
        JR.put(this, :gameActionKey, JR.lget(f, :gameActionKey))
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sourceId)})
    end)
  end
end


