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

defmodule AnimationFrameToImageUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnimationFrameToImageUtil.jnew() end)
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AnimationFrameToImageUtil.jstatic_instance()})
    end)
  end


  def jm_getInstanceTranslate(this, p_width, p_height, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.lset(f, :image, JR.call(GameFeatureImageCacheFactory.jm_getInstance(), :jm_get, [JR.class_name(AnimationFrameToImageUtil.jstatic_instance()), (Bitwise.bsr((JR.int32(JR.lget(f, :width) * 3)), 1)), (Bitwise.bsr((JR.int32(JR.lget(f, :height) * 3)), 1))]))
        JR.lset(f, :graphics, JR.call(JR.lget(f, :image), :jm_getGraphics, []))
        JR.lset(f, :tranlateX, (Bitwise.bsr(JR.lget(f, :width), 2)))
        JR.lset(f, :tranlateY, (Bitwise.bsr(JR.lget(f, :height), 2)))
        JR.call(JR.lget(f, :graphics), :jm_translate, [JR.lget(f, :tranlateX), JR.lget(f, :tranlateY)])
        JR.call(JR.lget(f, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
        JR.call(JR.lget(f, :graphics), :jm_translate, [-JR.lget(f, :tranlateX), -JR.lget(f, :tranlateY)])
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end


  def jm_getInstanceWH(this, p_width, p_height, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.lset(f, :image, JR.call(GameFeatureImageCacheFactory.jm_getInstance(), :jm_get, [JR.class_name(AnimationFrameToImageUtil.jstatic_instance()), JR.lget(f, :width), JR.lget(f, :height)]))
        JR.lset(f, :graphics, JR.call(JR.lget(f, :image), :jm_getGraphics, []))
        JR.call(JR.lget(f, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), 0, 0])
        throw({:jreturn, JR.lget(f, :image)})
    end)
  end
end


