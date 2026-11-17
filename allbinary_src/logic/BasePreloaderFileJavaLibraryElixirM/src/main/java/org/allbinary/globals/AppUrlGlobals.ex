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

#implements
defmodule AppUrlGlobals do
  def jsuper(), do: UrlGlobalsInterface
def jstatic_NULL_APP_URL_GLOBALS(), do: JR.static_get(__MODULE__, :NULL_APP_URL_GLOBALS, fn -> AppUrlGlobals.jnew() end)
  def jstatic_set_NULL_APP_URL_GLOBALS(value), do: JR.static_put(__MODULE__, :NULL_APP_URL_GLOBALS, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :path, nil)
        JR.put(this, :path, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    nil
  end

  def jinit(this) do
    UrlGlobalsInterface.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_isTestingMode(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getWebappPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :path)})
    end)
  end


  def jm_setWebappPath(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.put(this, :path, JR.lget(f, :path))
        if !((String.ends_with?(JR.get(this, :path), "\\") || String.ends_with?(JR.get(this, :path), "/"))) do
            JR.put(this, :path, JR.get(this, :path) <> "\\")
        end
    end)
  end


  def jm_getTestHtmlPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_getMainPath(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :path)})
    end)
  end
end


