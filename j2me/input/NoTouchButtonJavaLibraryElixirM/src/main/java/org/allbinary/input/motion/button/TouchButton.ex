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
# package org.allbinary.input.motion.button

defmodule TouchButton do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :touchButtonInput, nil)
    JR.put(this, :animationInterface, nil)
    JR.put(this, :rawRectangle, nil)
    JR.put(this, :xBorder, 0)
    JR.put(this, :yBorder, 0)
    JR.put(this, :rectangle, nil)
    JR.put(this, :cellPosition, nil)
    JR.put(this, :animationX, 0)
    JR.put(this, :animationY, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
        
        
        JR.put(this, :rectangle, RectangleFactory.jstatic_SINGLETON())
        
        JR.put(this, :animationX, 0)
        JR.put(this, :animationY, 0)
    nil
  end


  def jinit(this, p_touchButtonInput, p_animationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :rawRectangle, p_rawRectangle)
      JR.lset(f, :cellPosition, p_cellPosition)
      JR.lset(f, :xBorder, p_xBorder)
      JR.lset(f, :yBorder, p_yBorder)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :touchButtonInput, JR.lget(f, :touchButtonInput))
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
        JR.put(this, :rawRectangle, JR.lget(f, :rawRectangle))
        JR.put(this, :cellPosition, JR.lget(f, :cellPosition))
        JR.put(this, :xBorder, JR.lget(f, :xBorder))
        JR.put(this, :yBorder, JR.lget(f, :yBorder))
        JR.call(this, :jm_updateRectangle, [])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Created: "]), :jm_append, [JR.call(this, :jm_toString, [])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
    end)
  end

  def jnew(p_touchButtonInput, p_animationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_touchButtonInput, p_animationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder)
    this
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.get(this, :animationX), JR.get(this, :animationY)])
    end)
  end


  def jm_updateRectangle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :x, (JR.call(JR.get(this, :rawRectangle), :jm_getWidth, []) * JR.call(JR.get(this, :cellPosition), :jm_getColumn, [])))
            JR.lset(f, :y, (JR.call(JR.get(this, :rawRectangle), :jm_getHeight, []) * JR.call(JR.get(this, :cellPosition), :jm_getRow, [])))
            JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
            JR.put(this, :rectangle, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.int32(JR.lget(f, :x) + JR.get(this, :xBorder)), JR.int32(JR.lget(f, :y) + JR.get(this, :yBorder))]), JR.call(JR.get(this, :rawRectangle), :jm_getWidth, []), JR.call(JR.get(this, :rawRectangle), :jm_getHeight, [])))
            JR.lset(f, :point, JR.call(JR.get(this, :rectangle), :jm_getPoint, []))
            JR.put(this, :animationX, JR.call(JR.lget(f, :point), :jm_getX, []))
            JR.put(this, :animationY, JR.call(JR.lget(f, :point), :jm_getY, []))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "updateRectangle", JR.lget(f, :e)])
        end
    end)
  end


  def jm_getCellPositionP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :cellPosition)})
    end)
  end


  def jm_getRectangleP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rectangle)})
    end)
  end


  def jm_getTouchButtonInput(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :touchButtonInput)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["TouchButton: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :rectangle)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" CellPosition: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.get(this, :cellPosition)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" xBorder: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :xBorder)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" yBorder: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :yBorder)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


