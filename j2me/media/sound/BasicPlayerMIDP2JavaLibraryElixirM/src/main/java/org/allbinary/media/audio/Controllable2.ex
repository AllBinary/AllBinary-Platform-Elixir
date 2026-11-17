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
# package org.allbinary.media.audio

defmodule Controllable2 do
  def jsuper(), do: JObject


  def jm_setVolume(this, p_leftVolume, p_rightVolume) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :leftVolume, p_leftVolume)
      JR.lset(f, :rightVolume, p_rightVolume)
      throw({:jexception, JR.exception("AbstractMethodError", "setVolume")})
    end)
  end
end


