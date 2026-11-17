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

defmodule Advertisements do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :bannerList, nil)
    JR.put(this, :pageList, nil)
    JR.put(this, :myRandomFactory, nil)
        JR.put(this, :bannerList, BasicArrayListD.jnew())
        JR.put(this, :pageList, BasicArrayListD.jnew())
        JR.put(this, :myRandomFactory, MyRandomFactory.jm_getInstance())
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


  def jm_addPage(this, p_advertisementProcessorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :advertisementProcessorInterface, p_advertisementProcessorInterface)
        if !JR.call(JR.get(this, :pageList), :jm_contains, [JR.lget(f, :advertisementProcessorInterface)]) do
            JR.call(JR.get(this, :pageList), :jm_add, [JR.lget(f, :advertisementProcessorInterface)])
        end
    end)
  end


  def jm_startRandomPage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.call(JR.get(this, :pageList), :jm_size, []))
        if (JR.lget(f, :size) > 0) do
            JR.lset(f, :random, JR.call(JR.get(this, :myRandomFactory), :jm_getAbsoluteNextInt, [JR.lget(f, :size)]))
            JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :pageList), :objectArray), JR.lget(f, :random)))
            JR.call(JR.lget(f, :advertisementProcessorInterface), :jm_start, [])
        end
    end)
  end


  def jm_processRandomPage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(LockedUtil.jm_getInstance(), :jm_isLocked, []) do
            JR.lset(f, :size, JR.call(JR.get(this, :pageList), :jm_size, []))
            if (JR.lget(f, :size) > 0) do
                JR.lset(f, :random, JR.call(JR.get(this, :myRandomFactory), :jm_getAbsoluteNextInt, [JR.lget(f, :size)]))
                JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :pageList), :objectArray), JR.lget(f, :random)))
                JR.call(JR.lget(f, :advertisementProcessorInterface), :jm_process, [])
            end
        end
    end)
  end


  def jm_stopAllPage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.call(JR.get(this, :pageList), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :pageList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :advertisementProcessorInterface), :jm_stop, [])
        end)
    end)
  end


  def jm_addBanner(this, p_advertisementProcessorInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :advertisementProcessorInterface, p_advertisementProcessorInterface)
        if !JR.call(JR.get(this, :bannerList), :jm_contains, [JR.lget(f, :advertisementProcessorInterface)]) do
            JR.call(JR.get(this, :bannerList), :jm_add, [JR.lget(f, :advertisementProcessorInterface)])
        end
    end)
  end


  def jm_startAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.call(JR.get(this, :bannerList), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :bannerList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :advertisementProcessorInterface), :jm_start, [])
        end)
    end)
  end


  def jm_stopAllBanner(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, JR.call(JR.get(this, :bannerList), :jm_size, []))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :bannerList), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :advertisementProcessorInterface), :jm_stop, [])
        end)
    end)
  end


  def jm_getBanner(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.lset(f, :advertisementProcessorInterface, JR.aget(JR.get(JR.get(this, :bannerList), :objectArray), JR.lget(f, :index)))
        throw({:jreturn, JR.lget(f, :advertisementProcessorInterface)})
    end)
  end


  def jm_stopAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_stopAllBanner, [])
        JR.call(this, :jm_stopAllPage, [])
    end)
  end
end


