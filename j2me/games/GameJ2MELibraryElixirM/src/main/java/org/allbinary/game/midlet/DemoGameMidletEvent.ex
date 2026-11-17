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
# package org.allbinary.game.midlet

defmodule DemoGameMidletEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :demoGameMidletState, nil)
        
    nil
  end


  def jinit(this, p_anyType, p_demoGameMidletState) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :demoGameMidletState, p_demoGameMidletState)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        DemoGameMidletEvent.jinitfields(this)
        JR.put(this, :demoGameMidletState, JR.lget(f, :demoGameMidletState))
    end)
  end

  def jnew(p_anyType, p_demoGameMidletState) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType, p_demoGameMidletState)
    this
  end


  def jm_init(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_setSource, [JR.lget(f, :anyType)])
    end)
  end


  def jm_setDemoGameMidletState(this, p_demoGameMidletState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :demoGameMidletState, p_demoGameMidletState)
        JR.put(this, :demoGameMidletState, JR.lget(f, :demoGameMidletState))
    end)
  end


  def jm_getDemoGameMidletState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :demoGameMidletState)})
    end)
  end
end


