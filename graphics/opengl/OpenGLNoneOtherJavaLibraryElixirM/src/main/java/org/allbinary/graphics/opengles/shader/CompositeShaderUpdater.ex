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

defmodule CompositeShaderUpdater do
  def jsuper(), do: ShaderUpdater
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> CompositeShaderUpdater.jnew(JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []), JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []), JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []), JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY)) end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonSeps, nil)
        JR.put(this, :commonSeps, CommonSeps.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CompositeShaderUpdater.jstatic_instanceC()})
    end)
  end


  def jinit(this, p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :uniformBlockArray, p_uniformBlockArray)
      JR.lset(f, :uniformArray, p_uniformArray)
      JR.lset(f, :attributeArray, p_attributeArray)
      JR.lset(f, :attributeHandleArray, p_attributeHandleArray)
      ShaderUpdater.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew(p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_uniformBlockArray, p_uniformArray, p_attributeArray, p_attributeHandleArray)
    this
  end


  def jm_onSurfaceCreated(this, p_gl, p_eglConfig, p_programHandle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :eglConfig, p_eglConfig)
      JR.lset(f, :programHandle, p_programHandle)
        nil
    end)
  end


  def jm_onSurfaceDestroyed(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        nil
    end)
  end
end


