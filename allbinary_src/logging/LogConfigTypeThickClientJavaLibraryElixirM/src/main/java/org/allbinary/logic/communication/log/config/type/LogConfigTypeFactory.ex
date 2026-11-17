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
# package org.allbinary.logic.communication.log.config.type

defmodule LogConfigTypeFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LogConfigTypeFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NO_DESCRIPTION, nil)
    JR.put(this, :OS, nil)
    JR.put(this, :FACTORYERROR, nil)
    JR.put(this, :FILE, nil)
    JR.put(this, :FILEERROR, nil)
    JR.put(this, :IDLOGGING, nil)
    JR.put(this, :REPLACE, nil)
    JR.put(this, :REPLACE_INFO, nil)
    JR.put(this, :REPLACEERROR, nil)
        JR.put(this, :NO_DESCRIPTION, "No Description")
        JR.put(this, :OS, LogConfigType.jnew("Operating System", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :FACTORYERROR, LogConfigType.jnew("Factory Error", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :FILE, LogConfigType.jnew("File", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :FILEERROR, LogConfigType.jnew("File Error", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :IDLOGGING, LogConfigType.jnew("ID Logging", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :REPLACE, LogConfigType.jnew("Replace", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :REPLACE_INFO, LogConfigType.jnew("Replace Info", JR.get(this, :NO_DESCRIPTION)))
        JR.put(this, :REPLACEERROR, LogConfigType.jnew("Replace Error", JR.get(this, :NO_DESCRIPTION)))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, LogConfigTypeFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_add, [JR.get(this, :OS)])
        JR.call(LogConfigTypes.jstatic_LOGGING(), :jm_add, [JR.get(this, :FACTORYERROR)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


