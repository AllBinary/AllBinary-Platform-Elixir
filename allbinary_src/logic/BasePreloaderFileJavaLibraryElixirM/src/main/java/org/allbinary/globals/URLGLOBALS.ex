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
# package org.allbinary.globals

defmodule URLGLOBALS do
  def jsuper(), do: JObject
def jstatic_urlGlobalsInterface(), do: JR.static_get(__MODULE__, :urlGlobalsInterface, fn -> AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS() end)
  def jstatic_set_urlGlobalsInterface(value), do: JR.static_put(__MODULE__, :urlGlobalsInterface, value)

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


  def jm_init(p_urlGlobalsInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :urlGlobalsInterface, p_urlGlobalsInterface)
        URLGLOBALS.jstatic_set_urlGlobalsInterface(JR.lget(f, :urlGlobalsInterface))
    end)
  end


  def jm_isTestingMode() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(URLGLOBALS.jstatic_urlGlobalsInterface(), :jm_isTestingMode, [])})
    end)
  end


  def jm_getWebappPath() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(URLGLOBALS.jstatic_urlGlobalsInterface(), :jm_getWebappPath, [])})
    end)
  end


  def jm_getTestHtmlPath() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(URLGLOBALS.jstatic_urlGlobalsInterface(), :jm_getTestHtmlPath, [])})
    end)
  end


  def jm_getMainPath() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(URLGLOBALS.jstatic_urlGlobalsInterface(), :jm_getMainPath, [])})
    end)
  end
end


