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
# package org.allbinary.logic.system.security.licensing

defmodule ClientInformationFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :logUtil, LogUtil.jm_getInstance())
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :NOT_IMPLEMENTED), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE)])
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        throw({:jreturn, ClientInformation.jnew(JR.get(JR.lget(f, :stringUtil), :NULL_STRING), JR.get(JR.lget(f, :stringUtil), :NULL_STRING), JR.get(JR.lget(f, :stringUtil), :NULL_STRING), JR.get(JR.lget(f, :stringUtil), :NULL_STRING))})
    end)
  end
end


