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
# package org.allbinary.game.layer

defmodule AllBinaryGameLayer do
  def jsuper(), do: AllBinaryLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :RED, nil)
    JR.put(this, :paintable, nil)
    JR.put(this, :gameKeyEventList, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :RED, JR.get(BasicColorFactory.jm_getInstance(), :RED))
        JR.put(this, :paintable, AllBinaryGameLayer.jm_createPaintable())
        JR.put(this, :gameKeyEventList, BasicArrayListD.jnew())
    nil
  end


  def jm_createPaintable() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if SWTUtil.jstatic_isSWT() do
            throw({:jreturn, SWTBlackPaintable.jnew()})
        end
        throw({:jreturn, NullPaintable.jm_getInstance()})
    end)
  end


  def jinit(this, p_name, p_layerInfo, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :layerInfo, p_layerInfo)
      JR.lset(f, :viewPosition, p_viewPosition)
        AllBinaryLayer.jinit(this, JR.lget(f, :name), JR.lget(f, :layerInfo), JR.lget(f, :viewPosition))
        AllBinaryGameLayer.jinitfields(this)
    end)
  end

  def jnew(p_name, p_layerInfo, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_layerInfo, p_viewPosition)
    this
  end


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_move(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getGameKeyEventList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameKeyEventList)})
    end)
  end


  def jm_processInput(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_processTick(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_onViewPositionChangeEvent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_onChangeEvent, [JR.get(this, :viewPositionEvent)])
    end)
  end


  def jm_onChangeEvent(this, p_layerManagerEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManagerEvent, p_layerManagerEvent)
        if GameLayerUtil.jm_isOnScreen(this) do
            JR.call(this, :jm_setVisible, [true])
        else
            JR.call(this, :jm_setVisible, [false])
        end
    end)
  end


  def jm_paintFirst(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paintDebug(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(this, :jm_getViewPosition, []))
        JR.lset(f, :viewX, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
        JR.lset(f, :viewY, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.get(this, :RED)])
        JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.lget(f, :viewX), JR.lget(f, :viewY), JR.call(this, :jm_getWidth, []), JR.call(this, :jm_getHeight, [])])
    end)
  end


  def jm_setWidth(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        AllBinaryLayer.jm_setLayerWidth(this, JR.lget(f, :width))
        JR.call(this, :jm_setHalfWidth, [Bitwise.bsr(JR.lget(f, :width), 1)])
    end)
  end


  def jm_setHeight(this, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :height, p_height)
        AllBinaryLayer.jm_setLayerHeight(this, JR.lget(f, :height))
        JR.call(this, :jm_setHalfHeight, [Bitwise.bsr(JR.lget(f, :height), 1)])
    end)
  end
end


