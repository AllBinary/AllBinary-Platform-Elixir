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

defmodule BasicPaintablesCanvas do
  def jsuper(), do: GameCommandCanvas

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :paintableArray, nil)
    JR.put(this, :colorFillPaintable, nil)
        
        
    nil
  end


  def jinit(this, p_cmdListener, p_name, p_allBinaryGameLayerManager, p_paintableArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :name, p_name)
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
      JR.lset(f, :paintableArray, p_paintableArray)
        GameCommandCanvas.jinit(this, JR.lget(f, :cmdListener), JR.lget(f, :name), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getForegroundBasicColor, []))
        BasicPaintablesCanvas.jinitfields(this)
        JR.put(this, :paintableArray, JR.lget(f, :paintableArray))
        JR.put(this, :colorFillPaintable, JR.call(ColorFillPaintableFactory.jm_getInstance(), :jm_getInstance, [JR.call(JR.lget(f, :allBinaryGameLayerManager), :jm_getBackgroundBasicColor, []), false]))
    end)
  end

  def jnew(p_cmdListener, p_name, p_allBinaryGameLayerManager, p_paintableArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_cmdListener, p_name, p_allBinaryGameLayerManager, p_paintableArray)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :colorFillPaintable), :jm_paint, [JR.lget(f, :graphics)])
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :foregroundColor)])
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :paintableArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(JR.get(this, :paintableArray), JR.lget(f, :index)), :jm_paint, [JR.lget(f, :graphics)])
        end)
        GameCommandCanvas.jm_paint(this, JR.lget(f, :graphics))
    end)
  end
end


