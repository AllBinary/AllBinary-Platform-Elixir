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

defmodule RendererStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> RendererStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ON_SURFACE_CREATED, nil)
    JR.put(this, :ON_SURFACE_CHANGED, nil)
    JR.put(this, :ON_DRAW_FRAME, nil)
    JR.put(this, :ON_DRAW_FRAME_THREED, nil)
    JR.put(this, :ON_DRAW_FRAME_2D, nil)
        JR.put(this, :ON_SURFACE_CREATED, "onSurfaceCreated")
        JR.put(this, :ON_SURFACE_CHANGED, "onSurfaceChanged")
        JR.put(this, :ON_DRAW_FRAME, "onDrawFrame")
        JR.put(this, :ON_DRAW_FRAME_THREED, "onDrawFrameThreed")
        JR.put(this, :ON_DRAW_FRAME_2D, "onDrawFrame2d")
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, RendererStrings.jstatic_instance()})
    end)
  end
end


