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
# package org.allbinary.input.motion.button

defmodule TouchScreenTypesFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TouchScreenTypesFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :FINGER, nil)
    JR.put(this, :NOTOUCH, nil)
    JR.put(this, :STYLUS, nil)
    JR.put(this, :UNDEFINED, nil)
        JR.put(this, :FINGER, TouchScreenType.jnew("Finger"))
        JR.put(this, :NOTOUCH, TouchScreenType.jnew("No Touch"))
        JR.put(this, :STYLUS, TouchScreenType.jnew("Stylus"))
        JR.put(this, :UNDEFINED, TouchScreenType.jnew("Undefined"))
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
        throw({:jreturn, TouchScreenTypesFactory.jstatic_instance()})
    end)
  end
end


