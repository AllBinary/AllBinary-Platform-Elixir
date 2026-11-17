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
# package org.allbinary.game.layer.special

defmodule SpecialFireGameInputProcessor do
  def jsuper(), do: SpecialGameInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_collidableDestroyableDamageableLayer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
        SpecialGameInputProcessor.jinit(this, JR.lget(f, :collidableDestroyableDamageableLayer))
        SpecialFireGameInputProcessor.jinitfields(this)
    end)
  end

  def jnew(p_collidableDestroyableDamageableLayer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidableDestroyableDamageableLayer)
    this
  end


  def jm_processEvent(this, p_allbinaryLayerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        JR.call(JR.get(this, :collidableDestroyableDamageableLayer), :jm_fire, [JR.lget(f, :allbinaryLayerManager), JR.lget(f, :gameKeyEvent)])
    end)
  end
end


