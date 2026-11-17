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
# package org.allbinary.game.paint

defmodule ColorFillPaintableFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ColorFillPaintableFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

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
        throw({:jreturn, ColorFillPaintableFactory.jstatic_instance()})
    end)
  end


  def jm_getInstance(this, p_basicColor, p_forThreedCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :forThreedCanvas, p_forThreedCanvas)
        JR.lset(f, :operatingSystem, JR.call(OperatingSystemFactory.jm_getInstance(), :jm_getOperatingSystemInstance, []))
        if JR.call(JR.lget(f, :operatingSystem), :jm_isOverScan, []) do
            throw({:jreturn, OverScanColorFillPaintable.jnew(JR.lget(f, :basicColor))})
        else
            throw({:jreturn, ColorFillPaintable.jnew(JR.lget(f, :basicColor))})
        end
    end)
  end
end


