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

defmodule VectorInterface do
  def jsuper(), do: JObject


  def jm_getPoints(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
      throw({:jexception, JR.exception("AbstractMethodError", "getPoints")})
    end)
  end


  def jm_setPoints(this, p_currentPoints) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      throw({:jexception, JR.exception("AbstractMethodError", "setPoints")})
    end)
  end
end


