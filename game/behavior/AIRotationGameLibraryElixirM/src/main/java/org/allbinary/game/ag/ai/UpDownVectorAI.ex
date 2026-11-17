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

defmodule UpDownVectorAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :velocityInterface, nil)
    JR.put(this, :index, 0)
        
        JR.put(this, :index, 0)
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        UpDownVectorAI.jinitfields(this)
        JR.lset(f, :velocityInterfaceCompositeInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.put(this, :velocityInterface, JR.call(JR.lget(f, :velocityInterfaceCompositeInterface), :jm_getVelocityProperties, []))
        JR.call(JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []), :jm_setint, [0])
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
        JR.lset(f, :y, (JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getHeight, []) * 270))
        if (JR.get(this, :index) < 5) do
            JR.lset(f, :basicDecimal, JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []))
            JR.call(JR.lget(f, :basicDecimal), :jm_setint, [0])
            JR.call(JR.lget(f, :basicDecimal), :jm_addint, [JR.lget(f, :y)])
            JR.postinc(this, :index, 1)
        else
            if (JR.get(this, :index) < 10) do
            JR.lset(f, :basicDecimal, JR.call(JR.get(this, :velocityInterface), :jm_getVelocityYBasicDecimalP, []))
            JR.call(JR.lget(f, :basicDecimal), :jm_setint, [0])
            JR.call(JR.lget(f, :basicDecimal), :jm_subtractint, [JR.lget(f, :y)])
            JR.postinc(this, :index, 1)
        else
            JR.put(this, :index, 0)
            JR.call(this, :jm_processAI, [JR.lget(f, :allBinaryLayerManager)])
        end
        end
    end)
  end
end


