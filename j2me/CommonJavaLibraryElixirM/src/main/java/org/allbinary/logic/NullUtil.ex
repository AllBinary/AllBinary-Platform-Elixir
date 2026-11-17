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
# package org.allbinary.logic

#ActualPlatform
defmodule NullUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> NullUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_OBJECT, nil)
    JR.put(this, :NULL_CLASS, nil)
    JR.put(this, :NULL_OBJECT_ARRAY, nil)
    JR.put(this, :NULL_CHAR_ARRAY, nil)
    JR.put(this, :NULL_BYTE_ARRAY, nil)
    JR.put(this, :NULL_SHORT_ARRAY_ARRAY, nil)
    JR.put(this, :NULL_INT_ARRAY, nil)
    JR.put(this, :NULL_INT_ARRAY_ARRAY, nil)
    JR.put(this, :NULL_INT_ARRAY_ARRAY_ARRAY, nil)
    JR.put(this, :NULL_FLOAT_ARRAY, nil)
        JR.put(this, :NULL_OBJECT, JObject.jnew())
        JR.put(this, :NULL_CLASS, JR.class_name(JR.get(this, :NULL_OBJECT)))
        JR.put(this, :NULL_OBJECT_ARRAY, JR.anew(0, nil))
        JR.put(this, :NULL_CHAR_ARRAY, JR.anew(0, 0))
        JR.put(this, :NULL_BYTE_ARRAY, JR.anew(0, 0))
        JR.put(this, :NULL_SHORT_ARRAY_ARRAY, JR.anew_of(0, fn -> JR.anew(0, 0) end))
        JR.put(this, :NULL_INT_ARRAY, JR.anew(0, 0))
        JR.put(this, :NULL_INT_ARRAY_ARRAY, JR.anew_of(0, fn -> JR.anew(0, 0) end))
        JR.put(this, :NULL_INT_ARRAY_ARRAY_ARRAY, JR.anew_of(0, fn -> JR.anew_of(0, fn -> JR.anew(0, 0) end) end))
        JR.put(this, :NULL_FLOAT_ARRAY, JR.anew(0, 0.0))
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
        throw({:jreturn, NullUtil.jstatic_instance()})
    end)
  end
end


