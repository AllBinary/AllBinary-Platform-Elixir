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

defmodule OpenGLESImageProperties do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :textureID, 0)
    JR.put(this, :scaleX, 0.0)
    JR.put(this, :scaleY, 0.0)
    JR.put(this, :scaleX2, 0.0)
    JR.put(this, :scaleY2, 0.0)
    JR.put(this, :angle, 0)
    JR.put(this, :redf, 0.0)
    JR.put(this, :greenf, 0.0)
    JR.put(this, :bluef, 0.0)
    JR.put(this, :alphaf, 0.0)
        JR.put(this, :textureID, -1)
        JR.put(this, :scaleX, 1.0)
        JR.put(this, :scaleY, 1.0)
        JR.put(this, :scaleX2, 1.0)
        JR.put(this, :scaleY2, 1.0)
        JR.put(this, :angle, 0)
        JR.put(this, :redf, 1.0)
        JR.put(this, :greenf, 1.0)
        JR.put(this, :bluef, 1.0)
        JR.put(this, :alphaf, 0.0)
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
end


