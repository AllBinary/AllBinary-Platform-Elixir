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

defmodule FullTouchButton do
  def jsuper(), do: TouchButton

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_createButton(p_touchButtonInput, p_touchButtonResource, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
      JR.lset(f, :touchButtonResource, p_touchButtonResource)
      JR.lset(f, :rawRectangle, p_rawRectangle)
      JR.lset(f, :cellPosition, p_cellPosition)
      JR.lset(f, :xBorder, p_xBorder)
      JR.lset(f, :yBorder, p_yBorder)
        throw({:jreturn, FullTouchButton.jnew(JR.lget(f, :touchButtonInput), JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(JR.lget(f, :touchButtonResource), :RESOURCE)]), :jm_getInstance, [0]), JR.call(JR.call(FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance(), :jm_get, [JR.get(JR.lget(f, :touchButtonResource), :HINT)]), :jm_getInstance, [0]), JR.lget(f, :rawRectangle), JR.lget(f, :cellPosition), JR.lget(f, :xBorder), JR.lget(f, :yBorder))})
    end)
  end


  def jinit(this, p_touchButtonInput, p_animationInterface, p_hintAnimationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :hintAnimationInterface, p_hintAnimationInterface)
      JR.lset(f, :rawRectangle, p_rawRectangle)
      JR.lset(f, :cellPosition, p_cellPosition)
      JR.lset(f, :xBorder, p_xBorder)
      JR.lset(f, :yBorder, p_yBorder)
        TouchButton.jinit(this, JR.lget(f, :touchButtonInput), JR.lget(f, :animationInterface), JR.lget(f, :hintAnimationInterface), JR.lget(f, :rawRectangle), JR.lget(f, :cellPosition), JR.lget(f, :xBorder), JR.lget(f, :yBorder))
        FullTouchButton.jinitfields(this)
    end)
  end

  def jnew(p_touchButtonInput, p_animationInterface, p_hintAnimationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_touchButtonInput, p_animationInterface, p_hintAnimationInterface, p_rawRectangle, p_cellPosition, p_xBorder, p_yBorder)
    this
  end


  def jm_updateRectangle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :pointFactory, PointFactory.jm_getInstance())
            JR.lset(f, :x, (JR.call(JR.get(this, :rawRectangle), :jm_getWidth, []) * JR.call(JR.get(this, :cellPositionP), :jm_getColumn, [])))
            JR.lset(f, :y, (JR.call(JR.get(this, :rawRectangle), :jm_getHeight, []) * JR.call(JR.get(this, :cellPositionP), :jm_getRow, [])))
            JR.put(this, :rectangleP, Rectangle.jnew(JR.call(JR.lget(f, :pointFactory), :jm_createXY, [JR.lget(f, :x), JR.lget(f, :y)]), (JR.call(JR.get(this, :rawRectangle), :jm_getWidth, []) + ((2 * JR.get(this, :xBorder)))), (JR.call(JR.get(this, :rawRectangle), :jm_getHeight, []) + ((2 * JR.get(this, :yBorder))))))
            JR.lset(f, :point, JR.call(JR.get(this, :rectangleP), :jm_getPoint, []))
            JR.put(this, :animationX, (JR.call(JR.lget(f, :point), :jm_getX, []) + JR.get(this, :xBorder)))
            JR.put(this, :animationY, (JR.call(JR.lget(f, :point), :jm_getY, []) + JR.get(this, :yBorder)))
            JR.put(this, :hintAnimationY, Bitwise.bsr((JR.get(this, :animationY) - JR.call(JR.get(this, :rectangleP), :jm_getHeight, [])), 1))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "updateRectangle", JR.lget(f, :e)])
        end
    end)
  end
end


