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

defmodule CollisionTypeFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> CollisionTypeFactory.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
    JR.put(this, :DAMAGE, nil)
    JR.put(this, :PICKUP, nil)
    JR.put(this, :COLLISION, nil)
        JR.put(this, :NONE, CollisionType.jnew("None"))
        JR.put(this, :DAMAGE, CollisionType.jnew("Damage"))
        JR.put(this, :PICKUP, CollisionType.jnew("Pickup"))
        JR.put(this, :COLLISION, CollisionType.jnew("Collision"))
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
        throw({:jreturn, CollisionTypeFactory.jstatic_SINGLETON()})
    end)
  end
end


