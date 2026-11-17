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

defmodule ImageCopyUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ImageCopyUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :imageCreationUtil, nil)
    JR.put(this, :anchor, 0)
    JR.put(this, :gameFeatureFactory, nil)
    JR.put(this, :features, nil)
    JR.put(this, :NO_COPY, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :imageCreationUtil, ImageCreationUtil.jm_getInstance())
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
        JR.put(this, :gameFeatureFactory, GameFeatureFactory.jm_getInstance())
        JR.put(this, :features, Features.jm_getInstance())
        JR.put(this, :NO_COPY, "J2ME does not need to copy images after initial loading")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ImageCopyUtil.jstatic_instance()})
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


  def jm_createImageForRotation(this, p_originalImage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImage, p_originalImage)
        throw({:jreturn, JR.call(this, :jm_createImage, [JR.lget(f, :originalImage)])})
    end)
  end


  def jm_createImage(this, p_originalImage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImage, p_originalImage)
        if !JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(JR.get(this, :gameFeatureFactory), :POST_IMAGE_LOADING_MODIFICATION)]) do
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(this, :NO_COPY), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), JR.exception("Exception", "")])
            throw({:jreturn, JR.lget(f, :originalImage)})
        end
        JR.lset(f, :image, JR.call(JR.get(this, :imageCreationUtil), :jm_createImageWH, [JR.call(JR.lget(f, :originalImage), :jm_getWidth, []), JR.call(JR.lget(f, :originalImage), :jm_getHeight, [])]))
        if JR.call(JR.lget(f, :image), :jm_isMutable, []) do
            JR.call(JR.call(JR.lget(f, :image), :jm_getGraphics, []), :jm_drawImage, [JR.lget(f, :originalImage), 0, 0, JR.get(this, :anchor)])
            throw({:jreturn, JR.lget(f, :image)})
        else
            throw({:jexception, JR.exception("Exception", "Not Mutable")})
        end
    end)
  end


  def jm_createImageScale(this, p_originalImage, p_canvasScale, p_resize) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :originalImage, p_originalImage)
      JR.lset(f, :canvasScale, p_canvasScale)
      JR.lset(f, :resize, p_resize)
        if !JR.call(JR.get(this, :features), :jm_isFeature, [JR.get(JR.get(this, :gameFeatureFactory), :POST_IMAGE_LOADING_MODIFICATION)]) do
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(this, :NO_COPY), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), JR.exception("Exception", "")])
            throw({:jreturn, JR.lget(f, :originalImage)})
        end
        JR.lset(f, :newWidth, JR.int32(((JR.call(JR.lget(f, :originalImage), :jm_getWidth, []) * JR.lget(f, :canvasScale)))))
        JR.lset(f, :newHeight, JR.int32(((JR.call(JR.lget(f, :originalImage), :jm_getHeight, []) * JR.lget(f, :canvasScale)))))
        if JR.lget(f, :resize) do
            if (JR.lget(f, :newWidth) < JR.lget(f, :newHeight)) do
                JR.lset(f, :newWidth, JR.lget(f, :newHeight))
            end
            if (JR.lget(f, :newHeight) < JR.lget(f, :newWidth)) do
                JR.lset(f, :newHeight, JR.lget(f, :newWidth))
            end
        end
        JR.lset(f, :image, JR.call(JR.get(this, :imageCreationUtil), :jm_createImageWH, [JR.lget(f, :newWidth), JR.lget(f, :newHeight)]))
        if JR.call(JR.lget(f, :image), :jm_isMutable, []) do
            JR.lset(f, :halfWidthDelta, (((JR.lget(f, :newWidth) - JR.call(JR.lget(f, :originalImage), :jm_getWidth, []))) / 2))
            JR.lset(f, :halfHeightDelta, (((JR.lget(f, :newHeight) - JR.call(JR.lget(f, :originalImage), :jm_getHeight, []))) / 2))
            JR.lset(f, :graphics, JR.call(JR.lget(f, :image), :jm_getGraphics, []))
            JR.call(JR.lget(f, :graphics), :jm_drawImage, [JR.lget(f, :originalImage), JR.lget(f, :halfWidthDelta), JR.lget(f, :halfHeightDelta), JR.get(this, :anchor)])
            throw({:jreturn, JR.lget(f, :image)})
        else
            throw({:jexception, JR.exception("Exception", "Not Mutable")})
        end
    end)
  end
end


