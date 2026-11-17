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
# package org.allbinary

#import org.allbinary.logic.communication.log.PreLogUtil;
defmodule AppletUtil do
  def jsuper(), do: JObject
def jstatic_applet(), do: JR.static_get(__MODULE__, :applet, fn -> false end)
  def jstatic_set_applet(value), do: JR.static_put(__MODULE__, :applet, value)

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


  def jm_setApplet() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        AppletUtil.jstatic_set_applet(true)
    end)
  end


  def jm_isAppletLoader(p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        throw({:jreturn, AppletUtil.jstatic_applet()})
    end)
  end
end


