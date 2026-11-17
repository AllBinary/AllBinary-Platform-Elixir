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

defmodule ImageToRotationImageArrayUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageToRotationImageArrayUtil.jnew() end)
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
        throw({:jreturn, ImageToRotationImageArrayUtil.jstatic_instance()})
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


  def jm_generate(this, p_image, p_angleIncrement, p_totalAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JR.lset(f, :totalAngle, p_totalAngle)
        JR.lset(f, :imageRotationUtil, ImageRotationUtil.jm_getInstance())
        JR.lset(f, :totalFrames, div(JR.lget(f, :totalAngle), JR.lget(f, :angleIncrement)))
        JR.lset(f, :imageArray, JR.anew(JR.lget(f, :totalFrames), nil))
        JR.aset(JR.lget(f, :imageArray), 0, JR.lget(f, :image))
        JR.lset(f, :index, 1)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :totalFrames)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :imageArray), JR.lget(f, :index), JR.call(JR.lget(f, :imageRotationUtil), :jm_createRotatedImage, [JR.lget(f, :image), JR.int32(JR.lget(f, :index) * JR.lget(f, :angleIncrement))]))
        end)
        throw({:jreturn, JR.lget(f, :imageArray)})
    end)
  end
end


