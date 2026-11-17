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
# package org.allbinary.game.ag.layer.pickup.points

defmodule PointsResources do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> PointsResources.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :RESOURCE, nil)
    JR.put(this, :RESOURCE_2, nil)
    JR.put(this, :RESOURCE_3, nil)
    JR.put(this, :RESOURCE_4, nil)
        JR.put(this, :RESOURCE, "points_drop_20_by_20.png")
        JR.put(this, :RESOURCE_2, "points_2_drop_20_by_20.png")
        JR.put(this, :RESOURCE_3, "points_3_drop_20_by_20.png")
        JR.put(this, :RESOURCE_4, "points_4_drop_20_by_20.png")
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
        throw({:jreturn, PointsResources.jstatic_SINGLETON()})
    end)
  end
end


