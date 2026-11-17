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
# package org.allbinary.game.init

defmodule GameInitializationInterface do
  def jsuper(), do: JObject


  def jm_init(this, p_abeClientInformation, p_commandListener, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :level, p_level)
      throw({:jexception, JR.exception("AbstractMethodError", "init")})
    end)
  end
end


