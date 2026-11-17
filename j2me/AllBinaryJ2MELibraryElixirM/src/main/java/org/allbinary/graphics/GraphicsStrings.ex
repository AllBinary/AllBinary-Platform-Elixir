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
# package org.allbinary.graphics

defmodule GraphicsStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GraphicsStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ANIMATION, nil)
    JR.put(this, :ANGLE, nil)
    JR.put(this, :MOVEMENT_ANGLE, nil)
    JR.put(this, :ROTATION, nil)
    JR.put(this, :OPACITY, nil)
    JR.put(this, :HTML, nil)
    JR.put(this, :WIDTH, nil)
    JR.put(this, :HEIGHT, nil)
        JR.put(this, :ANIMATION, "animation")
        JR.put(this, :ANGLE, "angle")
        JR.put(this, :MOVEMENT_ANGLE, "movement_angle")
        JR.put(this, :ROTATION, "rotation")
        JR.put(this, :OPACITY, "opacity")
        JR.put(this, :HTML, "HTML")
        JR.put(this, :WIDTH, "width")
        JR.put(this, :HEIGHT, "height")
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
        throw({:jreturn, GraphicsStrings.jstatic_instance()})
    end)
  end
end


