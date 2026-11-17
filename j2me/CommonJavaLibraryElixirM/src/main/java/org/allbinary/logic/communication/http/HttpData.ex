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
# package org.allbinary.logic.communication.http

defmodule HttpData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> HttpData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EQUALS, nil)
    JR.put(this, :PARAM_SEP, nil)
    JR.put(this, :URL_PARAM_SEP, nil)
    JR.put(this, :URL_LABEL, nil)
        
        
        
        JR.put(this, :URL_LABEL, "Url: ")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, HttpData.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.put(this, :EQUALS, JR.get(JR.lget(f, :commonSeps), :EQUALS))
        JR.put(this, :PARAM_SEP, JR.get(JR.lget(f, :commonSeps), :AMPERSAND))
        JR.put(this, :URL_PARAM_SEP, JR.get(JR.lget(f, :commonSeps), :QUESTION))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


