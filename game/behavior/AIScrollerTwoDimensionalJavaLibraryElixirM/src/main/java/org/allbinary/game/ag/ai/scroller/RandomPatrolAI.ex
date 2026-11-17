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
# package org.allbinary.game.ag.ai.scroller

defmodule RandomPatrolAI do
  def jsuper(), do: BasePatrolAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :changedDirection, false)
        JR.put(this, :changedDirection, true)
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasePatrolAI.jinit(this, JR.lget(f, :hashtable), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        RandomPatrolAI.jinitfields(this)
        JR.call(this, :jm_updateRandomDistance, [])
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_updateRandomDistance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :currentDistance, JR.call(MyRandomFactory.jm_getInstance(), :jm_getAbsoluteNextInt, [JR.call(JR.get(this, :maxDistance), :jm_intValue, [])]))
    end)
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        BasePatrolAI.jm_update(this)
        BasePatrolAI.jm_processKeyAI(this, JR.get(this, :keyDirection))
        if JR.get(this, :changedDirection) do
            BasePatrolAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
            JR.call(this, :jm_updateRandomDistance, [])
            JR.put(this, :changedDirection, false)
        end
    end)
  end


  def jm_nextDirection(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        BasePatrolAI.jm_nextDirection(this)
        JR.put(this, :changedDirection, true)
    end)
  end
end


