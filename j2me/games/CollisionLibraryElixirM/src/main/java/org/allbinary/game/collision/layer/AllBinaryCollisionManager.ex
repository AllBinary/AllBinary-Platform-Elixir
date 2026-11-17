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
# package org.allbinary.game.collision.layer

defmodule AllBinaryCollisionManager do
  def jsuper(), do: JObject
def jstatic_allBinaryCollisionManager(), do: JR.static_get(__MODULE__, :allBinaryCollisionManager, fn -> AllBinaryCollisionManager.jnew() end)
  def jstatic_set_allBinaryCollisionManager(value), do: JR.static_put(__MODULE__, :allBinaryCollisionManager, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AllBinaryCollisionManager.jstatic_allBinaryCollisionManager()})
    end)
  end


  def jm_process(this, p_layerManager, p_collidableInterfaceCompositeInterface, p_startIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
      JR.lset(f, :startIndex, p_startIndex)
        JR.lset(f, :size, JR.call(JR.lget(f, :layerManager), :jm_getSize, []))
        JR.lset(f, :index, JR.int32(JR.lget(f, :startIndex) + 1))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :collidableInterfaceCompositeInterface2, JR.call(JR.lget(f, :layerManager), :jm_getLayerAt, [JR.lget(f, :index)]))
            JR.call(this, :jm_collide, [JR.lget(f, :layerManager), JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface2)])
        end)
    end)
  end


  def jm_collide(this, p_layerManager, p_collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :collidableInterfaceCompositeInterface, p_collidableInterfaceCompositeInterface)
      JR.lset(f, :collidableInterfaceCompositeInterface2, p_collidableInterfaceCompositeInterface2)
        JR.lset(f, :collidableBase2, JR.call(JR.lget(f, :collidableInterfaceCompositeInterface2), :jm_getCollidableInferface, []))
        JR.lset(f, :collidableBase, JR.call(JR.lget(f, :collidableInterfaceCompositeInterface), :jm_getCollidableInferface, []))
        if JR.call(JR.lget(f, :collidableBase2), :jm_isCollidable, [JR.lget(f, :collidableInterfaceCompositeInterface)]) do
            if JR.call(JR.lget(f, :collidableBase), :jm_isCollisionInterface, [JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface2)]) do
                JR.call(JR.lget(f, :collidableBase), :jm_collideInterface, [JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface2)])
                JR.call(JR.lget(f, :collidableBase2), :jm_collideInterface, [JR.lget(f, :collidableInterfaceCompositeInterface), JR.lget(f, :collidableInterfaceCompositeInterface)])
            end
        end
    end)
  end
end


