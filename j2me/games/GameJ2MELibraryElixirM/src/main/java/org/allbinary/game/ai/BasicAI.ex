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
# package org.allbinary.game.ai

defmodule BasicAI do
  def jsuper(), do: ArtificialIntelligence
def jstatic_AI_VISITOR(), do: JR.static_get(__MODULE__, :AI_VISITOR, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [2]) end)
  def jstatic_set_AI_VISITOR(value), do: JR.static_put(__MODULE__, :AI_VISITOR, value)
def jstatic_ID(), do: JR.static_get(__MODULE__, :ID, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [1]) end)
  def jstatic_set_ID(value), do: JR.static_put(__MODULE__, :ID, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :gameKeyEventFactory, nil)
    JR.put(this, :ownerLayerInterface, nil)
    JR.put(this, :gameInput, nil)
    JR.put(this, :lastKey, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :gameKeyEventFactory, GameKeyEventFactory.jm_getInstance())
        
        
        JR.put(this, :lastKey, -1)
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
      ArtificialIntelligence.jinit(this)
      jinitfields(this)
        JR.put(this, :ownerLayerInterface, JR.lget(f, :ownerLayerInterface))
        JR.put(this, :gameInput, JR.lget(f, :gameInput))
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_processKeyAI(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        if (JR.lget(f, :key) != -1) do
            JR.call(JR.get(this, :gameInput), :jm_add, [JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForKey, [this, JR.lget(f, :key)])])
        end
    end)
  end


  def jm_setLastKey(this, p_lastKey) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lastKey, p_lastKey)
        JR.put(this, :lastKey, JR.lget(f, :lastKey))
    end)
  end


  def jm_getLastKey(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lastKey)})
    end)
  end


  def jm_getOwnerLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :ownerLayerInterface)})
    end)
  end


  def jm_getGameInput(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInput)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.class_name(this)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :NEW_LINE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" LastKey: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [CanvasUtil.jm_getKeyName(JR.call(this, :jm_getLastKey, []))])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 1})
    end)
  end
end


