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
# package org.allbinary.globals

defmodule PATH_GLOBALS do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PATH_GLOBALS.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :DATA_PATH, nil)
    JR.put(this, :INIT_PATH, nil)
    JR.put(this, :VIEWS_PATH, nil)
    JR.put(this, :LOG_PATH, nil)
    JR.put(this, :BACKUP_PATH, nil)
        
        
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, PATH_GLOBALS.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :abPathData, AbPathData.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["data"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :abPathData), :SEPARATOR)])
        JR.put(this, :DATA_PATH, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :DATA_PATH)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonStrings.jm_getInstance(), :INIT)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :abPathData), :SEPARATOR)])
        JR.put(this, :INIT_PATH, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :DATA_PATH)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["log"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :abPathData), :SEPARATOR)])
        JR.put(this, :LOG_PATH, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :DATA_PATH)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["backup"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :abPathData), :SEPARATOR)])
        JR.put(this, :BACKUP_PATH, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
        JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :INIT_PATH)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["views"])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :abPathData), :SEPARATOR)])
        JR.put(this, :VIEWS_PATH, JR.call(JR.lget(f, :stringBuffer), :jm_toString, []))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


