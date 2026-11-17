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
# package org.allbinary.animation.image

defmodule ImageArrayRotationAnimationInfo do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :imageArray, nil)
    JR.put(this, :angleIncrement, 0)
    JR.put(this, :totalAngle, 0)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        
        
        
        
        
    nil
  end


  def jinit(this, p_imageArray, p_angleIncrement, p_totalAngle, p_dx, p_dy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
      JR.lset(f, :angleIncrement, p_angleIncrement)
      JR.lset(f, :totalAngle, p_totalAngle)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :imageArray, JR.lget(f, :imageArray))
        JR.put(this, :angleIncrement, JR.lget(f, :angleIncrement))
        JR.put(this, :totalAngle, JR.lget(f, :totalAngle))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_imageArray, p_angleIncrement, p_totalAngle, p_dx, p_dy) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_imageArray, p_angleIncrement, p_totalAngle, p_dx, p_dy)
    this
  end


  def jm_setImageArray(this, p_imageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        JR.put(this, :imageArray, JR.lget(f, :imageArray))
    end)
  end


  def jm_getImageArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :imageArray)})
    end)
  end


  def jm_getAngleInfoP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, AngleInfo.jm_getInstance(JR.int16(JR.get(this, :angleIncrement)))})
    end)
  end


  def jm_setTotalAngle(this, p_totalAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :totalAngle, p_totalAngle)
        JR.put(this, :totalAngle, JR.lget(f, :totalAngle))
    end)
  end


  def jm_getTotalAngle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalAngle)})
    end)
  end


  def jm_setDx(this, p_dx) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
        JR.put(this, :dx, JR.lget(f, :dx))
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dx)})
    end)
  end


  def jm_setDy(this, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dy, p_dy)
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dy)})
    end)
  end
end


