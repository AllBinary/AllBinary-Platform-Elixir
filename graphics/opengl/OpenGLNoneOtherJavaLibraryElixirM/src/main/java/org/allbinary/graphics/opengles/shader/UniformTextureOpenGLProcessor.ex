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
# package org.allbinary.graphics.opengles.shader

defmodule UniformTextureOpenGLProcessor do
  def jsuper(), do: OpenGLObject3dProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_shaderComposite, p_handleIndex) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :shaderComposite, p_shaderComposite)
      JR.lset(f, :handleIndex, p_handleIndex)
      OpenGLObject3dProcessor.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_shaderComposite, p_handleIndex) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_shaderComposite, p_handleIndex)
    this
  end


  def jm_process(this, p_gl, p_unused, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :unused, p_unused)
      JR.lset(f, :index, p_index)
        nil
    end)
  end
end


