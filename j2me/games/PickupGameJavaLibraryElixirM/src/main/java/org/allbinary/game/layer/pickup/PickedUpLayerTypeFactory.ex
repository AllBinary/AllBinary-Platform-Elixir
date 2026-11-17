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

defmodule PickedUpLayerTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PickedUpLayerTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
    JR.put(this, :BEAM, nil)
    JR.put(this, :MINE, nil)
    JR.put(this, :PROJECTILE, nil)
    JR.put(this, :ENHANCEMENT, nil)
    JR.put(this, :MORPH, nil)
    JR.put(this, :PART, nil)
    JR.put(this, :HEAL, nil)
    JR.put(this, :LIFE, nil)
    JR.put(this, :POINTS, nil)
        JR.put(this, :NONE, PickedUpLayerType.jnew(JR.get(StringUtil.jm_getInstance(), :NULL_STRING)))
        JR.put(this, :BEAM, PickedUpLayerType.jnew("BEAM"))
        JR.put(this, :MINE, PickedUpLayerType.jnew("MINE"))
        JR.put(this, :PROJECTILE, PickedUpLayerType.jnew("PROJECTILE"))
        JR.put(this, :ENHANCEMENT, PickedUpLayerType.jnew("Enhancement"))
        JR.put(this, :MORPH, PickedUpLayerType.jnew("Morph"))
        JR.put(this, :PART, PickedUpLayerType.jnew("Part"))
        JR.put(this, :HEAL, PickedUpLayerType.jnew("Heal"))
        JR.put(this, :LIFE, PickedUpLayerType.jnew("Life"))
        JR.put(this, :POINTS, PickedUpLayerType.jnew("Points"))
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
        throw({:jreturn, PickedUpLayerTypeFactory.jstatic_instance()})
    end)
  end
end


