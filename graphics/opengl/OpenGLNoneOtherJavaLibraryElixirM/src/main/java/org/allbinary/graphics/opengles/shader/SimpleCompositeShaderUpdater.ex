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

defmodule SimpleCompositeShaderUpdater do
  def jsuper(), do: CompositeShaderUpdater

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :uniformBlockArray, p_uniformBlockArray)
      JR.lset(f, :uniformArray, p_uniformArray)
      JR.lset(f, :attributeArray, p_attributeArray)
      JR.lset(f, :attributeHandleArray, p_attributeHandleArray)
        CompositeShaderUpdater.jinit(this, JR.lget(f, :uniformBlockArray), JR.lget(f, :uniformArray), JR.lget(f, :attributeArray), JR.lget(f, :attributeHandleArray))
        SimpleCompositeShaderUpdater.jinitfields(this)
    end)
  end

  def jnew(p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray)
    this
  end
end


