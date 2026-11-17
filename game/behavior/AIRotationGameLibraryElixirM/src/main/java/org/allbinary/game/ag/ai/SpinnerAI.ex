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

defmodule SpinnerAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :isEven, false)
    JR.put(this, :direction, nil)
        JR.put(this, :isEven, false)
        
    nil
  end


  def jinit(this, p_direction, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        SpinnerAI.jinitfields(this)
        JR.put(this, :direction, JR.lget(f, :direction))
    end)
  end

  def jnew(p_direction, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_direction, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if JR.get(this, :isEven) do
            BasicAI.jm_processKeyAI(this, JR.aget(JR.get(this, :direction), 0))
            JR.put(this, :isEven, false)
        else
            BasicAI.jm_processKeyAI(this, Canvas.jstatic_KEY_NUM1())
            JR.put(this, :isEven, true)
        end
    end)
  end
end


