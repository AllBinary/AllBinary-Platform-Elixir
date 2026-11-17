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

defmodule TerrainPatrolAI do
  def jsuper(), do: PacePatrolAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :terrainEventListener, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :CLIFF, nil)
        JR.put(this, :terrainEventListener, TerrainEventListener.jnew())
        JR.put(this, :DOWN, JR.get(AngleFactory.jm_getInstance(), :DOWN))
        JR.put(this, :CLIFF, BasicTerrainInfo.jnew(JR.get(this, :DOWN)))
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        PacePatrolAI.jinit(this, JR.lget(f, :hashtable), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        TerrainPatrolAI.jinitfields(this)
        JR.call(TerrainEventHandler.jm_getInstance(JR.lget(f, :ownerLayerInterface)), :jm_addListener, [JR.get(this, :terrainEventListener)])
        JR.call(JR.get(this, :terrainEventListener), :jm_onTerrainEvent, [JR.call(TerrainEventCircularStaticPool.jm_getInstance(), :jm_getNext, [JR.get(this, :CLIFF)])])
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PacePatrolAI.jm_update(this)
        JR.call(this, :jm_changeDirectionIfCliffReached, [])
    end)
  end


  def jm_changeDirectionIfCliffReached(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :list, JR.call(JR.get(this, :terrainEventListener), :jm_getList, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :terrainEvent, JR.call(JR.lget(f, :list), :jm_removeAt, [JR.lget(f, :index)]))
            JR.lset(f, :basicTerrainInfo, JR.call(JR.lget(f, :terrainEvent), :jm_getBasicTerrainInfo, []))
            JR.lset(f, :angle, JR.call(JR.lget(f, :basicTerrainInfo), :jm_getAngle, []))
            if (JR.lget(f, :angle) == JR.get(this, :DOWN)) do
                JR.call(this, :jm_nextDirection, [])
                if !JR.get(this, :isFollowLimitedByTerrain) do
                    JR.call(JR.get(this, :logUtil), :jm_putF, ["Following Limited", this, "onTerrainEvent"])
                    JR.put(this, :isFollowLimitedByTerrain, true)
                end
            end
        end)
    end)
  end
end


