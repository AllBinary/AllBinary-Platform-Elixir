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

defmodule CollidableNeverCollideBehavior do
  def jsuper(), do: CollidableBaseBehavior

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_isCollidable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :isCollidable, p_isCollidable)
        CollidableBaseBehavior.jinit(this, JR.lget(f, :isCollidable))
        CollidableNeverCollideBehavior.jinitfields(this)
    end)
  end

  def jnew(p_isCollidable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_isCollidable)
    this
  end


  def jm_isCollision(this, p_ownerLayer, p_allbinaryCollidableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :allbinaryCollidableLayer, p_allbinaryCollidableLayer)
        throw({:jreturn, false})
    end)
  end


  def jm_collide(this, p_ownerLayer, p_allbinaryCollidableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :allbinaryCollidableLayer, p_allbinaryCollidableLayer)
        nil
    end)
  end


  def jm_collideInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        nil
    end)
  end


  def jm_isCollisionInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        throw({:jreturn, false})
    end)
  end
end


