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

defmodule CollidableBaseBehavior do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :layerCollisionUtil, nil)
    JR.put(this, :collidable, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :layerCollisionUtil, LayerCollisionUtil.jm_getInstance())
        JR.put(this, :collidable, true)
    nil
  end


  def jinit(this, p_collidable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidable, p_collidable)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :collidable, JR.lget(f, :collidable))
    end)
  end

  def jnew(p_collidable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidable)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.class_name(this)})
    end)
  end


  def jm_setCollidable(this, p_collidable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidable, p_collidable)
        JR.put(this, :collidable, JR.lget(f, :collidable))
    end)
  end


  def jm_isCollidable(this, p_ownerLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
        throw({:jreturn, JR.get(this, :collidable)})
    end)
  end


  def jm_collide(this, p_ownerLayer, p_allbinaryCollidableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :allbinaryCollidableLayer, p_allbinaryCollidableLayer)
        throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED)]), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :COLON_SEP)]), :jm_append, [JR.class_name(this)]), :jm_toString, []))})
    end)
  end


  def jm_isCollision(this, p_ownerLayer, p_collisionLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collisionLayer, p_collisionLayer)
        throw({:jreturn, JR.call(JR.get(this, :layerCollisionUtil), :jm_isCollision, [JR.lget(f, :ownerLayer), JR.lget(f, :collisionLayer)])})
    end)
  end


  def jm_isCollisionInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        throw({:jreturn, JR.call(JR.get(this, :layerCollisionUtil), :jm_isCollision, [JR.lget(f, :ownerLayer), JR.lget(f, :collidableInterfaceCompositeInterface)])})
    end)
  end


  def jm_collideInterface(this, p_ownerLayer, p_collidableInterfaceCompositeInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_paint(this, p_ownerLayer, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getCollisionTypeWith(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        throw({:jreturn, JR.get(CollisionTypeFactory.jm_getInstance(), :NONE)})
    end)
  end
end


