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
# package org.allbinary.graphics.opengles

defmodule OpenGLCapabilities do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OpenGLCapabilities.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :CUSTOM_GL_SURFACE_VIEW, false)
    JR.put(this, :VERSION_1_0, nil)
    JR.put(this, :VERSION_1_1, nil)
    JR.put(this, :VERSION_2_0, nil)
    JR.put(this, :VERSION_3_0, nil)
    JR.put(this, :VERSION_3_1, nil)
    JR.put(this, :VERSION_3_2, nil)
    JR.put(this, :VERSION_HIGHER_THAN_EXISTS, nil)
    JR.put(this, :glVersion, nil)
    JR.put(this, :shaderVersion, 0)
    JR.put(this, :glInstanceVersion, nil)
    JR.put(this, :maxTextureSize, 0)
        JR.put(this, :CUSTOM_GL_SURFACE_VIEW, true)
        JR.put(this, :VERSION_1_0, "1.0")
        JR.put(this, :VERSION_1_1, "1.1")
        JR.put(this, :VERSION_2_0, "2.0")
        JR.put(this, :VERSION_3_0, "3.0")
        JR.put(this, :VERSION_3_1, "3.1")
        JR.put(this, :VERSION_3_2, "3.2")
        JR.put(this, :VERSION_HIGHER_THAN_EXISTS, "999.999")
        JR.put(this, :glVersion, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :shaderVersion, 0)
        JR.put(this, :glInstanceVersion, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :maxTextureSize, 64)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OpenGLCapabilities.jstatic_instance()})
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


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_initCapabilities(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        nil
    end)
  end


  def jm_isGlExtensionDrawTexture(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getGlVersion(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :glVersion)})
    end)
  end


  def jm_isVertexBufferObjectSupport(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_isTextureSizeValid(this, p_widthAndHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :widthAndHeight, p_widthAndHeight)
        throw({:jreturn, true})
    end)
  end
end


