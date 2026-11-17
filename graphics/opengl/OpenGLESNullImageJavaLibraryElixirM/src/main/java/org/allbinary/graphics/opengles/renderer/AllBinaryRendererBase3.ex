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
# package org.allbinary.graphics.opengles.renderer

defmodule AllBinaryRendererBase3 do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :list, nil)
        JR.put(this, :list, BasicArrayListD.jnew())
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


  def jm_update(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        JR.jwhile(fn -> (JR.call(JR.get(this, :list), :jm_size, []) > 0) end, fn ->
            JR.lset(f, :openGLESImage, JR.call(JR.get(this, :list), :jm_removeAt, [0]))
            if (JR.lget(f, :openGLESImage) != nil) do
                JR.call(JR.lget(f, :openGLESImage), :jm_set, [JR.lget(f, :gl)])
            end
        end)
    end)
  end


  def jm_add(this, p_image) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :image)])
    end)
  end
end


