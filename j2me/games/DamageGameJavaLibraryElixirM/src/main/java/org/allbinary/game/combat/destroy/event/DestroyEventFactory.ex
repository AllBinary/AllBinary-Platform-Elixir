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
# package org.allbinary.game.combat.destroy.event

defmodule DestroyEventFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :combatGameCanvas, nil)
        
    nil
  end


  def jinit(this, p_combatGameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :combatGameCanvas, p_combatGameCanvas)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :combatGameCanvas, JR.lget(f, :combatGameCanvas))
    end)
  end

  def jnew(p_combatGameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_combatGameCanvas)
    this
  end


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, DestroyedEvent.jnew(JR.get(this, :combatGameCanvas))})
    end)
  end
end


