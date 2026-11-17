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
# package org.allbinary.game.ag.ai.sequence

defmodule NumberLayersSequenceAI do
  def jsuper(), do: SequenceAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :numberOfLayersLeft, 0)
        
    nil
  end


  def jinit(this, p_numberOfEnemiesLeft, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :numberOfEnemiesLeft, p_numberOfEnemiesLeft)
      JR.lset(f, :artificialIntelligenceInterface, p_artificialIntelligenceInterface)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        SequenceAI.jinit(this, JR.lget(f, :artificialIntelligenceInterface), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        NumberLayersSequenceAI.jinitfields(this)
        JR.put(this, :numberOfLayersLeft, JR.lget(f, :numberOfEnemiesLeft))
    end)
  end

  def jnew(p_numberOfEnemiesLeft, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_numberOfEnemiesLeft, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if (JR.call(this, :jm_getIndex, []) == 0) do
            if (JR.call(JR.lget(f, :allBinaryLayerManager), :jm_getSize, []) < JR.get(this, :numberOfLayersLeft)) do
                JR.call(this, :jm_setIndex, [1])
            end
        end
        SequenceAI.jm_processAI(this, JR.lget(f, :allBinaryLayerManager))
    end)
  end
end


