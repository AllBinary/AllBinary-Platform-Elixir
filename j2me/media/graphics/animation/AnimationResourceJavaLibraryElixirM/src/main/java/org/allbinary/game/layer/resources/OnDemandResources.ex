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
# package org.allbinary.game.layer.resources

defmodule OnDemandResources do
  def jsuper(), do: JObject
def jstatic_NULL_ON_DEMAND_RESOURCES(), do: JR.static_get(__MODULE__, :NULL_ON_DEMAND_RESOURCES, fn -> OnDemandResources.jnew() end)
  def jstatic_set_NULL_ON_DEMAND_RESOURCES(value), do: JR.static_put(__MODULE__, :NULL_ON_DEMAND_RESOURCES, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
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


  def jm_waitFor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_initAt(this, p_imageCache, p_resourceAnimationInterfaceFactoryInterfaceFactory, p_portion, p_loadingString, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :resourceAnimationInterfaceFactoryInterfaceFactory, p_resourceAnimationInterfaceFactoryInterfaceFactory)
      JR.lset(f, :portion, p_portion)
      JR.lset(f, :loadingString, p_loadingString)
      JR.lset(f, :index, p_index)
        throw({:jreturn, 0})
    end)
  end
end


