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

defmodule PickupBehaviorInterface do
  def jsuper(), do: JObject


  def jm_doPickup(this, p_pickupProcessorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupProcessorInterface, p_pickupProcessorInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "doPickup")})
    end)
  end


  def jm_doPickupLayer(this, p_pickupLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupLayerInterface, p_pickupLayerInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "doPickupLayer")})
    end)
  end
end


