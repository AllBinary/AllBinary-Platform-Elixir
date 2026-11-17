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
# package org.allbinary.business.advertisement

defmodule AdConfiguration do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :INNERACTIVE, nil)
    JR.put(this, :LEADBOLT, nil)
    JR.put(this, :ADMOB, nil)
        
        
        
    nil
  end


  def jinit(this, p_advertIdArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :advertIdArray, p_advertIdArray)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :INNERACTIVE, JR.aget(JR.lget(f, :advertIdArray), 0))
        JR.put(this, :ADMOB, JR.aget(JR.lget(f, :advertIdArray), 1))
        JR.put(this, :LEADBOLT, JR.aget(JR.lget(f, :advertIdArray), 2))
    end)
  end

  def jnew(p_advertIdArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_advertIdArray)
    this
  end


  def jm_getValidAdSpots(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.anew(0, nil)})
    end)
  end


  def jm_process(this, p_gameState) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameState, p_gameState)
        nil
    end)
  end


  def jm_processDemo(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        nil
    end)
  end


  def jm_setShowAds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setToggleAds(this, p_showAds) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :showAds, p_showAds)
        nil
    end)
  end


  def jm_isShowAds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end
end


