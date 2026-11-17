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

defmodule ScrollSelectionForm do
  def jsuper(), do: PaintableForm
def jstatic_NULL_SCROLL_SELECTION_FORM(), do: JR.static_get(__MODULE__, :NULL_SCROLL_SELECTION_FORM, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_SCROLL_SELECTION_FORM(value), do: JR.static_put(__MODULE__, :NULL_SCROLL_SELECTION_FORM, value)
def jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(), do: JR.static_get(__MODULE__, :NULL_SCROLL_SELECTION_HORIZONTAL_FORM, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(value), do: JR.static_put(__MODULE__, :NULL_SCROLL_SELECTION_HORIZONTAL_FORM, value)
def jstatic_INSIDE_FORM(), do: JR.static_get(__MODULE__, :INSIDE_FORM, fn -> " inside form" end)
  def jstatic_set_INSIDE_FORM(value), do: JR.static_put(__MODULE__, :INSIDE_FORM, value)
def jstatic_IS_IN_FORM(), do: JR.static_get(__MODULE__, :IS_IN_FORM, fn -> "isInForm" end)
  def jstatic_set_IS_IN_FORM(value), do: JR.static_put(__MODULE__, :IS_IN_FORM, value)
def jstatic_GET_SELECTED_INDEX(), do: JR.static_get(__MODULE__, :GET_SELECTED_INDEX, fn -> "getSelectedIndexForPoint" end)
  def jstatic_set_GET_SELECTED_INDEX(value), do: JR.static_put(__MODULE__, :GET_SELECTED_INDEX, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :rectangleCollisionUtil, nil)
    JR.put(this, :border, 0)
    JR.put(this, :halfBorder, 0)
    JR.put(this, :buttonBasicColor, nil)
    JR.put(this, :scrollSelectionFormFormTypeItemIndexPaintable, nil)
    JR.put(this, :formTypeItemIndexDx, nil)
    JR.put(this, :paintable, nil)
    JR.put(this, :adjustedExtraBorder, 0)
        JR.put(this, :rectangleCollisionUtil, RectangleCollisionUtil.jm_getInstance())
        
        
        
        JR.put(this, :scrollSelectionFormFormTypeItemIndexPaintable, ItemIndexPaintable.jm_getInstance())
        JR.put(this, :formTypeItemIndexDx, ItemIndexDx.jm_getInstance())
        JR.put(this, :paintable, ItemPaintableFactory.jm_getInstance())
        
    nil
  end


  def jm_createForm(p_title, p_items, p_formPaintableFactory, p_border, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :formPaintableFactory, p_formPaintableFactory)
      JR.lset(f, :border, p_border)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        try do
            if (JR.lget(f, :formPaintableFactory) == ItemPaintableFactory.jm_getInstance()) do
                throw({:jreturn, ScrollSelectionForm.jnew(JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :formPaintableFactory), JR.lget(f, :border), -3, JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))})
            else
                JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
                JR.lset(f, :logUtil, LogUtil.jm_getInstance())
                JR.call(JR.lget(f, :logUtil), :jm_putF, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), JR.lget(f, :logUtil), JR.get(JR.lget(f, :commonStrings), :EXCEPTION)])
                throw({:jreturn, PaintableForm.jm_getNullPaintableForm()})
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), JR.lget(f, :logUtil), JR.get(JR.lget(f, :commonStrings), :EXCEPTION), JR.lget(f, :e)])
            throw({:jreturn, PaintableForm.jm_getNullPaintableForm()})
        end
    end)
  end


  def jm_getNullScrollSelectionForm() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ScrollSelectionForm.jstatic_set_NULL_SCROLL_SELECTION_FORM(ScrollSelectionForm.jm_createForm(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.anew(0, nil), ItemPaintableFactory.jm_getInstance(), 0, JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM()})
    end)
  end


  def jm_getNullScrollSelectionFormHorizontal() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ScrollSelectionForm.jstatic_set_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(ScrollSelectionForm.jm_createForm(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.anew(0, nil), ItemPaintableFactory.jm_getInstance(), 0, JR.get(BasicColorFactory.jm_getInstance(), :BLACK), JR.get(BasicColorFactory.jm_getInstance(), :WHITE)))
        end
        throw({:jreturn, ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM()})
    end)
  end


  def jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :formPaintableFactory, p_formPaintableFactory)
      JR.lset(f, :border, p_border)
      JR.lset(f, :adjustedExtraBorder, p_adjustedExtraBorder)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        PaintableForm.jinit(this, JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        ScrollSelectionForm.jinitfields(this)
        JR.put(this, :adjustedExtraBorder, JR.lget(f, :adjustedExtraBorder))
        JR.put(this, :buttonBasicColor, JR.lget(f, :foregroundBasicColor))
        JR.put(this, :border, JR.lget(f, :border))
        JR.put(this, :halfBorder, (Bitwise.bsr(JR.lget(f, :border), 1)))
        JR.put(this, :paintable, JR.call(JR.lget(f, :formPaintableFactory), :jm_getInstanceItemPaintable, [this]))
    end)
  end

  def jnew(p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_init(this, p_rectangle, p_formType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :formType, p_formType)
        PaintableForm.jm_init(this, JR.lget(f, :rectangle), JR.lget(f, :formType))
        JR.lset(f, :formTypeFactory, FormTypeFactory.jm_getInstance())
        if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) do
            JR.put(this, :scrollSelectionFormFormTypeItemIndexPaintable, ScrollSelectionFormHorizontalPaintable.jnew(this))
            JR.put(this, :formTypeItemIndexDx, ScrollSelectionFormHorizontalDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
            JR.put(this, :scrollSelectionFormFormTypeItemIndexPaintable, ScrollSelectionFormVerticalPaintable.jnew(this))
            JR.put(this, :formTypeItemIndexDx, ScrollSelectionFormVericalDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :TEMP_HORIZONTAL_FORM)) do
            JR.put(this, :scrollSelectionFormFormTypeItemIndexPaintable, ScrollSelectionFormTempHorizontalPaintable.jnew(this))
            JR.put(this, :formTypeItemIndexDx, ScrollSelectionFormTempHorizontalDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :NULL_FORM_TYPE)) do
            nil
        else
            throw({:jexception, JR.exception("Exception", JR.get(JR.lget(f, :formTypeFactory), :UNK))})
        end
        end
        end
        end
    end)
  end


  def jm_paintItemHorizontal(this, p_graphics, p_index, p_item, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :width, JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))
        throw({:jreturn, JR.int32(JR.int32(JR.lget(f, :x) + JR.lget(f, :width)) + JR.get(this, :border))})
    end)
  end


  def jm_paintItemVertical(this, p_graphics, p_index, p_item, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.lset(f, :height, JR.call(JR.lget(f, :item), :jm_getMinimumHeight, []))
        throw({:jreturn, JR.int32(JR.int32(JR.lget(f, :y) + JR.lget(f, :height)) + JR.get(this, :border))})
    end)
  end


  def jm_paintItemTempHorizontal(this, p_graphics, p_index, p_item, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        throw({:jreturn, 0})
    end)
  end


  def jm_getSelectedIndexForPointHorizontalDx(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, JR.int32(JR.lget(f, :dx) - JR.get(this, :halfBorder))})
    end)
  end


  def jm_getSelectedIndexForPointVerticalDx(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, JR.int32(JR.lget(f, :dx) + JR.call(this, :jm_getDiffX, [JR.lget(f, :item)]))})
    end)
  end


  def jm_getSelectedIndexForPointTempHorizontalDx(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, JR.int32(JR.lget(f, :dx) + JR.call(this, :jm_getDiffX, [JR.lget(f, :item)]))})
    end)
  end


  def jm_append(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        throw({:jreturn, PaintableForm.jm_append(this, JR.lget(f, :item))})
    end)
  end


  def jm_getSelectedItem(this, p_point) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        JR.lset(f, :index, JR.call(this, :jm_getSelectedIndexForPoint, [JR.lget(f, :point)]))
        if (JR.lget(f, :index) != -1) do
            throw({:jreturn, JR.call(this, :jm_get, [JR.lget(f, :index)])})
        else
            throw({:jreturn, ABCustomItem.jm_getNullInstance()})
        end
    end)
  end


  def jm_getItemIndex(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        JR.lset(f, :nextItem, nil)
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextItem, JR.call(this, :jm_get, [JR.lget(f, :index)]))
            if (JR.lget(f, :nextItem) == JR.lget(f, :item)) do
                throw({:jreturn, JR.lget(f, :index)})
            end
        end)
        throw({:jreturn, -1})
    end)
  end


  def jm_getStartIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getSelectedIndexForPoint(this, p_point) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        JR.lset(f, :start, JR.call(this, :jm_getStartIndex, []))
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :dx, JR.call(this, :jm_getDx, []))
        JR.lset(f, :dy, JR.call(this, :jm_getDy, []))
        JR.lset(f, :formTypeFactory, FormTypeFactory.jm_getInstance())
        JR.lset(f, :commonLabels, CommonLabels.jm_getInstance())
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :START_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :start)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :TOTAL_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :size)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, ScrollSelectionForm.jstatic_GET_SELECTED_INDEX()])
        JR.lset(f, :item, nil)
        JR.lset(f, :width, 0)
        JR.lset(f, :height, 0)
        JR.lset(f, :diffX, 0)
        JR.lset(f, :index, JR.lget(f, :start))
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :item, JR.call(this, :jm_get, [JR.lget(f, :index)]))
            JR.lset(f, :width, JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))
            JR.lset(f, :height, JR.call(JR.lget(f, :item), :jm_getMinimumHeight, []))
            JR.lset(f, :diffX, JR.call(JR.get(this, :formTypeItemIndexDx), :jm_getDx, [JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :dx), JR.lget(f, :dy)]))
            if JR.call(JR.get(this, :rectangleCollisionUtil), :jm_isInside, [JR.lget(f, :diffX), JR.int32(JR.lget(f, :dy) - JR.get(this, :halfBorder)), JR.int32(JR.int32(JR.lget(f, :diffX) + JR.lget(f, :width)) + JR.get(this, :border)), JR.int32(JR.int32(JR.int32(JR.lget(f, :dy) + JR.lget(f, :height)) + JR.get(this, :halfBorder)) + 1), JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, [])]) do
                JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :ITEM_LABEL)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :item), :jm_getLabel, [])])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonLabels), :INDEX_LABEL)])
                JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, ScrollSelectionForm.jstatic_GET_SELECTED_INDEX()])
                throw({:jreturn, JR.lget(f, :index)})
            end
            if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) do
                JR.lset(f, :dx, JR.int32(JR.int32(JR.lget(f, :dx) + JR.lget(f, :width)) + JR.get(this, :border)))
                if (JR.lget(f, :dx) > JR.call(JR.get(this, :rectangle), :jm_getMaxX, [])) do
                    throw(:jbreak)
                end
            else
                if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
                JR.lset(f, :dy, JR.int32(JR.int32(JR.lget(f, :dy) + JR.lget(f, :height)) + JR.get(this, :border)))
                if (JR.lget(f, :dy) > JR.call(JR.get(this, :rectangle), :jm_getMaxY, [])) do
                    throw(:jbreak)
                end
            else
                if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :NULL_FORM_TYPE)) do
                nil
            else
                throw({:jexception, JR.exception("Exception", JR.get(JR.lget(f, :formTypeFactory), :UNK))})
            end
            end
            end
        end)
        throw({:jreturn, -1})
    end)
  end


  def jm_processInputKey(this, p_gameKeyCode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyCode, p_gameKeyCode)
        JR.lset(f, :formTypeFactory, FormTypeFactory.jm_getInstance())
        if (JR.call(this, :jm_size, []) == 0) do
            throw({:jreturn, -1})
        end
        JR.lset(f, :index, JR.call(this, :jm_getSelectedIndex, []))
        if ((JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) || (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :TEMP_HORIZONTAL_FORM))) do
            if (JR.lget(f, :gameKeyCode) == Canvas.jstatic_RIGHT()) do
                JR.lpostinc(f, :index, 1)
            else
                if (JR.lget(f, :gameKeyCode) == Canvas.jstatic_LEFT()) do
                JR.lpostinc(f, :index, -1)
            end
            end
        else
            if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
            if (JR.lget(f, :gameKeyCode) == Canvas.jstatic_DOWN()) do
                JR.lpostinc(f, :index, 1)
            else
                if (JR.lget(f, :gameKeyCode) == Canvas.jstatic_UP()) do
                JR.lpostinc(f, :index, -1)
            end
            end
        else
            if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :NULL_FORM_TYPE)) do
            nil
        else
            throw({:jexception, JR.exception("Exception", JR.get(JR.lget(f, :formTypeFactory), :UNK))})
        end
        end
        end
        JR.lset(f, :max, JR.int32(JR.call(this, :jm_size, []) - 1))
        if (JR.lget(f, :index) < 0) do
            JR.call(this, :jm_setSelectedIndex, [0])
        else
            if (JR.lget(f, :index) > JR.lget(f, :max)) do
            JR.call(this, :jm_setSelectedIndex, [JR.lget(f, :max)])
        else
            JR.call(this, :jm_setSelectedIndex, [JR.lget(f, :index)])
        end
        end
        throw({:jreturn, -1})
    end)
  end


  def jm_isInForm(this, p_point) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :point, p_point)
        if JR.call(JR.get(this, :rectangleCollisionUtil), :jm_isInside, [JR.get(this, :x), (JR.get(this, :y) - JR.get(this, :halfBorder)), (JR.call(JR.get(this, :rectangle), :jm_getMaxX, []) + JR.get(this, :border)), (JR.call(JR.get(this, :rectangle), :jm_getMaxY, []) + JR.get(this, :border)), JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, [])]) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :point)])]), :jm_append, [ScrollSelectionForm.jstatic_INSIDE_FORM()]), :jm_toString, []), this, ScrollSelectionForm.jstatic_IS_IN_FORM()])
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
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
        JR.call(JR.lget(f, :item), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        JR.lset(f, :width, JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))
        JR.lset(f, :height, JR.call(JR.lget(f, :item), :jm_getMinimumHeight, []))
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.call(this, :jm_getButtonBasicColor, []), :jm_intValue, [])])
        JR.lset(f, :adjustedBorder, 3)
        JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.int32(JR.int32(JR.lget(f, :x) - JR.get(this, :halfBorder)) - JR.lget(f, :adjustedBorder)), JR.int32(JR.int32(JR.lget(f, :y) - JR.get(this, :halfBorder)) - JR.lget(f, :adjustedBorder)), JR.int32(JR.int32(JR.lget(f, :width) + JR.get(this, :border)) + JR.get(this, :adjustedExtraBorder)), JR.int32(JR.int32(JR.lget(f, :height) + JR.get(this, :border)) + JR.get(this, :adjustedExtraBorder))])
        throw({:jreturn, JR.call(JR.get(this, :scrollSelectionFormFormTypeItemIndexPaintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :x), JR.lget(f, :y)])})
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
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.call(JR.call(this, :jm_getButtonBasicColor, []), :jm_intValue, [])])
        JR.call(JR.lget(f, :item), :jm_paintUnselected, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        throw({:jreturn, JR.call(JR.get(this, :scrollSelectionFormFormTypeItemIndexPaintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :x), JR.lget(f, :y)])})
    end)
  end


  def jm_getDiffX(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        throw({:jreturn, 0})
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :x)})
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :y)})
    end)
  end


  def jm_setButtonBasicColor(this, p_buttonBasicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :buttonBasicColor, p_buttonBasicColor)
        JR.put(this, :buttonBasicColor, JR.lget(f, :buttonBasicColor))
    end)
  end


  def jm_getButtonBasicColor(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :buttonBasicColor)})
    end)
  end
end


