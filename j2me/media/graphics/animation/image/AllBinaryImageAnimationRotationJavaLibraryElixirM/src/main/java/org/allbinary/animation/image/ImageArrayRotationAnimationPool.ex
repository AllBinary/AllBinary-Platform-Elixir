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
# package org.allbinary.animation.image

defmodule ImageArrayRotationAnimationPool do
  def jsuper(), do: BasicArrayListResetablePool
def jstatic_IMAGE_ROTATION_ANIMATION_POOL(), do: JR.static_get(__MODULE__, :IMAGE_ROTATION_ANIMATION_POOL, fn -> ImageArrayRotationAnimationPool.jnew(ImageArrayRotationAnimationCacheableInterfaceFactory.jnew()) end)
  def jstatic_set_IMAGE_ROTATION_ANIMATION_POOL(value), do: JR.static_put(__MODULE__, :IMAGE_ROTATION_ANIMATION_POOL, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_cacheableInterfaceFactoryInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cacheableInterfaceFactoryInterface, p_cacheableInterfaceFactoryInterface)
        BasicArrayListResetablePool.jinit(this, JR.lget(f, :cacheableInterfaceFactoryInterface))
        ImageArrayRotationAnimationPool.jinitfields(this)
    end)
  end

  def jnew(p_cacheableInterfaceFactoryInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cacheableInterfaceFactoryInterface)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL()})
    end)
  end


  def jm_remove(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.lset(f, :cacheableInterface, BasicArrayListResetablePool.jm_remove(this, JR.lget(f, :key)))
        JR.lset(f, :allBinaryImageRotationAnimationInfo, JR.lget(f, :key))
        JR.lset(f, :imageArrayRotationAnimationCacheable, (JR.lget(f, :cacheableInterface)))
        JR.call(JR.lget(f, :imageArrayRotationAnimationCacheable), :jm_setImageArray, [JR.call(JR.lget(f, :allBinaryImageRotationAnimationInfo), :jm_getImageArray, [])])
        throw({:jreturn, JR.lget(f, :cacheableInterface)})
    end)
  end
end


