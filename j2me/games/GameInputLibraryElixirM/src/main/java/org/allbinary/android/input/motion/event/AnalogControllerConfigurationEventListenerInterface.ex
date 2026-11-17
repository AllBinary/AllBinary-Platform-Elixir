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
# package org.allbinary.android.input.motion.event

defmodule AnalogControllerConfigurationEventListenerInterface do
  def jsuper(), do: JObject


  def jm_onAnalogControllerConfigurationEvent(this, p_analogControllerConfigurationEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :analogControllerConfigurationEvent, p_analogControllerConfigurationEvent)
      throw({:jexception, JR.exception("AbstractMethodError", "onAnalogControllerConfigurationEvent")})
    end)
  end
end


