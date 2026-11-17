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
# package org.allbinary.business.advertisement

defmodule GameAdStateFactoryInterface do
  def jsuper(), do: JObject


  def jm_getInstanceForApp(this, p_softwareInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :softwareInformation, p_softwareInformation)
      throw({:jexception, JR.exception("AbstractMethodError", "getInstanceForApp")})
    end)
  end
end


