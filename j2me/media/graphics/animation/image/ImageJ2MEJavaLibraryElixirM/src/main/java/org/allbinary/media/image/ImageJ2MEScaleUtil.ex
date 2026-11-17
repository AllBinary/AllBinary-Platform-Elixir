#
# AllBinary Open License Version 1
# Copyright (c) 2023 AllBinary
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

defmodule ImageJ2MEScaleUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageJ2MEScaleUtil.jnew() end)
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
        throw({:jreturn, ImageJ2MEScaleUtil.jstatic_instance()})
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


  def jm_scaleArray(this, p_images, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :images, p_images)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :scaledImages, JR.anew(JR.alength(JR.lget(f, :images)), nil))
        JR.lset(f, :index, JR.alength(JR.lget(f, :images)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.aset(JR.lget(f, :scaledImages), JR.lget(f, :index), JR.call(this, :jm_scale, [JR.aget(JR.lget(f, :images), JR.lget(f, :index)), JR.lget(f, :width), JR.lget(f, :height)]))
        end)
        throw({:jreturn, JR.lget(f, :scaledImages)})
    end)
  end


  def jm_scale(this, p_image, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        JR.lset(f, :sourceWidth, JR.call(JR.lget(f, :image), :jm_getWidth, []))
        JR.lset(f, :sourceHeight, JR.call(JR.lget(f, :image), :jm_getHeight, []))
        JR.lset(f, :originalData, JR.anew((JR.call(JR.lget(f, :image), :jm_getWidth, []) * JR.call(JR.lget(f, :image), :jm_getHeight, [])), 0))
        JR.call(JR.lget(f, :image), :jm_getRGB, [JR.lget(f, :originalData), 0, JR.call(JR.lget(f, :image), :jm_getWidth, []), 0, 0, JR.call(JR.lget(f, :image), :jm_getWidth, []), JR.call(JR.lget(f, :image), :jm_getHeight, [])])
        JR.lset(f, :scaledData, JR.anew(JR.int32(JR.lget(f, :width) * JR.lget(f, :height)), 0))
        JR.lset(f, :heightRatioFactor, div((JR.int32(8 * JR.lget(f, :sourceHeight))), JR.lget(f, :height)))
        JR.lset(f, :widthRatioFactor, div((JR.int32(8 * JR.lget(f, :sourceWidth))), JR.lget(f, :width)))
        JR.lset(f, :scaledIndex, JR.int32(JR.alength(JR.lget(f, :scaledData)) - 1))
        JR.lset(f, :dx, 0)
        JR.lset(f, :dy, 0)
        JR.lset(f, :index, JR.lget(f, :height))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.lset(f, :dy, Bitwise.bsr((JR.int32(JR.lget(f, :index) * JR.lget(f, :heightRatioFactor))), 3))
            JR.lset(f, :index2, JR.lget(f, :width))
            JR.jfor(fn -> (JR.lpreinc(f, :index2, -1) >= 0) end, fn -> nil end, fn ->
                JR.lset(f, :dx, Bitwise.bsr((JR.int32(JR.lget(f, :index2) * JR.lget(f, :widthRatioFactor))), 3))
                JR.aset(JR.lget(f, :scaledData), JR.lpostinc(f, :scaledIndex, -1), JR.aget(JR.lget(f, :originalData), JR.int32((JR.int32(JR.lget(f, :sourceWidth) * JR.lget(f, :dy))) + JR.lget(f, :dx))))
            end)
        end)
        JR.lset(f, :scaledImage, Image.jm_createRGBImage(JR.lget(f, :scaledData), JR.lget(f, :width), JR.lget(f, :height), true))
        throw({:jreturn, JR.lget(f, :scaledImage)})
    end)
  end
end


