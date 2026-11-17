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
# package org.allbinary.graphics.displayable

defmodule ScalableListener do
  def jsuper(), do: JObject


  def jm_getRatio(this, p_ratio) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ratio, p_ratio)
      throw({:jexception, JR.exception("AbstractMethodError", "getRatio")})
    end)
  end


  def jm_getLeft(this, p_xOffset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :xOffset, p_xOffset)
      throw({:jexception, JR.exception("AbstractMethodError", "getLeft")})
    end)
  end


  def jm_getTop(this, p_yOffset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :yOffset, p_yOffset)
      throw({:jexception, JR.exception("AbstractMethodError", "getTop")})
    end)
  end


  def jm_scale(this, p_ratio) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ratio, p_ratio)
      throw({:jexception, JR.exception("AbstractMethodError", "scale")})
    end)
  end
end


