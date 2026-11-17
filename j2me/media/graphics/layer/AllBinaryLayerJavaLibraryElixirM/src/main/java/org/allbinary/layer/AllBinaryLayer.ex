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
# package org.allbinary.layer

defmodule AllBinaryLayer do
  def jsuper(), do: Layer
def jstatic_NULL_ALLBINARY_LAYER(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_LAYER, fn -> AllBinaryLayer.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), RectangleFactory.jstatic_SINGLETON(), ViewPositionBase.jstatic_NULL_VIEW_POSITION()) end)
  def jstatic_set_NULL_ALLBINARY_LAYER(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_LAYER, value)
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> "Type: " end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :viewPositionEvent, nil)
    JR.put(this, :halfWidth, 0)
    JR.put(this, :halfHeight, 0)
    JR.put(this, :name, nil)
    JR.put(this, :viewPosition, nil)
        JR.put(this, :viewPositionEvent, ViewPositionEvent.jnew(this))
        JR.put(this, :halfWidth, 0)
        JR.put(this, :halfHeight, 0)
        
        JR.put(this, :viewPosition, ViewPositionBase.jstatic_NULL_VIEW_POSITION())
    nil
  end


  def jinit(this, p_name, p_rectangle, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
        Layer.jinit(this, JR.call(JR.lget(f, :rectangle), :jm_getWidth, []), JR.call(JR.lget(f, :rectangle), :jm_getHeight, []))
        AllBinaryLayer.jinitfields(this)
        JR.lset(f, :localName, nil)
        JR.lset(f, :localName, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :name)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON)]), :jm_append, [J.Integer.jm_toHexString(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_toString, []))
        JR.put(this, :name, JR.lget(f, :localName))
        JR.lset(f, :point, JR.call(JR.lget(f, :rectangle), :jm_getPoint, []))
        JR.call(this, :jm_setPosition, [JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, []), JR.call(JR.lget(f, :point), :jm_getZ, [])])
        JR.call(this, :jm_setHalfWidth, [(Bitwise.bsr(JR.call(this, :jm_getWidth, []), 1))])
        JR.call(this, :jm_setHalfHeight, [(Bitwise.bsr(JR.call(this, :jm_getHeight, []), 1))])
        JR.put(this, :viewPosition, JR.lget(f, :viewPosition))
        JR.call(JR.get(this, :viewPosition), :jm_setAllbinaryLayer, [this])
    end)
  end

  def jnew(p_name, p_rectangle, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_rectangle, p_viewPosition)
    this
  end


  def jm_setPosition(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        Layer.jm_setPosition(this, JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z))
    end)
  end


  def jm_moveDXYZ(this, p_dx, p_dy, p_dz) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      JR.lset(f, :dz, p_dz)
        Layer.jm_moveDXYZ(this, JR.lget(f, :dx), JR.lget(f, :dy), JR.lget(f, :dz))
    end)
  end


  def jm_getXP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_getXP(this)})
    end)
  end


  def jm_getYP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_getYP(this)})
    end)
  end


  def jm_getZP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_getZP(this)})
    end)
  end


  def jm_getWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_getWidth(this)})
    end)
  end


  def jm_getHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_getHeight(this)})
    end)
  end


  def jm_setVisible(this, p_visible) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :visible, p_visible)
        Layer.jm_setVisible(this, JR.lget(f, :visible))
    end)
  end


  def jm_isVisible(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Layer.jm_isVisible(this)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        Layer.jm_paint(this, JR.lget(f, :graphics))
    end)
  end


  def jm_onChangeEvent(this, p_layerManagerEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManagerEvent, p_layerManagerEvent)
        nil
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getX2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int32(JR.call(this, :jm_getXP, []) + JR.call(this, :jm_getWidth, []))})
    end)
  end


  def jm_getY2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int32(JR.call(this, :jm_getYP, []) + JR.call(this, :jm_getHeight, []))})
    end)
  end


  def jm_getZ2(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.int32(((JR.call(this, :jm_getZP, []) + JR.call(this, :jm_getDepth, []))))})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_setHalfWidth(this, p_halfWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :halfWidth, p_halfWidth)
        JR.put(this, :halfWidth, JR.lget(f, :halfWidth))
    end)
  end


  def jm_getHalfWidth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :halfWidth)})
    end)
  end


  def jm_setHalfHeight(this, p_halfHeight) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :halfHeight, p_halfHeight)
        JR.put(this, :halfHeight, JR.lget(f, :halfHeight))
    end)
  end


  def jm_getHalfHeight(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :halfHeight)})
    end)
  end


  def jm_getHalfDepth(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, div(JR.int32(JR.call(this, :jm_getDepth, [])), 2)})
    end)
  end


  def jm_getViewPosition(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :viewPosition)})
    end)
  end


  def jm_setViewPosition(this, p_viewPosition) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :viewPosition, p_viewPosition)
        JR.put(this, :viewPosition, JR.lget(f, :viewPosition))
    end)
  end


  def jm_getGroupInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(BasicGroupFactory.jm_getInstance(), :NONE_ARRAY)})
    end)
  end


  def jm_implmentsTickableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_implmentsGameInputInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_implmentsArtificialIntelligenceCompositeInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_implmentsCollidableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_implementsThreedInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(OpenGLFeatureUtil.jm_getInstance(), :jm_isAnyThreed, [])})
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end


  def jm_getMultiPlayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end


  def jm_toStringAppend(this, p_stringBuffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringBuffer, p_stringBuffer)
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.lset(f, :positionStrings, PositionStrings.jm_getInstance())
        JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COLON)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [AllBinaryLayer.jstatic_TYPE()])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getType, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :X_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getXP, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Y_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getYP, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :positionStrings), :Z_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getZP, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :WIDTH_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getWidth, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :HEIGHT_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getHeight, [])])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(this, :jm_toStringAppend, [JR.lget(f, :stringBuffer)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


