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
# package org.allbinary.logic.util.event.handler

defmodule BasicCompositeEventHandlerInterface do
  def jsuper(), do: JObject


  def jm_getEventHandler(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getEventHandler")})
    end)
  end


  def jm_setEventHandler(this, p_basicEventHandlerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicEventHandlerInterface, p_basicEventHandlerInterface)
      throw({:jexception, JR.exception("AbstractMethodError", "setEventHandler")})
    end)
  end
end


