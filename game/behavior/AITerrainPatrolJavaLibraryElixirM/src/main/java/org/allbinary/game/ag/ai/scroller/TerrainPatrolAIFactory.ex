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

defmodule TerrainPatrolAIFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getInstance(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        JR.call(JR.lget(f, :hashtable), :jm_put, [BasePatrolAI.jstatic_MAX_DISTANCE(), JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [220])])
        throw({:jreturn, TerrainPatrolAI.jnew(JR.lget(f, :hashtable), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))})
    end)
  end
end


