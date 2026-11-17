#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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

defmodule OpenGLFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OpenGLFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :OPENGL_OPTIONS, nil)
    JR.put(this, :OPENGL, nil)
    JR.put(this, :OPENGL_SURFACE_VIEW, nil)
    JR.put(this, :OPENGL_2D, nil)
    JR.put(this, :OPENGL_3D, nil)
    JR.put(this, :OPENGL_2D_AND_3D, nil)
    JR.put(this, :OPENGL_AUTO_SELECT, nil)
    JR.put(this, :OPENGL_MINIMUM, nil)
    JR.put(this, :OPENGL_AS_GAME_THREAD, nil)
    JR.put(this, :OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS, nil)
    JR.put(this, :IMAGE_COLOR_DEPTH_4444, nil)
    JR.put(this, :IMAGE_COLOR_DEPTH_8888, nil)
    JR.put(this, :IMAGE_COLOR_DEPTH_565, nil)
    JR.put(this, :OPENGL_COLOR_DEPTH_4444, nil)
    JR.put(this, :OPENGL_COLOR_DEPTH_8888, nil)
    JR.put(this, :OPENGL_COLOR_DEPTH_565, nil)
    JR.put(this, :OPENGL_DRAW_TEXTURE, nil)
    JR.put(this, :OPENGL_VERTEX_BUFFER_OBJECT, nil)
    JR.put(this, :OPENGL_SIMPLE_OBJECT3D_PROCESSOR, nil)
    JR.put(this, :OPENGL_COMPLEX_OBJECT3D_PROCESSOR, nil)
    JR.put(this, :OPENGL_SIMPLE_TEXTURE_PROCESSOR, nil)
    JR.put(this, :OPENGL_COMPLEX_TEXTURE_PROCESSOR, nil)
        JR.put(this, :OPENGL_OPTIONS, OpenGLFeature.jnew("OpenGL Options"))
        JR.put(this, :OPENGL, OpenGLFeature.jnew("OpenGL"))
        JR.put(this, :OPENGL_SURFACE_VIEW, OpenGLFeature.jnew("GLSurfaceView"))
        JR.put(this, :OPENGL_2D, OpenGLFeature.jnew("OpenGL 2D"))
        JR.put(this, :OPENGL_3D, OpenGLFeature.jnew("OpenGL 3D"))
        JR.put(this, :OPENGL_2D_AND_3D, OpenGLFeature.jnew("OpenGL 2D/3D"))
        JR.put(this, :OPENGL_AUTO_SELECT, OpenGLFeature.jnew("Auto Select"))
        JR.put(this, :OPENGL_MINIMUM, OpenGLFeature.jnew("Minimum"))
        JR.put(this, :OPENGL_AS_GAME_THREAD, OpenGLFeature.jnew("As game thread"))
        JR.put(this, :OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS, OpenGLFeature.jnew("As different threads"))
        JR.put(this, :IMAGE_COLOR_DEPTH_4444, OpenGLFeature.jnew("4444"))
        JR.put(this, :IMAGE_COLOR_DEPTH_8888, OpenGLFeature.jnew("8888"))
        JR.put(this, :IMAGE_COLOR_DEPTH_565, OpenGLFeature.jnew("565"))
        JR.put(this, :OPENGL_COLOR_DEPTH_4444, OpenGLFeature.jnew("4444"))
        JR.put(this, :OPENGL_COLOR_DEPTH_8888, OpenGLFeature.jnew("8888"))
        JR.put(this, :OPENGL_COLOR_DEPTH_565, OpenGLFeature.jnew("565"))
        JR.put(this, :OPENGL_DRAW_TEXTURE, OpenGLFeature.jnew("GL_OES_draw_texture"))
        JR.put(this, :OPENGL_VERTEX_BUFFER_OBJECT, OpenGLFeature.jnew("vertex_buffer_object"))
        JR.put(this, :OPENGL_SIMPLE_OBJECT3D_PROCESSOR, OpenGLFeature.jnew("Simple Object3d Processor"))
        JR.put(this, :OPENGL_COMPLEX_OBJECT3D_PROCESSOR, OpenGLFeature.jnew("Complex Object3d Processor"))
        JR.put(this, :OPENGL_SIMPLE_TEXTURE_PROCESSOR, OpenGLFeature.jnew("Simple Texture Processor"))
        JR.put(this, :OPENGL_COMPLEX_TEXTURE_PROCESSOR, OpenGLFeature.jnew("Complex Texture Processor"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, OpenGLFeatureFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


