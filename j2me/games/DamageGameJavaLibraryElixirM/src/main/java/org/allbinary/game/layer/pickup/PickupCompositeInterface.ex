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

defmodule PickupCompositeInterface do
  def jsuper(), do: JObject


  def jm_getPickupBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getPickupBehavior")})
    end)
  end


  def jm_setPickupBehavior(this, p_pickupBehavior) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickupBehavior, p_pickupBehavior)
      throw({:jexception, JR.exception("AbstractMethodError", "setPickupBehavior")})
    end)
  end
end


