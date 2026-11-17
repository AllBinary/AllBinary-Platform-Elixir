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
# package org.allbinary.game.configuration.feature

defmodule GraphicsFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GraphicsFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NONE, nil)
    JR.put(this, :TRANSPARENT_IMAGE_CREATION, nil)
    JR.put(this, :IMAGE_GRAPHICS, nil)
    JR.put(this, :IMAGE_ROTATION_ON_THE_FLY, nil)
    JR.put(this, :IMAGE_TO_ARRAY_GRAPHICS, nil)
    JR.put(this, :SPRITE_QUARTER_ROTATION_GRAPHICS, nil)
    JR.put(this, :SPRITE_FULL_GRAPHICS, nil)
    JR.put(this, :VECTOR_GRAPHICS, nil)
    JR.put(this, :VECTOR_TO_IMAGE_GRAPHICS, nil)
        JR.put(this, :NONE, GraphicsFeature.jnew(JR.get(StringUtil.jm_getInstance(), :NULL_STRING)))
        JR.put(this, :TRANSPARENT_IMAGE_CREATION, GraphicsFeature.jnew("Transparent Image Creation"))
        JR.put(this, :IMAGE_GRAPHICS, GraphicsFeature.jnew("Image Graphics"))
        JR.put(this, :IMAGE_ROTATION_ON_THE_FLY, GraphicsFeature.jnew("Image Rotated On The Fly"))
        JR.put(this, :IMAGE_TO_ARRAY_GRAPHICS, GraphicsFeature.jnew("Image To Array Graphics"))
        JR.put(this, :SPRITE_QUARTER_ROTATION_GRAPHICS, GraphicsFeature.jnew("Sprite Quarter Rotation Graphics"))
        JR.put(this, :SPRITE_FULL_GRAPHICS, GraphicsFeature.jnew("Sprite Full Rotation Graphics"))
        JR.put(this, :VECTOR_GRAPHICS, GraphicsFeature.jnew("BasicArrayList Graphics"))
        JR.put(this, :VECTOR_TO_IMAGE_GRAPHICS, GraphicsFeature.jnew("BasicArrayList To Image Graphics"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GraphicsFeatureFactory.jstatic_instance()})
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
end


