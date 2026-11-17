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
# package org.allbinary.graphics

defmodule Rectangle do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :point, nil)
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
        
        
        
    nil
  end


  def jinit(this, p_point, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :point, JR.lget(f, :point))
        JR.put(this, :width, JR.lget(f, :width))
        JR.put(this, :height, JR.lget(f, :height))
    end)
  end

  def jnew(p_point, p_width, p_height) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_point, p_width, p_height)
    this
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


  def jm_getMaxX(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(JR.get(this, :point), :jm_getX, []) + JR.get(this, :width))})
    end)
  end


  def jm_getMaxY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (JR.call(JR.get(this, :point), :jm_getY, []) + JR.get(this, :height))})
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


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.call(this, :jm_getPoint, []), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getWidth, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getHeight, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" MaxX: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getMaxX, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" MaxY: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getMaxY, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


