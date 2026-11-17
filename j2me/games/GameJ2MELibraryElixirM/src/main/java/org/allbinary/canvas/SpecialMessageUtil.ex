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
# package org.allbinary.canvas

defmodule SpecialMessageUtil do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> SpecialMessageUtil.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        throw({:jreturn, SpecialMessageUtil.jstatic_SINGLETON()})
    end)
  end


  def jm_get(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [Memory.jm_getInfo()])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(GameStatisticsFactory.jm_getInstance(), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Option: "])
        if JR.call(Features.jm_getInstance(), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL_AUTO_SELECT)]) do
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL_AUTO_SELECT), :jm_getName, [])])
        else
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL_MINIMUM), :jm_getName, [])])
        end
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


