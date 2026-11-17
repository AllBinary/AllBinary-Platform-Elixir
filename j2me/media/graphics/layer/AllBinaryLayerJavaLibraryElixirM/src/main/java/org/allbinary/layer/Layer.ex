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
# package org.allbinary.layer

defmodule Layer do
  def jsuper(), do: JObject
def jstatic_ID(), do: JR.static_get(__MODULE__, :ID, fn -> JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [0]) end)
  def jstatic_set_ID(value), do: JR.static_put(__MODULE__, :ID, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :x, 0)
    JR.put(this, :y, 0)
    JR.put(this, :z, 0)
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
    JR.put(this, :visible, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :x, 0)
        JR.put(this, :y, 0)
        JR.put(this, :z, 3)
        JR.put(this, :width, 0)
        JR.put(this, :height, 0)
        JR.put(this, :visible, true)
    nil
  end


  def jinit(this, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_setLayerWidth, [JR.lget(f, :width)])
        JR.call(this, :jm_setLayerHeight, [JR.lget(f, :height)])
    end)
  end

  def jnew(p_width, p_height) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_width, p_height)
    this
  end


  def jm_setPosition(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.put(this, :x, JR.lget(f, :x))
        JR.put(this, :y, JR.lget(f, :y))
        JR.put(this, :z, JR.lget(f, :z))
    end)
  end


  def jm_moveDXY(this, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.put(this, :x, JR.int32(JR.get(this, :x) + JR.lget(f, :dx)))
        JR.put(this, :y, JR.int32(JR.get(this, :y) + JR.lget(f, :dy)))
    end)
  end


  def jm_moveDXYZ(this, p_dx, p_dy, p_dz) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :dz, p_dz)
        JR.put(this, :x, JR.int32(JR.get(this, :x) + JR.lget(f, :dx)))
        JR.put(this, :y, JR.int32(JR.get(this, :y) + JR.lget(f, :dy)))
        JR.put(this, :z, JR.int32(JR.get(this, :z) + JR.lget(f, :dz)))
    end)
  end


  def jm_getXP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_getYP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_getZP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :z)})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :width)})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :height)})
    end)
  end


  def jm_getDepth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_setVisible(this, p_visible) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :visible, p_visible)
        JR.put(this, :visible, JR.lget(f, :visible))
    end)
  end


  def jm_isVisible(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :visible)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.lset(f, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :NOT_IMPLEMENTED), this, JR.get(JR.lget(f, :canvasStrings), :PAINT)])
    end)
  end


  def jm_setLayerWidth(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        if (JR.lget(f, :width) < 0) do
            throw({:jexception, JR.exception("IllegalArgumentException", "")})
        end
        JR.put(this, :width, JR.lget(f, :width))
    end)
  end


  def jm_setLayerHeight(this, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :height, p_height)
        if (JR.lget(f, :height) < 0) do
            throw({:jexception, JR.exception("IllegalArgumentException", "")})
        end
        JR.put(this, :height, JR.lget(f, :height))
    end)
  end


  def jm_toStringAppend(this, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringBuffer, p_stringBuffer)
        nil
    end)
  end
end


