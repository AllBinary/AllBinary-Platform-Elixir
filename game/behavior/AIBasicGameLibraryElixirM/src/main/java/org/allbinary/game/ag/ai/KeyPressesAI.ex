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

defmodule KeyPressesAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :on, false)
    JR.put(this, :keys, nil)
        JR.put(this, :on, true)
        
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        KeyPressesAI.jinitfields(this)
        JR.put(this, :keys, JR.anew(JR.call(JR.lget(f, :hashtable), :jm_size, []), nil))
        JR.lset(f, :objectArray, JR.call(HashtableUtil.jm_getInstance(), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
        JR.lset(f, :size, JR.alength(JR.lget(f, :objectArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :keys), JR.lget(f, :index), JR.call(JR.lget(f, :hashtable), :jm_get, [JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index))]))
        end)
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
        if JR.get(this, :on) do
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :keys))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                BasicAI.jm_processKeyAI(this, JR.call(JR.aget(JR.get(this, :keys), JR.lget(f, :index)), :jm_intValue, []))
            end)
        end
    end)
  end


  def jm_toggle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(this, :jm_isOn, []) do
            JR.call(this, :jm_setOn, [false])
        else
            JR.call(this, :jm_setOn, [true])
        end
    end)
  end


  def jm_disable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setOn, [false])
    end)
  end


  def jm_enable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setOn, [true])
    end)
  end


  def jm_setOn(this, p_on) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :on, p_on)
        JR.put(this, :on, JR.lget(f, :on))
    end)
  end


  def jm_isOn(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :on)})
    end)
  end
end


