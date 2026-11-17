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
# package org.allbinary.graphics.opengles

defmodule OpenGLVUtilBase do
  def jsuper(), do: JObject

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


  def jm_glTexEnvix(this, p_gl, p_target, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        nil
    end)
  end


  def jm_glTexParameterix(this, p_gl, p_target, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        nil
    end)
  end


  def jm_glGenerateMipmap(this, p_gl, p_textureId, p_target, p_generateMipMap) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :textureId, p_textureId)
      JR.lset(f, :target, p_target)
      JR.lset(f, :generateMipMap, p_generateMipMap)
        nil
    end)
  end
end


