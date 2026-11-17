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
# package org.allbinary.graphics.form

defmodule CommandCurrentSelectionForm do
  def jsuper(), do: ScrollCurrentSelectionForm

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :selectedAnimationArray, nil)
    JR.put(this, :unSelectedAnimationArray, nil)
        JR.put(this, :selectedAnimationArray, JR.anew(16, nil))
        JR.put(this, :unSelectedAnimationArray, JR.anew(16, nil))
    nil
  end


  def jinit(this, p_title, p_items, p_border, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :border, p_border)
      JR.lset(f, :moveForSmallScreen, p_moveForSmallScreen)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ScrollCurrentSelectionForm.jinit(this, JR.lget(f, :title), JR.lget(f, :items), ItemPaintableFactory.jm_getInstance(), JR.lget(f, :border), -3, JR.lget(f, :moveForSmallScreen), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        CommandCurrentSelectionForm.jinitfields(this)
        JR.call(this, :jm_initAnimations, [])
        JR.call(this, :jm_addAll, [JR.lget(f, :items)])
    end)
  end

  def jnew(p_title, p_items, p_border, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_border, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(this, :jm_updateAll, [JR.lget(f, :graphics), JR.call(this, :jm_getAllitems, [])])
        ScrollCurrentSelectionForm.jm_updateMeasurement(this, JR.lget(f, :graphics))
    end)
  end


  def jm_initAnimations(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :nullAnimation, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        JR.lset(f, :index, JR.alength(JR.get(this, :selectedAnimationArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.aset(JR.get(this, :selectedAnimationArray), JR.lget(f, :index), JR.lget(f, :nullAnimation))
        end)
        JR.lset(f, :index, JR.alength(JR.get(this, :unSelectedAnimationArray)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.aset(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index), JR.lget(f, :nullAnimation))
        end)
    end)
  end


  def jm_addAll(this, p_items) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :items, p_items)
        JR.lset(f, :index, JR.alength(JR.lget(f, :items)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(this, :jm_addAt, [JR.lget(f, :index), JR.aget(JR.lget(f, :items), JR.lget(f, :index))])
        end)
    end)
  end


  def jm_addAt(this, p_index, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
        JR.lset(f, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.lset(f, :buttonColor, JR.get(JR.lget(f, :basicColorFactory), :TRANSPARENT_GREY))
        JR.lset(f, :selectedButtonColor, JR.get(JR.lget(f, :basicColorFactory), :TRANSPARENT_RED))
        JR.lset(f, :width, JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))
        JR.lset(f, :height, JR.call(JR.lget(f, :item), :jm_getMinimumHeight, []))
        JR.lset(f, :adjustedBorder, 3)
        JR.lset(f, :offset, -((JR.get(this, :halfBorder) + JR.lget(f, :adjustedBorder))))
        JR.lset(f, :rectWidth, ((JR.lget(f, :width) + JR.get(this, :border)) - JR.lget(f, :adjustedBorder)))
        JR.lset(f, :rectHeight, ((JR.lget(f, :height) + JR.get(this, :border)) - JR.lget(f, :adjustedBorder)))
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            JR.aset(JR.get(this, :selectedAnimationArray), JR.lget(f, :index), RectangleAdjustedAnimation.jnew(JR.lget(f, :rectWidth), JR.lget(f, :rectHeight), JR.lget(f, :offset), JR.lget(f, :offset), JR.lget(f, :selectedButtonColor)))
        else
            JR.aset(JR.get(this, :selectedAnimationArray), JR.lget(f, :index), RectangleFilledAdjustedAnimation.jnew(JR.lget(f, :rectWidth), JR.lget(f, :rectHeight), JR.lget(f, :offset), JR.lget(f, :offset), JR.lget(f, :selectedButtonColor)))
        end
        JR.lset(f, :adjustedBorder, 4)
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            JR.aset(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index), RectangleAdjustedAnimation.jnew(JR.lget(f, :rectWidth), JR.lget(f, :rectHeight), JR.lget(f, :offset), JR.lget(f, :offset), JR.lget(f, :buttonColor)))
        else
            JR.aset(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index), RectangleFilledAdjustedAnimation.jnew(JR.lget(f, :rectWidth), JR.lget(f, :rectHeight), JR.lget(f, :offset), JR.lget(f, :offset), JR.lget(f, :buttonColor)))
        end
    end)
  end


  def jm_updateAll(this, p_graphics, p_items) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :items, p_items)
        JR.lset(f, :index, JR.alength(JR.lget(f, :items)))
        JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
            JR.call(JR.aget(JR.lget(f, :items), JR.lget(f, :index)), :jm_preMeasurement, [JR.lget(f, :graphics)])
            JR.call(this, :jm_updateAt, [JR.lget(f, :index), JR.aget(JR.lget(f, :items), JR.lget(f, :index))])
        end)
    end)
  end


  def jm_updateAt(this, p_index, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
        JR.lset(f, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.lset(f, :buttonColor, JR.get(JR.lget(f, :basicColorFactory), :TRANSPARENT_GREY))
        JR.lset(f, :selectedButtonColor, JR.get(JR.lget(f, :basicColorFactory), :TRANSPARENT_RED))
        JR.lset(f, :width, JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))
        JR.lset(f, :height, JR.call(JR.lget(f, :item), :jm_getMinimumHeight, []))
        JR.lset(f, :adjustedBorder, 3)
        JR.lset(f, :offset, -((JR.get(this, :halfBorder) + JR.lget(f, :adjustedBorder))))
        JR.lset(f, :rectWidth, ((JR.lget(f, :width) + JR.get(this, :border)) - JR.lget(f, :adjustedBorder)))
        JR.lset(f, :rectHeight, ((JR.lget(f, :height) + JR.get(this, :border)) - JR.lget(f, :adjustedBorder)))
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            JR.lset(f, :rectangleAdjustedAnimation, JR.aget(JR.get(this, :selectedAnimationArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setWidth, [JR.lget(f, :rectWidth)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setHeight, [JR.lget(f, :rectHeight)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetX, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetY, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setBasicColorP, [JR.lget(f, :selectedButtonColor)])
        else
            JR.lset(f, :rectangleAdjustedAnimation, JR.aget(JR.get(this, :selectedAnimationArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setWidth, [JR.lget(f, :rectWidth)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setHeight, [JR.lget(f, :rectHeight)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetX, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetY, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setBasicColorP, [JR.lget(f, :selectedButtonColor)])
        end
        JR.lset(f, :adjustedBorder, 4)
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            JR.lset(f, :rectangleAdjustedAnimation, JR.aget(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setWidth, [JR.lget(f, :rectWidth)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setHeight, [JR.lget(f, :rectHeight)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetX, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetY, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setBasicColorP, [JR.lget(f, :buttonColor)])
        else
            JR.lset(f, :rectangleAdjustedAnimation, JR.aget(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setWidth, [JR.lget(f, :rectWidth)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setHeight, [JR.lget(f, :rectHeight)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetX, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setOffsetY, [JR.lget(f, :offset)])
            JR.call(JR.lget(f, :rectangleAdjustedAnimation), :jm_setBasicColorP, [JR.lget(f, :buttonColor)])
        end
    end)
  end


  def jm_getSelectedCommand(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, ScrollCurrentSelectionForm.jm_getSelectedIndex(this))
        JR.lset(f, :commandTextItem, JR.call(this, :jm_get, [JR.lget(f, :index)]))
        throw({:jreturn, JR.call(JR.lget(f, :commandTextItem), :jm_getCommand, [])})
    end)
  end


  def jm_append(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        JR.lset(f, :result, ScrollCurrentSelectionForm.jm_append(this, JR.lget(f, :item)))
        JR.call(this, :jm_addAt, [JR.lget(f, :result), JR.lget(f, :item)])
        throw({:jreturn, JR.lget(f, :result)})
    end)
  end


  def jm_delete(this, p_itemNum) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
        ScrollCurrentSelectionForm.jm_delete(this, JR.lget(f, :itemNum))
    end)
  end


  def jm_deleteAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_initAnimations, [])
        ScrollCurrentSelectionForm.jm_deleteAll(this)
    end)
  end


  def jm_insert(this, p_itemNum, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
      JR.lset(f, :item, p_item)
        ScrollCurrentSelectionForm.jm_insert(this, JR.lget(f, :itemNum), JR.lget(f, :item))
    end)
  end


  def jm_set(this, p_itemNum, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemNum, p_itemNum)
      JR.lset(f, :item, p_item)
        ScrollCurrentSelectionForm.jm_set(this, JR.lget(f, :itemNum), JR.lget(f, :item))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        ScrollCurrentSelectionForm.jm_paint(this, JR.lget(f, :graphics))
    end)
  end


  def jm_paintItem(this, p_graphics, p_index, p_item, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.aget(JR.get(this, :selectedAnimationArray), JR.lget(f, :index)), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        throw({:jreturn, ScrollCurrentSelectionForm.jm_paintItem(this, JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :x), JR.lget(f, :y))})
    end)
  end


  def jm_paintUnselectedItem(this, p_graphics, p_index, p_item, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.aget(JR.get(this, :unSelectedAnimationArray), JR.lget(f, :index)), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        throw({:jreturn, ScrollCurrentSelectionForm.jm_paintUnselectedItem(this, JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :x), JR.lget(f, :y))})
    end)
  end
end


