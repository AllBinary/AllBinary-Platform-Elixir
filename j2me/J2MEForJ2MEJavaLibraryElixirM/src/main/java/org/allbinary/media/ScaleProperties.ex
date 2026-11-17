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
# package org.allbinary.media

defmodule ScaleProperties do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ScaleProperties.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :scaleX, 0.0)
    JR.put(this, :scaleY, 0.0)
    JR.put(this, :scaleWidth, 0)
    JR.put(this, :scaleHeight, 0)
    JR.put(this, :shouldScale, false)
        JR.put(this, :scaleX, 1.0)
        JR.put(this, :scaleY, 1.0)
        JR.put(this, :scaleWidth, 0)
        JR.put(this, :scaleHeight, 0)
        JR.put(this, :shouldScale, false)
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


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :COLON_SEP)]), :jm_appendboolean, [JR.get(this, :shouldScale)]), :jm_append, ["scaleX: "]), :jm_appendfloat, [JR.get(this, :scaleX)]), :jm_append, ["scaleY: "]), :jm_appendfloat, [JR.get(this, :scaleY)]), :jm_append, ["scaleWidth: "]), :jm_appendint, [JR.get(this, :scaleWidth)]), :jm_append, ["scaleHeight: "]), :jm_appendint, [JR.get(this, :scaleHeight)]), :jm_toString, [])})
    end)
  end
end


