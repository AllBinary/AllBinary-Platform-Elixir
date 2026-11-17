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
# package org.allbinary.logic.math

defmodule MathData do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> MathData.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :EQUALS, nil)
    JR.put(this, :PLUS, nil)
    JR.put(this, :GREATER_THAN, nil)
    JR.put(this, :MINUS, nil)
    JR.put(this, :DIVIDE, nil)
    JR.put(this, :MULTIPLY, nil)
        
        JR.put(this, :PLUS, "+")
        JR.put(this, :GREATER_THAN, ">")
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, MathData.jstatic_instance()})
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
        JR.put(this, :MINUS, JR.get(JR.lget(f, :commonSeps), :DASH))
        JR.put(this, :DIVIDE, JR.get(JR.lget(f, :commonSeps), :FORWARD_SLASH))
        JR.put(this, :MULTIPLY, JR.get(CommonPhoneStrings.jm_getInstance(), :STAR))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


