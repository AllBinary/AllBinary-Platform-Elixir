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
# package org.allbinary.game.collision

defmodule CollidableInterface do
  def jsuper(), do: JObject


  def jm_isCollidable(this, p_ownerLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      throw({:jexception, JR.exception("AbstractMethodError", "isCollidable")})
    end)
  end


  def jm_isCollision(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "isCollision")})
    end)
  end


  def jm_collide(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "collide")})
    end)
  end


  def jm_getCollisionTypeWith(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "getCollisionTypeWith")})
    end)
  end
end


