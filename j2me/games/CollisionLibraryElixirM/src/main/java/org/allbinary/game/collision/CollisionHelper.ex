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

defmodule CollisionHelper do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :sourceLayerInterface, nil)
        
    nil
  end


  def jinit(this, p_sourceLayerInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :sourceLayerInterface, JR.lget(f, :sourceLayerInterface))
    end)
  end

  def jnew(p_sourceLayerInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_sourceLayerInterface)
    this
  end


  def jm_isCollidable(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        throw({:jreturn, true})
    end)
  end


  def jm_getOwnerLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sourceLayerInterface)})
    end)
  end


  def jm_setOwnerLayerInterface(this, p_sourceLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
        JR.put(this, :sourceLayerInterface, JR.lget(f, :sourceLayerInterface))
    end)
  end
end


