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

defmodule PlatformShaderComposite do
  def jsuper(), do: ShaderComposite

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :requiresOpenGLVersion, p_requiresOpenGLVersion)
      JR.lset(f, :shaderArray, p_shaderArray)
      JR.lset(f, :compositeShaderUpdater, p_compositeShaderUpdater)
      JR.lset(f, :shaderInitializer, p_shaderInitializer)
      JR.lset(f, :modelViewProjection, p_modelViewProjection)
      JR.lset(f, :colorOpenGLProcessor, p_colorOpenGLProcessor)
      JR.lset(f, :vertexOpenGLProcessor, p_vertexOpenGLProcessor)
        ShaderComposite.jinit(this, JR.lget(f, :requiresOpenGLVersion), JR.lget(f, :shaderArray), JR.lget(f, :compositeShaderUpdater), JR.lget(f, :shaderInitializer), JR.lget(f, :modelViewProjection), JR.lget(f, :colorOpenGLProcessor), JR.lget(f, :vertexOpenGLProcessor), NullOpenGLProcessorFactory.jm_getInstance())
        PlatformShaderComposite.jinitfields(this)
    end)
  end

  def jnew(p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor)
    this
  end
end


