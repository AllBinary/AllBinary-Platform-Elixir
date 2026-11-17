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
# package org.allbinary.game.layer

defmodule LayerPlacementTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LayerPlacementTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MAP, nil)
    JR.put(this, :LEFT, nil)
    JR.put(this, :DOWN, nil)
    JR.put(this, :UP, nil)
    JR.put(this, :RIGHT, nil)
        JR.put(this, :MAP, LayerPlacementType.jnew(J.Integer.jstatic_MAX_VALUE()))
        JR.put(this, :LEFT, LayerPlacementType.jnew(JR.call(JR.get(DirectionFactory.jm_getInstance(), :LEFT), :jm_getValue, [])))
        JR.put(this, :DOWN, LayerPlacementType.jnew(JR.call(JR.get(DirectionFactory.jm_getInstance(), :DOWN), :jm_getValue, [])))
        JR.put(this, :UP, LayerPlacementType.jnew(JR.call(JR.get(DirectionFactory.jm_getInstance(), :UP), :jm_getValue, [])))
        JR.put(this, :RIGHT, LayerPlacementType.jnew(JR.call(JR.get(DirectionFactory.jm_getInstance(), :RIGHT), :jm_getValue, [])))
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
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
        throw({:jreturn, LayerPlacementTypeFactory.jstatic_instance()})
    end)
  end
end


