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

defmodule PickupLayer do
  def jsuper(), do: MultiPlayerGameLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :pickedUpLayerInterfaceFactoryInterface, nil)
    JR.put(this, :destroyed, false)
    JR.put(this, :animationInterface, nil)
        JR.put(this, :pickedUpLayerInterfaceFactoryInterface, CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY())
        JR.put(this, :destroyed, false)
        JR.put(this, :animationInterface, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
    nil
  end


  def jinit(this, p_name, p_remoteInfo, p_total, p_pickedUpLayerInterfaceFactoryInterface, p_animationInterface, p_rectangle, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :remoteInfo, p_remoteInfo)
      JR.lset(f, :total, p_total)
      JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, p_pickedUpLayerInterfaceFactoryInterface)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
        MultiPlayerGameLayer.jinit(this, JR.lget(f, :remoteInfo), JR.get(BasicGroupFactory.jm_getInstance(), :NONE_ARRAY), JR.lget(f, :name), JR.lget(f, :rectangle), JR.lget(f, :viewPosition))
        PickupLayer.jinitfields(this)
        JR.call(this, :jm_setCollidableInferface, [JR.call(CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance(), :jm_createBehavior, [])])
        JR.call(this, :jm_setLayerWidth, [10])
        JR.call(this, :jm_setLayerHeight, [10])
        JR.call(this, :jm_init, [JR.lget(f, :pickedUpLayerInterfaceFactoryInterface), JR.lget(f, :animationInterface)])
    end)
  end

  def jnew(p_name, p_remoteInfo, p_total, p_pickedUpLayerInterfaceFactoryInterface, p_animationInterface, p_rectangle, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_remoteInfo, p_total, p_pickedUpLayerInterfaceFactoryInterface, p_animationInterface, p_rectangle, p_viewPosition)
    this
  end


  def jm_init(this, p_pickedUpLayerInterfaceFactoryInterface, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pickedUpLayerInterfaceFactoryInterface, p_pickedUpLayerInterfaceFactoryInterface)
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.put(this, :pickedUpLayerInterfaceFactoryInterface, JR.lget(f, :pickedUpLayerInterfaceFactoryInterface))
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.call(this, :jm_setDestroyed, [false])
    end)
  end


  def jm_initXYZ(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.call(this, :jm_setPosition, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(this, :jm_getViewPosition, []))
        JR.lset(f, :viewX, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
        JR.lset(f, :viewY, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :viewX), JR.lget(f, :viewY)])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(this, :jm_getViewPosition, []))
        JR.lset(f, :viewX, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
        JR.lset(f, :viewY, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), JR.lget(f, :viewX), JR.lget(f, :viewY), 3])
    end)
  end


  def jm_getPickedUpLayerInterfaceFactoryInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :pickedUpLayerInterfaceFactoryInterface)})
    end)
  end


  def jm_setPickedUp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setDestroyed, [true])
    end)
  end


  def jm_isDestroyed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :destroyed)})
    end)
  end


  def jm_setDestroyed(this, p_destroyed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyed, p_destroyed)
        JR.put(this, :destroyed, JR.lget(f, :destroyed))
        if JR.call(this, :jm_isDestroyed, []) do
            JR.call(DestroyedLayerProcessor.jm_getInstance(), :jm_add, [this])
        end
    end)
  end


  def jm_damage(this, p_damage, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :damageType, p_damageType)
        nil
    end)
  end


  def jm_getDamage(this, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageType, p_damageType)
        throw({:jreturn, 0})
    end)
  end


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        JR.lset(f, :openGLSurfaceChangedInterface, JR.get(this, :animationInterface))
        JR.call(JR.lget(f, :openGLSurfaceChangedInterface), :jm_set, [JR.lget(f, :gl)])
    end)
  end
end


