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
# package org.allbinary.game.displayable.canvas

defmodule DemoCanvasProgressUtil do
  def jsuper(), do: JObject

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


  def jm_showProgress(p_demoCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoCanvas, p_demoCanvas)
        DemoCanvasProgressUtil.jm_showProgressOptionallyInTheBackground(JR.lget(f, :demoCanvas), false)
    end)
  end


  def jm_showProgressOptionallyInTheBackground(p_demoCanvas, p_background) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :demoCanvas, p_demoCanvas)
      JR.lset(f, :background, p_background)
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_startBackground, [JR.lget(f, :background)])
        JR.lset(f, :paintableArray, JR.anew(2, nil))
        JR.aset(JR.lget(f, :paintableArray), 0, JR.lget(f, :progressCanvas))
        JR.aset(JR.lget(f, :paintableArray), 1, JR.call(JR.lget(f, :demoCanvas), :jm_getDefaultPaintableInterface, []))
        JR.call(JR.lget(f, :demoCanvas), :jm_setDefaultPaintableInterface, [PaintableComposite.jnew(JR.lget(f, :paintableArray))])
        JR.call(JR.lget(f, :demoCanvas), :jm_setPaintableInterface, [JR.call(JR.lget(f, :demoCanvas), :jm_getDefaultPaintableInterface, [])])
    end)
  end
end


