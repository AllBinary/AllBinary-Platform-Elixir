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
# package org.allbinary.game.combat.damage

defmodule ExplosionResources do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ExplosionResources.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EXPLOSION_90_RESOURCE, nil)
    JR.put(this, :EXPLOSION_60_RESOURCE, nil)
    JR.put(this, :HALF_EXPLOSION_RESOURCE, nil)
    JR.put(this, :THIRD_EXPLOSION_RESOURCE, nil)
        JR.put(this, :EXPLOSION_90_RESOURCE, "/explosion_sprite_90_by_90.png")
        JR.put(this, :EXPLOSION_60_RESOURCE, "/explosion_sprite_60_by_60.png")
        JR.put(this, :HALF_EXPLOSION_RESOURCE, "/explosion_sprite_30_by_30.png")
        JR.put(this, :THIRD_EXPLOSION_RESOURCE, "/explosion_sprite_15_by_15.png")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ExplosionResources.jstatic_instance()})
    end)
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
end


