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
# package org.allbinary.graphics.displayable.screen

defmodule AboutPaintableFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AboutPaintableFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :paintableArray, nil)
        JR.put(this, :paintableArray, JR.afrom([NullPaintable.jm_getInstance()]))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AboutPaintableFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :INFO, JR.afrom(["Built with the", "AllBinary Platform", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), "Comments or Questions:", "support@allbinary.com"]))
        JR.lset(f, :DEVELOPERS, JR.afrom(["Developed By:", "Travis Berthelot"]))
        JR.put(this, :paintableArray, JR.call(AboutPaintable.jm_getInstance(JR.lget(f, :INFO), JR.lget(f, :DEVELOPERS)), :jm_getPaintableArrayInstance, []))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


