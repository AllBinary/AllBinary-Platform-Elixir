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

defmodule ShaderManager do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ShaderManager.jnew(-1, -1) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :LOAD_SHADER, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :GL_VERTEX_SHADER, 0)
    JR.put(this, :GL_FRAGMENT_SHADER, 0)
        JR.put(this, :LOAD_SHADER, "loadShader")
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ShaderManager.jstatic_instance()})
    end)
  end


  def jinit(this, p_GL_VERTEX_SHADER, p_GL_FRAGMENT_SHADER) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :GL_VERTEX_SHADER, p_GL_VERTEX_SHADER)
      JR.lset(f, :GL_FRAGMENT_SHADER, p_GL_FRAGMENT_SHADER)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :GL_VERTEX_SHADER, JR.lget(f, :GL_VERTEX_SHADER))
        JR.put(this, :GL_FRAGMENT_SHADER, JR.lget(f, :GL_FRAGMENT_SHADER))
    end)
  end

  def jnew(p_GL_VERTEX_SHADER, p_GL_FRAGMENT_SHADER) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_GL_VERTEX_SHADER, p_GL_FRAGMENT_SHADER)
    this
  end


  def jm_load(this, p_gl, p_resource, p_shaderAsStringArray, p_shaderType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :shaderAsStringArray, p_shaderAsStringArray)
      JR.lset(f, :shaderType, p_shaderType)
        throw({:jreturn, -1})
    end)
  end


  def jm_loadShader(this, p_gl, p_resource, p_stringList, p_shaderType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :stringList, p_stringList)
      JR.lset(f, :shaderType, p_shaderType)
        throw({:jreturn, -1})
    end)
  end
end


