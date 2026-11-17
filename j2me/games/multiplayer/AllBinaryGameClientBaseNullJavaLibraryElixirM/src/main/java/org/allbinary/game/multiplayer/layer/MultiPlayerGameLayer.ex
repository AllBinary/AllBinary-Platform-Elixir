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
# package org.allbinary.game.multiplayer.layer

defmodule MultiPlayerGameLayer do
  def jsuper(), do: CollidableDestroyableDamageableLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_remoteInfo, p_groupInterface, p_name, p_layerInfo, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :remoteInfo, p_remoteInfo)
      JR.lset(f, :groupInterface, p_groupInterface)
      JR.lset(f, :name, p_name)
      JR.lset(f, :layerInfo, p_layerInfo)
      JR.lset(f, :viewPosition, p_viewPosition)
        CollidableDestroyableDamageableLayer.jinit(this, JR.lget(f, :groupInterface), JR.lget(f, :name), JR.lget(f, :layerInfo), JR.lget(f, :viewPosition))
        MultiPlayerGameLayer.jinitfields(this)
    end)
  end

  def jnew(p_remoteInfo, p_groupInterface, p_name, p_layerInfo, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_remoteInfo, p_groupInterface, p_name, p_layerInfo, p_viewPosition)
    this
  end


  def jm_getMultiplayerBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR()})
    end)
  end


  def jm_setPingInfo(this, p_show) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :show, p_show)
        nil
    end)
  end


  def jm_setFiring(this, p_firing) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :firing, p_firing)
        nil
    end)
  end


  def jm_getFiring(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


