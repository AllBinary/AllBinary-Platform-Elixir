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
# package org.allbinary.animation.transition

defmodule RunAtEndAnimationListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :runnable, nil)
        
    nil
  end


  def jinit(this, p_runnable) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :runnable, JR.lget(f, :runnable))
    end)
  end

  def jnew(p_runnable) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_runnable)
    this
  end


  def jm_onPlatformAnimationStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onPlatformAnimationEnd(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_onPlatformAnimationRepeat(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end
end


