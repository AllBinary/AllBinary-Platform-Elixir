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
# package org.allbinary.game.input.event

defmodule UpKeyEventListenerInterface do
  def jsuper(), do: JObject


  def jm_onUpKeyEvent(this, p_keyAsInteger) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyAsInteger, p_keyAsInteger)
      throw({:jexception, JR.exception("AbstractMethodError", "onUpKeyEvent")})
    end)
  end
end


