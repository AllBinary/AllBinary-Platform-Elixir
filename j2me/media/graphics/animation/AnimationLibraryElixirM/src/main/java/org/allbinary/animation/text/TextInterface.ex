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
# package org.allbinary.animation.text

defmodule TextInterface do
  def jsuper(), do: JObject


  def jm_setTextWithOnMeasure(this, p_text, p_textChangeListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      JR.lset(f, :textChangeListener, p_textChangeListener)
      throw({:jexception, JR.exception("AbstractMethodError", "setTextWithOnMeasure")})
    end)
  end


  def jm_getText(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getText")})
    end)
  end


  def jm_setText(this, p_text) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :text, p_text)
      throw({:jexception, JR.exception("AbstractMethodError", "setText")})
    end)
  end


  def jm_getFontHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getFontHeight")})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getWidth")})
    end)
  end
end


