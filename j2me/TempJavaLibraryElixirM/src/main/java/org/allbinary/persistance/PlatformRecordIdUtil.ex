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
# package org.allbinary.persistance

defmodule PlatformRecordIdUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PlatformRecordIdUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :PLATFORM_SHORT_NAME, nil)
        JR.put(this, :PLATFORM_SHORT_NAME, "AVN")
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PlatformRecordIdUtil.jstatic_instance()})
    end)
  end


  def jm_getRecordId(this, p_abeClientInformation, p_baseRecordId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :baseRecordId, p_baseRecordId)
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.call(JR.lget(f, :abeClientInformation), :jm_toShortString, [])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :UNDERSCORE)]), :jm_append, [JR.get(this, :PLATFORM_SHORT_NAME)]), :jm_append, [JR.lget(f, :baseRecordId)]), :jm_toString, [])})
    end)
  end
end


