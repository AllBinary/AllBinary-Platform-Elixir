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
# package org.allbinary.game.ag.ai

defmodule MultiKeyPressesAI do
  def jsuper(), do: KeyPressesAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :toggleTimeHelper, nil)
    JR.put(this, :gameTickTimeDelayHelper, nil)
        JR.put(this, :toggleTimeHelper, TimeDelayHelper.jnew(600))
        JR.put(this, :gameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        KeyPressesAI.jinit(this, JR.lget(f, :hashtable), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        MultiKeyPressesAI.jinitfields(this)
        JR.call(this, :jm_update, [])
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        nil
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameInput, JR.call(this, :jm_getGameInput, []))
        JR.lset(f, :keys, JR.get(this, :keys))
        JR.lset(f, :size, JR.alength(JR.lget(f, :keys)))
        if JR.call(this, :jm_isOn, []) do
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :key, JR.call(JR.aget(JR.lget(f, :keys), JR.lget(f, :index)), :jm_intValue, []))
                if (JR.lget(f, :key) != -1) do
                    JR.call(JR.lget(f, :gameInput), :jm_add, [JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForKey, [this, JR.lget(f, :key)])])
                end
            end)
        else
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :key, JR.call(JR.aget(JR.lget(f, :keys), JR.lget(f, :index)), :jm_intValue, []))
                if (JR.lget(f, :key) != -1) do
                    JR.call(JR.lget(f, :gameInput), :jm_addForRemoval, [JR.call(JR.get(this, :gameKeyEventFactory), :jm_getInstanceForKey, [this, JR.lget(f, :key)])])
                end
            end)
        end
    end)
  end


  def jm_toggle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :toggleTimeHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
            KeyPressesAI.jm_toggle(this)
            JR.call(this, :jm_update, [])
        end
    end)
  end


  def jm_disable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :toggleTimeHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
            KeyPressesAI.jm_disable(this)
            JR.call(this, :jm_update, [])
        end
    end)
  end


  def jm_enable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :toggleTimeHelper), :jm_isTime, [JR.get(JR.get(this, :gameTickTimeDelayHelper), :startTime)]) do
            KeyPressesAI.jm_enable(this)
            JR.call(this, :jm_update, [])
        end
    end)
  end
end


