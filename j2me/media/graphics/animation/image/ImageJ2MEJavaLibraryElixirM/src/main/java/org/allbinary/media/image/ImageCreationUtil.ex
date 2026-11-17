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

defmodule ImageCreationUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageCreationUtil.jnew() end)
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
        throw({:jreturn, ImageCreationUtil.jstatic_instance()})
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


  def jm_createImageWH(this, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :image, JR.call(GameFeatureImageCacheFactory.jm_getInstance(), :jm_get, [JR.class_name(this), JR.lget(f, :width), JR.lget(f, :height)]))
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end


  def jm_createImage(this, p_width, p_height, p_maxScaleX, p_maxScaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :maxScaleX, p_maxScaleX)
      JR.lset(f, :maxScaleY, p_maxScaleY)
        JR.lset(f, :image, JR.call(GameFeatureImageCacheFactory.jm_getInstance(), :jm_get, [JR.class_name(this), JR.int32(JR.int32(JR.d2i((((JR.lget(f, :width) * 1.0) * JR.lget(f, :maxScaleX))))) + 1), JR.int32(JR.int32(JR.d2i((((JR.lget(f, :height) * 1.0) * JR.lget(f, :maxScaleY))))) + 1)]))
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end
end


