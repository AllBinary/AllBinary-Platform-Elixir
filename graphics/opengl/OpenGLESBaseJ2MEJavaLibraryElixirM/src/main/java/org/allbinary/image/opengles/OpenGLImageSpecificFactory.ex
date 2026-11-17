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
# package org.allbinary.image.opengles

defmodule OpenGLImageSpecificFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> OpenGLImageSpecificFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageFactory, nil)
    JR.put(this, :updating, false)
        JR.put(this, :imageFactory, OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY())
        JR.put(this, :updating, false)
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
        throw({:jreturn, OpenGLImageSpecificFactory.jstatic_instance()})
    end)
  end


  def jm_setImageFactory(this, p_imageFactory) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageFactory, p_imageFactory)
        JR.put(this, :imageFactory, JR.lget(f, :imageFactory))
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Selected Image Factory: "]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :imageFactory)])]), :jm_toString, []), this, "setImageFactory")
    end)
  end


  def jm_getImageFactory(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :imageFactory)})
    end)
  end
end


