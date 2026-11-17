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

defmodule SpecialGameInputProcessor do
  def jsuper(), do: GameInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :collidableDestroyableDamageableLayer, nil)
        
    nil
  end


  def jinit(this, p_collidableDestroyableDamageableLayer) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
      GameInputProcessor.jinit(this)
      jinitfields(this)
        JR.put(this, :collidableDestroyableDamageableLayer, JR.lget(f, :collidableDestroyableDamageableLayer))
    end)
  end

  def jnew(p_collidableDestroyableDamageableLayer) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_collidableDestroyableDamageableLayer)
    this
  end
end


