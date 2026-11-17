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
# package org.allbinary.game.resource

defmodule RectangleResourceFactoryInterface do
  def jsuper(), do: JObject


  def jm_getRectangle(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      throw({:jexception, JR.exception("AbstractMethodError", "getRectangle")})
    end)
  end


  def jm_getRectangleArrayOfArrays(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      throw({:jexception, JR.exception("AbstractMethodError", "getRectangleArrayOfArrays")})
    end)
  end
end


