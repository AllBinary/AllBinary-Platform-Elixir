# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

defmodule GameAdStateBase do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :adConfigurationP, nil)
    JR.put(this, :advertisementsP, nil)
    JR.put(this, :okayToShowAdsP, false)
        
        JR.put(this, :advertisementsP, Advertisements.jnew())
        JR.put(this, :okayToShowAdsP, false)
    nil
  end


  def jinit(this, p_adConfiguration) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :adConfiguration, p_adConfiguration)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :adConfigurationP, JR.lget(f, :adConfiguration))
    end)
  end

  def jnew(p_adConfiguration) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_adConfiguration)
    this
  end


  def jm_initViewArray(this, p_viewArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :viewArray, p_viewArray)
        nil
    end)
  end


  def jm_onStart(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        JR.call(this, :jm_init, [])
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_isShowingAtLocation(this, p_location) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :location, p_location)
        throw({:jreturn, false})
    end)
  end


  def jm_isShowingAt(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_show(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_hide(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_processAdState(this, p_gameState, p_gameType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameState, p_gameState)
      JR.lset(f, :gameType, p_gameType)
        nil
    end)
  end


  def jm_processPageAdState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_playingAdState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_playingAdStateWH(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        nil
    end)
  end


  def jm_notPlayingAdState(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setGameIsReady(this, p_gameIsReady) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameIsReady, p_gameIsReady)
        nil
    end)
  end


  def jm_isGameIsReady(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getAdvertisements(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :advertisementsP)})
    end)
  end


  def jm_getAdConfiguration(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :adConfigurationP)})
    end)
  end


  def jm_isOkayToShowPageAd(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setOkayToShowAds(this, p_okayToShowAds) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :okayToShowAds, p_okayToShowAds)
        JR.put(this, :okayToShowAdsP, JR.lget(f, :okayToShowAds))
    end)
  end


  def jm_isOkayToShowAds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :okayToShowAdsP)})
    end)
  end


  def jm_isEnabled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end
end


