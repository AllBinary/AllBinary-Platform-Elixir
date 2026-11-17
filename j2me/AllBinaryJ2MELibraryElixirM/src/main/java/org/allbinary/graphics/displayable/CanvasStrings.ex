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
# package org.allbinary.graphics.displayable

defmodule CanvasStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CanvasStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :CONSTRUCTOR, nil)
    JR.put(this, :PAUSE, nil)
    JR.put(this, :UN_PAUSE, nil)
    JR.put(this, :SET_FULL_SCREEN_MODE, nil)
    JR.put(this, :SIZE_CHANGED, nil)
    JR.put(this, :SCALED_IMAGES, nil)
    JR.put(this, :PAINT, nil)
    JR.put(this, :ON_DISPLAY_CHANGE_EVENT, nil)
    JR.put(this, :UPDATE_MEASUREMENT, nil)
    JR.put(this, :FD_WIDTH, nil)
    JR.put(this, :FD_HEIGHT, nil)
    JR.put(this, :EMPTY_CHILD_NAME_LIST, nil)
    JR.put(this, :ABOUT, nil)
    JR.put(this, :OPTIONS, nil)
    JR.put(this, :FONT_ATLAS, nil)
    JR.put(this, :OBJ_MODEL, nil)
    JR.put(this, :MD2_MODEL, nil)
    JR.put(this, :_PNG, nil)
        JR.put(this, :CONSTRUCTOR, "MyCanvas::MyCanvas")
        JR.put(this, :PAUSE, "MyCanvas::pause")
        JR.put(this, :UN_PAUSE, "MyCanvas::unPause")
        JR.put(this, :SET_FULL_SCREEN_MODE, "setFullScreenMode")
        JR.put(this, :SIZE_CHANGED, "sizeChanged")
        JR.put(this, :SCALED_IMAGES, "scaledImages")
        JR.put(this, :PAINT, "paint")
        JR.put(this, :ON_DISPLAY_CHANGE_EVENT, "onDisplayChangeEvent")
        JR.put(this, :UPDATE_MEASUREMENT, "updateMeasurement")
        JR.put(this, :FD_WIDTH, " font/display width: ")
        JR.put(this, :FD_HEIGHT, " font/display height: ")
        JR.put(this, :EMPTY_CHILD_NAME_LIST, JR.call(BasicArrayListUtil.jm_getInstance(), :jm_getImmutableInstance, []))
        JR.put(this, :ABOUT, "About")
        JR.put(this, :OPTIONS, "Options")
        JR.put(this, :FONT_ATLAS, "/font.png")
        JR.put(this, :OBJ_MODEL, "_obj")
        JR.put(this, :MD2_MODEL, "_md2")
        JR.put(this, :_PNG, ".png")
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
        throw({:jreturn, CanvasStrings.jstatic_instance()})
    end)
  end
end


