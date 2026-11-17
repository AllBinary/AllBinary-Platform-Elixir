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
# package org.allbinary.game.ag.layer.weapon.mine

defmodule MineLayerFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :viewPositionFactoryInterface, nil)
        
    nil
  end


  def jinit(this, p_viewPositionFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :viewPositionFactoryInterface, p_viewPositionFactoryInterface)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :viewPositionFactoryInterface, JR.lget(f, :viewPositionFactoryInterface))
    end)
  end

  def jnew(p_viewPositionFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_viewPositionFactoryInterface)
    this
  end


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, MineLayer.jnew(JR.call(JR.get(this, :viewPositionFactoryInterface), :jm_getInstance, []))})
    end)
  end
end


