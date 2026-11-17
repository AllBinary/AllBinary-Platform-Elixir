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
# package org.allbinary.game.identification

defmodule GroupCommonFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ID, nil)
    JR.put(this, :GROUP_NAME_LABEL, nil)
    JR.put(this, :ID_LABEL, nil)
    JR.put(this, :ADDING_LABEL, nil)
    JR.put(this, :TO_LABEL, nil)
        JR.put(this, :ID, JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getAt, [10]))
        JR.put(this, :GROUP_NAME_LABEL, "Group Name: ")
        JR.put(this, :ID_LABEL, " Id: ")
        JR.put(this, :ADDING_LABEL, "Adding: ")
        JR.put(this, :TO_LABEL, " to: ")
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
        if (GroupCommonFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            GroupCommonFactory.jstatic_set_instance(GroupCommonFactory.jnew())
        end
        throw({:jreturn, GroupCommonFactory.jstatic_instance()})
    end)
  end
end


