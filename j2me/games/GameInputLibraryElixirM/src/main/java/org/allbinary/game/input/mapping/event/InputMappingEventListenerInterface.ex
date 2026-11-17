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
# package org.allbinary.game.input.mapping.event

defmodule InputMappingEventListenerInterface do
  def jsuper(), do: JObject


  def jm_onInputMappingEvent(this, p_inputMappingEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputMappingEvent, p_inputMappingEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onInputMappingEvent")})
    end)
  end
end


