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
# package org.allbinary.graphics.displayable.event

defmodule DisplayChangeEventListener do
  def jsuper(), do: JObject


  def jm_onDisplayChangeEvent(this, p_displayChangeEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayChangeEvent, p_displayChangeEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onDisplayChangeEvent")})
    end)
  end
end


