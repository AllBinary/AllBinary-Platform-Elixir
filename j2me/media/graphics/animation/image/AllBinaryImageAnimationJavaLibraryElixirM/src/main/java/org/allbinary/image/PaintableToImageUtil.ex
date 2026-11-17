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
# package org.allbinary.image

defmodule PaintableToImageUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PaintableToImageUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getImage(p_paintableInterface, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :paintableInterface, p_paintableInterface)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :image, JR.call(GameFeatureImageCacheFactory.jm_getInstance(), :jm_get, [JR.class_name(PaintableToImageUtil.jstatic_instance()), JR.lget(f, :width), JR.lget(f, :height)]))
        JR.lset(f, :graphics, JR.call(JR.lget(f, :image), :jm_getGraphics, []))
        JR.call(JR.lget(f, :paintableInterface), :jm_paint, [JR.lget(f, :graphics)])
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end
end


