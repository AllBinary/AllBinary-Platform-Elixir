# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer.special

defmodule SpecialGameInput do
  def jsuper(), do: JObject

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


  def jm_up(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_down(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_right(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_left(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_strafeLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_strafeRight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_fire(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special1(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special2(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special3(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special4(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_special5(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
        nil
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end
end


