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
# package org.allbinary.game.layer.pickup

defmodule PickedUpLayerInterfaceFactory do
  def jsuper(), do: PickedUpLayerInterfaceFactoryBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :pickedUpLayerType, nil)
    JR.put(this, :iconLayer, nil)
    JR.put(this, :animationInterface, nil)
        
        
        
    nil
  end


  def jinit(this, p_pickeUpLayerType, p_iconLayer, p_animationInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :pickeUpLayerType, p_pickeUpLayerType)
      JR.lset(f, :iconLayer, p_iconLayer)
      JR.lset(f, :animationInterface, p_animationInterface)
      PickedUpLayerInterfaceFactoryBase.jinit(this)
      jinitfields(this)
        JR.put(this, :pickedUpLayerType, JR.lget(f, :pickeUpLayerType))
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :iconLayer, JR.lget(f, :iconLayer))
    end)
  end

  def jnew(p_pickeUpLayerType, p_iconLayer, p_animationInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_pickeUpLayerType, p_iconLayer, p_animationInterface)
    this
  end


  def jm_getIconLayer(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :iconLayer)})
    end)
  end


  def jm_getAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationInterface)})
    end)
  end


  def jm_getPickedUpLayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :pickedUpLayerType)})
    end)
  end
end


