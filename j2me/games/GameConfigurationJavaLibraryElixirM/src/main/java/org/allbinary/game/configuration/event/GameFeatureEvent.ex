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
# package org.allbinary.game.configuration.event

defmodule GameFeatureEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :whatChanged, nil)
        
    nil
  end


  def jinit(this, p_anyType, p_whatChanged) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :whatChanged, p_whatChanged)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        GameFeatureEvent.jinitfields(this)
        JR.put(this, :whatChanged, JR.lget(f, :whatChanged))
    end)
  end

  def jnew(p_anyType, p_whatChanged) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType, p_whatChanged)
    this
  end


  def jm_getWhatChanged(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :whatChanged)})
    end)
  end


  def jm_getGameOption(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSource, [])})
    end)
  end
end


