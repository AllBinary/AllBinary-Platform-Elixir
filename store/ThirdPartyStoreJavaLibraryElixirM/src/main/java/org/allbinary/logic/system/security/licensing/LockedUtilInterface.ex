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
# package org.allbinary.logic.system.security.licensing

defmodule LockedUtilInterface do
  def jsuper(), do: JObject


  def jm_isLocked(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isLocked")})
    end)
  end


  def jm_isLockedFeature(this, p_lockableFeatrue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lockableFeatrue, p_lockableFeatrue)
      throw({:jexception, JR.exception("AbstractMethodError", "isLockedFeature")})
    end)
  end
end


