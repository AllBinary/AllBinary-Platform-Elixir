# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

defmodule OpenGLESDeviceImageTranslate do
  def jsuper(), do: OpenGLESImageTranslate

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :translateX, 0.0)
    JR.put(this, :translateY, 0.0)
    JR.put(this, :translateX2, 0.0)
    JR.put(this, :translateY2, 0.0)
        JR.put(this, :translateX, 0.0)
        JR.put(this, :translateY, 0.0)
        JR.put(this, :translateX2, 0.0)
        JR.put(this, :translateY2, 0.0)
    nil
  end

  def jinit(this) do
    OpenGLESImageTranslate.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_translate(this, p_gl, p_openGLESImage, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :openGLESImage, p_openGLESImage)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(JR.lget(f, :openGLESImage), :imageProcessor), :jm_translate, [JR.lget(f, :gl), (JR.get(this, :translateX) + ((JR.get(JR.get(JR.lget(f, :openGLESImage), :openGLESImageProperties), :scaleX) * JR.lget(f, :x)))), (JR.get(this, :translateY) + ((JR.get(JR.get(JR.lget(f, :openGLESImage), :openGLESImageProperties), :scaleY) * JR.lget(f, :y))))])
    end)
  end


  def jm_translate2(this, p_gl, p_openGLESImage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :openGLESImage, p_openGLESImage)
        JR.call(JR.get(JR.lget(f, :openGLESImage), :imageProcessor), :jm_translate, [JR.lget(f, :gl), JR.get(this, :translateX2), JR.get(this, :translateY2)])
    end)
  end
end


