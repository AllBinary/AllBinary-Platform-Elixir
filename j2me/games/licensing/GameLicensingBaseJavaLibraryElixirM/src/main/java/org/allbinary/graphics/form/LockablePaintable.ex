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
# package org.allbinary.graphics.form

defmodule LockablePaintable do
  def jsuper(), do: ItemPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animation, nil)
    JR.put(this, :lockedIndex, 0)
        JR.put(this, :animation, JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(LockedResources.jm_getInstance(), :LOCKED_DEMO_GAME_FEATURE_RESOURCE)]), :jm_getInstance, [0]))
        
    nil
  end


  def jinit(this, p_lockedIndex) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :lockedIndex, p_lockedIndex)
      ItemPaintable.jinit(this)
      jinitfields(this)
        JR.put(this, :lockedIndex, JR.lget(f, :lockedIndex))
    end)
  end

  def jnew(p_lockedIndex) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_lockedIndex)
    this
  end


  def jm_paint(this, p_graphics, p_currentIndex, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :currentIndex, p_currentIndex)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        if (JR.call(LockedUtil.jm_getInstance(), :jm_isLocked, []) && (JR.lget(f, :currentIndex) >= JR.call(this, :jm_getLockedIndex, []))) do
            JR.call(JR.call(this, :jm_getAnimation, []), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        end
    end)
  end


  def jm_getLockedIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :lockedIndex)})
    end)
  end


  def jm_getAnimation(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animation)})
    end)
  end
end


