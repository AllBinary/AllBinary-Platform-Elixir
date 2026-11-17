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
# package org.allbinary.game.ag.layer.pickup.life

defmodule LifeLayerCircularStaticPool do
  def jsuper(), do: AllBinaryLayerCircularPool

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_allbinaryLayerFactoryInterface, p_total) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerFactoryInterface, p_allbinaryLayerFactoryInterface)
      JR.lset(f, :total, p_total)
      AllBinaryLayerCircularPool.jinit(this)
      jinitfields(this)
        AllBinaryLayerCircularPool.jm_initAllBinaryLayerCircularPool(this, JR.lget(f, :allbinaryLayerFactoryInterface), JR.lget(f, :total))
    end)
  end

  def jnew(p_allbinaryLayerFactoryInterface, p_total) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_allbinaryLayerFactoryInterface, p_total)
    this
  end


  def jm_visit(this, p_sourceLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
        JR.lset(f, :lifeLayer, JR.call(this, :jm_getNextInstance, []))
        JR.lset(f, :lifeInterfaceCompositeInterface, JR.lget(f, :sourceLayerInterface))
        JR.lset(f, :lifeInterface, JR.call(JR.lget(f, :lifeInterfaceCompositeInterface), :jm_getLifeInterface, []))
        JR.call(JR.lget(f, :lifeLayer), :jm_visit, [JR.lget(f, :lifeInterface)])
    end)
  end
end


