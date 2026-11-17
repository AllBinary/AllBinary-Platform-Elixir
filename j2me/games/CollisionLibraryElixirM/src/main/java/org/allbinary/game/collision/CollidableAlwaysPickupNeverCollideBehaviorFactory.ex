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

defmodule CollidableAlwaysPickupNeverCollideBehaviorFactory do
  def jsuper(), do: CollidableBaseBehaviorFactory
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> CollidableAlwaysPickupNeverCollideBehaviorFactory.jnew() end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :instance, nil)
        JR.put(this, :instance, CollidableAlwaysPickupNeverCollideBehavior.jnew())
    nil
  end

  def jinit(this) do
    CollidableBaseBehaviorFactory.jinit(this)
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
        throw({:jreturn, CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC()})
    end)
  end


  def jm_createBehavior(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :instance)})
    end)
  end
end


