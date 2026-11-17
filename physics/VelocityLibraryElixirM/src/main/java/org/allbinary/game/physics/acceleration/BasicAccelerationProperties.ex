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
# package org.allbinary.game.physics.acceleration

defmodule BasicAccelerationProperties do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :forward, 0)
    JR.put(this, :reverse, 0)
        JR.put(this, :forward, 0)
        JR.put(this, :reverse, 0)
    nil
  end


  def jinit(this, p_forward, p_reverse) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :forward, p_forward)
      JR.lset(f, :reverse, p_reverse)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setForward, [JR.lget(f, :forward)])
        JR.call(this, :jm_setReverse, [JR.lget(f, :reverse)])
    end)
  end

  def jnew(p_forward, p_reverse) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_forward, p_reverse)
    this
  end


  def jm_setReverse(this, p_reverse) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :reverse, p_reverse)
        JR.put(this, :reverse, JR.lget(f, :reverse))
    end)
  end


  def jm_getReverse(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :reverse)})
    end)
  end


  def jm_setForward(this, p_forward) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :forward, p_forward)
        JR.put(this, :forward, JR.lget(f, :forward))
    end)
  end


  def jm_getForward(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :forward)})
    end)
  end
end


