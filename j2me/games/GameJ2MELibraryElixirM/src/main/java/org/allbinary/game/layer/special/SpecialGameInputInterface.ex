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
# package org.allbinary.game.layer.special

defmodule SpecialGameInputInterface do
  def jsuper(), do: JObject


  def jm_up(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "up")})
    end)
  end


  def jm_down(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "down")})
    end)
  end


  def jm_right(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "right")})
    end)
  end


  def jm_left(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "left")})
    end)
  end


  def jm_strafeLeft(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "strafeLeft")})
    end)
  end


  def jm_strafeRight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "strafeRight")})
    end)
  end


  def jm_fire(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "fire")})
    end)
  end


  def jm_special1(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "special1")})
    end)
  end


  def jm_special2(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "special2")})
    end)
  end


  def jm_special3(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "special3")})
    end)
  end


  def jm_special4(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "special4")})
    end)
  end


  def jm_special5(this, p_layerManager, p_gameKeyEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :gameKeyEvent, p_gameKeyEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "special5")})
    end)
  end
end


