# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.image.opengles

defmodule OpenGLESImageProcessor do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OpenGLESImageProcessor.jnew() end)
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
        throw({:jreturn, OpenGLESImageProcessor.jstatic_instance()})
    end)
  end


  def jm_translate(this, p_gl, p_translateX, p_translateY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :translateX, p_translateX)
      JR.lset(f, :translateY, p_translateY)
        nil
    end)
  end


  def jm_rotate(this, p_gl, p_angle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :angle, p_angle)
        nil
    end)
  end


  def jm_scale(this, p_gl, p_scaleX, p_scaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :scaleX, p_scaleX)
      JR.lset(f, :scaleY, p_scaleY)
        nil
    end)
  end


  def jm_colorMask(this, p_gl, p_red, p_green, p_blue, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :red, p_red)
      JR.lset(f, :green, p_green)
      JR.lset(f, :blue, p_blue)
      JR.lset(f, :alpha, p_alpha)
        nil
    end)
  end
end


