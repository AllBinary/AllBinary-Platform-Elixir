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
# package org.allbinary.game.layer

defmodule SpriteFactoryInterface do
  def jsuper(), do: JObject


  def jm_createSprite(this, p_image, p_frameWidth, p_frameHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :image, p_image)
      JR.lset(f, :frameWidth, p_frameWidth)
      JR.lset(f, :frameHeight, p_frameHeight)
      throw({:jexception, JR.exception("AbstractMethodError", "createSprite")})
    end)
  end
end


