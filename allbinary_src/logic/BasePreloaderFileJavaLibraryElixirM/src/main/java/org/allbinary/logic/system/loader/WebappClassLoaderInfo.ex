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
# package org.allbinary.logic.system.loader

defmodule WebappClassLoaderInfo do
  def jsuper(), do: JObject
def jstatic_classLoader(), do: JR.static_get(__MODULE__, :classLoader, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_classLoader(value), do: JR.static_put(__MODULE__, :classLoader, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
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


  def jm_setLoader(p_classLoader) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :classLoader, p_classLoader)
        WebappClassLoaderInfo.jstatic_set_classLoader(JR.lget(f, :classLoader))
    end)
  end


  def jm_getLoader() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, WebappClassLoaderInfo.jstatic_classLoader()})
    end)
  end
end


