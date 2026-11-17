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
# package org.allbinary.game.combat.destroy

defmodule DestroyableSimpleBehavior do
  def jsuper(), do: DestroyableBaseBehavior

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ownerLayer, nil)
    JR.put(this, :destroyed, false)
        
        JR.put(this, :destroyed, false)
    nil
  end


  def jinit(this, p_ownerLayer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayer, p_ownerLayer)
      DestroyableBaseBehavior.jinit(this)
      jinitfields(this)
        JR.put(this, :ownerLayer, JR.lget(f, :ownerLayer))
    end)
  end

  def jnew(p_ownerLayer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayer)
    this
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
            JR.call(DestroyedLayerProcessor.jm_getInstance(), :jm_add, [JR.get(this, :ownerLayer)])
        end
    end)
  end
end


