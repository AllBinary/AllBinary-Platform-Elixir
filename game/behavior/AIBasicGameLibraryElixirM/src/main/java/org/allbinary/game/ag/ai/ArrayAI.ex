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

defmodule ArrayAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :artificialIntelligenceInterfaceArray, nil)
        
    nil
  end


  def jinit(this, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :artificialIntelligenceInterface, p_artificialIntelligenceInterface)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        ArrayAI.jinitfields(this)
        JR.put(this, :artificialIntelligenceInterfaceArray, JR.lget(f, :artificialIntelligenceInterface))
    end)
  end

  def jnew(p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :size, JR.alength(JR.get(this, :artificialIntelligenceInterfaceArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :artificialIntelligenceInterfaceArray), JR.lget(f, :index)), :jm_processAI, [JR.lget(f, :allBinaryLayerManager)])
        end)
    end)
  end


  def jm_getArtificialIntelligenceInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :artificialIntelligenceInterfaceArray)})
    end)
  end
end


