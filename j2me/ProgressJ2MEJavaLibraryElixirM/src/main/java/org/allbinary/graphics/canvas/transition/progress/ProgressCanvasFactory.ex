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
# package org.allbinary.graphics.canvas.transition.progress

defmodule ProgressCanvasFactory do
  def jsuper(), do: JObject
def jstatic_PROGRESS_FORM_SCREEN(), do: JR.static_get(__MODULE__, :PROGRESS_FORM_SCREEN, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_PROGRESS_FORM_SCREEN(value), do: JR.static_put(__MODULE__, :PROGRESS_FORM_SCREEN, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        if (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ProgressCanvasFactory.jstatic_set_PROGRESS_FORM_SCREEN(ProgressCanvas.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN()})
    end)
  end


  def jm_getLazyInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullPaintable.jm_getInstance()})
    end)
  end
end


