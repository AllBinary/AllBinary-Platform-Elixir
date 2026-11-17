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
# package org.allbinary.game.graphics.hud

defmodule HudGraphicsPosition do
  def jsuper(), do: JObject
def jstatic_NULL_HUD_GRAPHICS_POSITION(), do: JR.static_get(__MODULE__, :NULL_HUD_GRAPHICS_POSITION, fn -> HudGraphicsPosition.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 9) end)
  def jstatic_set_NULL_HUD_GRAPHICS_POSITION(value), do: JR.static_put(__MODULE__, :NULL_HUD_GRAPHICS_POSITION, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :anchor, 0)
    JR.put(this, :point, nil)
        JR.put(this, :anchor, 0)
        JR.put(this, :point, JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO))
    nil
  end


  def jinit(this, p_point, p_anchor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
      JR.lset(f, :anchor, p_anchor)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setAnchor, [JR.lget(f, :anchor)])
        JR.call(this, :jm_setPoint, [JR.lget(f, :point)])
    end)
  end

  def jnew(p_point, p_anchor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_point, p_anchor)
    this
  end


  def jm_getAnchor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :anchor)})
    end)
  end


  def jm_setAnchor(this, p_anchor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anchor, p_anchor)
        JR.put(this, :anchor, JR.lget(f, :anchor))
    end)
  end


  def jm_getPoint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :point)})
    end)
  end


  def jm_setPoint(this, p_point) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        JR.put(this, :point, JR.lget(f, :point))
    end)
  end
end


