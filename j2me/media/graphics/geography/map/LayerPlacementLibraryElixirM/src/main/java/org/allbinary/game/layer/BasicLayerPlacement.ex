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
# package org.allbinary.game.layer

defmodule BasicLayerPlacement do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :layerType, nil)
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
        
        
        
    nil
  end


  def jinit(this, p_layerType, p_width, p_height) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerType, p_layerType)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :layerType, JR.lget(f, :layerType))
        JR.put(this, :width, JR.lget(f, :width))
        JR.put(this, :height, JR.lget(f, :height))
    end)
  end

  def jnew(p_layerType, p_width, p_height) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerType, p_width, p_height)
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


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :height)})
    end)
  end


  def jm_getLayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :layerType)})
    end)
  end


  def jm_setLayerType(this, p_layerType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerType, p_layerType)
        JR.put(this, :layerType, JR.lget(f, :layerType))
    end)
  end
end


