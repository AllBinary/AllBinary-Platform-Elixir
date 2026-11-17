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

defmodule LayerCollisionUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LayerCollisionUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :collisionProcessor, nil)
        JR.put(this, :collisionProcessor, nil)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LayerCollisionUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
        if (JR.call(OpenGLFeatureUtil.jm_getInstance(), :jm_isAnyThreed, []) && !JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :gameFeatureFactory), :COLLISIONS_FORCED_TWO_DIMENSIONAL)])) do
            JR.put(this, :collisionProcessor, CollisionThreedProcessor.jnew())
        else
            JR.put(this, :collisionProcessor, Collision2DProcessor.jnew())
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isCollision(this, p_myLayer, p_myLayer2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :myLayer, p_myLayer)
      JR.lset(f, :myLayer2, p_myLayer2)
        throw({:jreturn, JR.call(JR.get(this, :collisionProcessor), :jm_isCollision, [JR.lget(f, :myLayer), JR.lget(f, :myLayer2)])})
    end)
  end
end


