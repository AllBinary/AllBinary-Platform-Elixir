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
# package org.allbinary.media.image

defmodule ImageScaleUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageScaleUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageScaleUtil.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_createImage2(this, p_imageCache, p_originalImage, p_scaleNominatorX, p_scaleDenominatorX, p_scaleNominatorY, p_scaleDenominatorY, p_cached) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :originalImage, p_originalImage)
      JR.lset(f, :scaleNominatorX, p_scaleNominatorX)
      JR.lset(f, :scaleDenominatorX, p_scaleDenominatorX)
      JR.lset(f, :scaleNominatorY, p_scaleNominatorY)
      JR.lset(f, :scaleDenominatorY, p_scaleDenominatorY)
      JR.lset(f, :cached, p_cached)
        throw({:jreturn, JR.call(this, :jm_createImage3, [JR.lget(f, :imageCache), JR.lget(f, :originalImage), JR.lget(f, :scaleNominatorX), JR.lget(f, :scaleDenominatorX), JR.lget(f, :scaleNominatorY), JR.lget(f, :scaleDenominatorY), JR.lget(f, :cached), true])})
    end)
  end


  def jm_createImage3(this, p_imageCache, p_originalImage, p_scaleNominatorX, p_scaleDenominatorX, p_scaleNominatorY, p_scaleDenominatorY, p_cached, p_mutable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageCache, p_imageCache)
      JR.lset(f, :originalImage, p_originalImage)
      JR.lset(f, :scaleNominatorX, p_scaleNominatorX)
      JR.lset(f, :scaleDenominatorX, p_scaleDenominatorX)
      JR.lset(f, :scaleNominatorY, p_scaleNominatorY)
      JR.lset(f, :scaleDenominatorY, p_scaleDenominatorY)
      JR.lset(f, :cached, p_cached)
      JR.lset(f, :mutable, p_mutable)
        throw({:jreturn, JR.lget(f, :originalImage)})
    end)
  end
end


