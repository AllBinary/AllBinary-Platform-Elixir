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

defmodule ShaderComposite do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :disableProgramShaderOpenGLProcessor, nil)
    JR.put(this, :requiresOpenGLVersion, nil)
    JR.put(this, :shaderArray, nil)
    JR.put(this, :shaderInitializer, nil)
    JR.put(this, :compositeShaderUpdater, nil)
    JR.put(this, :modelViewProjection, nil)
    JR.put(this, :colorOpenGLProcessor, nil)
    JR.put(this, :vertexOpenGLProcessor, nil)
    JR.put(this, :useProgramShaderOpenGLProcessor, nil)
    JR.put(this, :shaderMatrixOpenGLProcessor, nil)
    JR.put(this, :colorEnableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :normalEnableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :vertexEnableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :textureEnableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :colorDisableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :normalDisableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :vertexDisableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :textureDisableVertexAttribArrayOpenGLProcessor, nil)
    JR.put(this, :uniformLightPositionOpenGLProcessor, nil)
    JR.put(this, :uniformLightColorOpenGLProcessor, nil)
    JR.put(this, :uniformCameraPositionOpenGLProcessor, nil)
    JR.put(this, :uniformTextureUnitOpenGLProcessor, nil)
    JR.put(this, :programHandle, 0)
        
        
        
        
        
        
        
        
        JR.put(this, :useProgramShaderOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :shaderMatrixOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :colorEnableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :normalEnableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :vertexEnableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :textureEnableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :colorDisableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :normalDisableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :vertexDisableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :textureDisableVertexAttribArrayOpenGLProcessor, NullOpenGLProcessorFactory.jm_getInstance())
        JR.put(this, :uniformLightPositionOpenGLProcessor, NullOpenGLTextureProcessor.jm_getInstance())
        JR.put(this, :uniformLightColorOpenGLProcessor, NullOpenGLTextureProcessor.jm_getInstance())
        JR.put(this, :uniformCameraPositionOpenGLProcessor, NullOpenGLTextureProcessor.jm_getInstance())
        JR.put(this, :uniformTextureUnitOpenGLProcessor, NullOpenGLTextureProcessor.jm_getInstance())
        JR.put(this, :programHandle, 0)
    nil
  end


  def jinit(this, p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor, p_disableProgramShaderOpenGLProcessor) do
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
      JR.lset(f, :disableProgramShaderOpenGLProcessor, p_disableProgramShaderOpenGLProcessor)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :requiresOpenGLVersion, JR.lget(f, :requiresOpenGLVersion))
        JR.put(this, :shaderArray, JR.lget(f, :shaderArray))
        JR.put(this, :shaderInitializer, JR.lget(f, :shaderInitializer))
        JR.put(this, :compositeShaderUpdater, JR.lget(f, :compositeShaderUpdater))
        JR.put(this, :modelViewProjection, JR.lget(f, :modelViewProjection))
        JR.put(this, :colorOpenGLProcessor, JR.lget(f, :colorOpenGLProcessor))
        JR.put(this, :vertexOpenGLProcessor, JR.lget(f, :vertexOpenGLProcessor))
        JR.put(this, :disableProgramShaderOpenGLProcessor, JR.lget(f, :disableProgramShaderOpenGLProcessor))
    end)
  end

  def jnew(p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor, p_disableProgramShaderOpenGLProcessor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_requiresOpenGLVersion, p_shaderArray, p_compositeShaderUpdater, p_shaderInitializer, p_modelViewProjection, p_colorOpenGLProcessor, p_vertexOpenGLProcessor, p_disableProgramShaderOpenGLProcessor)
    this
  end


  def jm_init(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        JR.put(this, :programHandle, JR.call(JR.get(this, :shaderInitializer), :jm_init, [JR.lget(f, :gl), JR.get(this, :shaderArray), JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, [])]))
    end)
  end
end


