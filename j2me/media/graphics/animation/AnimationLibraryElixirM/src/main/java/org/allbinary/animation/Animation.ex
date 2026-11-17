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
# package org.allbinary.animation

defmodule Animation do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :basicColor, nil)
    JR.put(this, :colorP, 0)
    JR.put(this, :changeBasicColorP, nil)
    JR.put(this, :changeColorP, 0)
    JR.put(this, :alphaP, 0)
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :basicColor, JR.get(BasicColorFactory.jm_getInstance(), :WHITE))
        JR.put(this, :colorP, 0)
        JR.put(this, :changeBasicColorP, JR.get(BasicColorFactory.jm_getInstance(), :NULL_COLOR))
        JR.put(this, :changeColorP, 0)
        JR.put(this, :alphaP, 0)
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


  def jm_setAlpha(this, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alpha, p_alpha)
        JR.put(this, :alphaP, JR.lget(f, :alpha))
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP3, [JR.lget(f, :graphics), JR.call(this, :jm_getBasicColorP, []), JR.call(this, :jm_getColor, [])])
    end)
  end


  def jm_paintThreedXYZ(this, p_graphics, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        nil
    end)
  end


  def jm_isThreed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :basicColor)})
    end)
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :basicColor, JR.lget(f, :basicColor))
        JR.put(this, :colorP, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
    end)
  end


  def jm_setBackgroundBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        nil
    end)
  end


  def jm_getChangeBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :changeBasicColorP)})
    end)
  end


  def jm_changeBasicColor(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.put(this, :changeBasicColorP, JR.lget(f, :basicColor))
        JR.put(this, :changeColorP, JR.call(JR.get(this, :changeBasicColorP), :jm_intValue, []))
    end)
  end


  def jm_getChangeColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :changeColorP)})
    end)
  end


  def jm_getColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :colorP)})
    end)
  end


  def jm_setScale(this, p_scaleX, p_scaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleX, p_scaleX)
      JR.lset(f, :scaleY, p_scaleY)
        nil
    end)
  end


  def jm_setMaxScale(this, p_maxScaleX, p_maxScaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxScaleX, p_maxScaleX)
      JR.lset(f, :maxScaleY, p_maxScaleY)
        nil
    end)
  end


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        nil
    end)
  end


  def jm_setDx(this, p_dx) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
        nil
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_setDy(this, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dy, p_dy)
        nil
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


