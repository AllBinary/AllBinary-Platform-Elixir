# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable.canvas

defmodule BaseMenuBehavior do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BaseMenuBehavior.jnew() end)
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
        throw({:jreturn, BaseMenuBehavior.jstatic_instance()})
    end)
  end


  def jm_onDisplayChangeEvent(this, p_allBinaryGameCanvas, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
        nil
    end)
  end


  def jm_initSpecialPaint(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_setNonBotPaintableP, [NullPaintable.jm_getInstance()])
    end)
  end


  def jm_initMenu(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_updateMenu(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_popupMenu(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_closeMenu(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end
end


