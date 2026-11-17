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
# package org.allbinary.time

defmodule NoTimeDelayHelper do
  def jsuper(), do: TimeDelayHelper
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> NoTimeDelayHelper.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        TimeDelayHelper.jinit(this, 0)
        NoTimeDelayHelper.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isTimeTNT(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_isTimeSinceTNT(this, p_delay) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
        throw({:jreturn, true})
    end)
  end


  def jm_isTime(this, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTime, p_currentTime)
        throw({:jreturn, true})
    end)
  end


  def jm_isTimeSince(this, p_delay, p_currentTime) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :delay, p_delay)
      JR.lset(f, :currentTime, p_currentTime)
        throw({:jreturn, true})
    end)
  end
end


