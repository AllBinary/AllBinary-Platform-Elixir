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
# package org.allbinary.vector

defmodule VectorInfo do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
    JR.put(this, :points, nil)
    JR.put(this, :totalFrames, 0)
        
        
        
        
    nil
  end


  def jinit(this, p_width, p_height, p_points, p_totalFrames) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :points, p_points)
      JR.lset(f, :totalFrames, p_totalFrames)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :width, JR.lget(f, :width))
        JR.put(this, :height, JR.lget(f, :height))
        JR.put(this, :points, JR.lget(f, :points))
        JR.put(this, :totalFrames, JR.lget(f, :totalFrames))
    end)
  end

  def jnew(p_width, p_height, p_points, p_totalFrames) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_width, p_height, p_points, p_totalFrames)
    this
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :width)})
    end)
  end


  def jm_setWidth(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        JR.put(this, :width, JR.lget(f, :width))
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


  def jm_setHeight(this, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :height, p_height)
        JR.put(this, :height, JR.lget(f, :height))
    end)
  end


  def jm_getPoints(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :points)})
    end)
  end


  def jm_setPoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        JR.put(this, :points, JR.lget(f, :points))
    end)
  end


  def jm_getTotalFrames(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalFrames)})
    end)
  end


  def jm_setTotalFrames(this, p_totalFrames) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :totalFrames, p_totalFrames)
        JR.put(this, :totalFrames, JR.lget(f, :totalFrames))
    end)
  end
end


