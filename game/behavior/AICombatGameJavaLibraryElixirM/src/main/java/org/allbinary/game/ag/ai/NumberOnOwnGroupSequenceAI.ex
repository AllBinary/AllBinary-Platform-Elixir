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

defmodule NumberOnOwnGroupSequenceAI do
  def jsuper(), do: SequenceAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :numberOnSameTeam, nil)
        
    nil
  end


  def jinit(this, p_numberOnSameTeam, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :numberOnSameTeam, p_numberOnSameTeam)
      JR.lset(f, :artificialIntelligenceInterface, p_artificialIntelligenceInterface)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        SequenceAI.jinit(this, JR.lget(f, :artificialIntelligenceInterface), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        NumberOnOwnGroupSequenceAI.jinitfields(this)
        JR.put(this, :numberOnSameTeam, JR.lget(f, :numberOnSameTeam))
    end)
  end

  def jnew(p_numberOnSameTeam, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_numberOnSameTeam, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :layerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :index, JR.call(this, :jm_getIndex, []))
        if (JR.alength(JR.get(this, :numberOnSameTeam)) > JR.lget(f, :index)) do
            JR.lset(f, :size, JR.call(GroupLayerManagerListener.jm_getInstance(), :jm_getGroupSizeFromInterface, [JR.lget(f, :layerInterface)]))
            if (JR.call(JR.aget(JR.get(this, :numberOnSameTeam), JR.lget(f, :index)), :jm_intValue, []) > JR.lget(f, :size)) do
                JR.call(this, :jm_next, [])
            end
        end
        SequenceAI.jm_processAI(this, JR.lget(f, :allBinaryLayerManager))
    end)
  end
end


