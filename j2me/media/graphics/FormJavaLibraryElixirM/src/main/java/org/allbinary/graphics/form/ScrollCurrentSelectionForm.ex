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

defmodule ScrollCurrentSelectionForm do
  def jsuper(), do: ScrollSelectionForm

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :moveForSmallScreen, false)
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :processor, nil)
    JR.put(this, :preItemIndexDx, nil)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
    JR.put(this, :maxWidth, 0)
        
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :processor, Processor.jm_getInstance())
        JR.put(this, :preItemIndexDx, ItemIndexDx.jm_getInstance())
        JR.put(this, :dx, 0)
        JR.put(this, :dy, 0)
        JR.put(this, :maxWidth, 0)
    nil
  end


  def jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :formPaintableFactory, p_formPaintableFactory)
      JR.lset(f, :border, p_border)
      JR.lset(f, :adjustedExtraBorder, p_adjustedExtraBorder)
      JR.lset(f, :moveForSmallScreen, p_moveForSmallScreen)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ScrollSelectionForm.jinit(this, JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :formPaintableFactory), JR.lget(f, :border), JR.lget(f, :adjustedExtraBorder), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        ScrollCurrentSelectionForm.jinitfields(this)
        JR.put(this, :moveForSmallScreen, JR.lget(f, :moveForSmallScreen))
    end)
  end

  def jnew(p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_adjustedExtraBorder, p_moveForSmallScreen, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_init(this, p_rectangle, p_formType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :formType, p_formType)
        ScrollSelectionForm.jm_init(this, JR.lget(f, :rectangle), JR.lget(f, :formType))
        JR.lset(f, :formTypeFactory, FormTypeFactory.jm_getInstance())
        if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :TEMP_HORIZONTAL_FORM)) do
            JR.put(this, :processor, TempHorizontalFormProcessor.jnew(this))
            JR.put(this, :preItemIndexDx, TempHorizontalItemIndexDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) do
            JR.put(this, :processor, HorizontalFormProcessor.jnew(this))
            JR.put(this, :preItemIndexDx, HorizontalItemIndexDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
            JR.put(this, :processor, VerticalFormProcessor.jnew(this))
            JR.put(this, :preItemIndexDx, VerticalItemIndexDx.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :NULL_FORM_TYPE)) do
            nil
        else
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.lget(f, :formTypeFactory), :UNK), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        end
        end
        end
        end
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_processTempHorizontalForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :dx, ((JR.get(this, :x) - 30) + (Bitwise.bsr(JR.call(JR.get(this, :rectangle), :jm_getWidth, []), 1))))
        JR.put(this, :dy, JR.get(this, :y))
    end)
  end


  def jm_processHorizontalForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :totalWidth, 0)
        JR.lset(f, :item, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :item, JR.call(this, :jm_get, [JR.lget(f, :index)]))
            JR.lset(f, :totalWidth, JR.int32(JR.lget(f, :totalWidth) + (JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []) + JR.get(this, :border))))
        end)
        JR.put(this, :dx, ((JR.get(this, :x) + (Bitwise.bsr(JR.call(JR.get(this, :rectangle), :jm_getWidth, []), 1))) - (Bitwise.bsr(JR.lget(f, :totalWidth), 1))))
        JR.put(this, :dy, (JR.get(this, :y) + (Bitwise.bsr(JR.call(JR.get(this, :rectangle), :jm_getHeight, []), 1))))
        if JR.get(this, :moveForSmallScreen) do
            JR.lset(f, :maxTitleHeight, 175)
            if (JR.get(this, :dy) < JR.lget(f, :maxTitleHeight)) do
                JR.put(this, :dy, JR.lget(f, :maxTitleHeight))
            end
        end
    end)
  end


  def jm_processVerticalForm(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :totalHeight, 0)
        JR.lset(f, :size, JR.call(this, :jm_size, []))
        JR.lset(f, :item2, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :item2, JR.call(this, :jm_get, [JR.lget(f, :index)]))
            if (JR.get(this, :maxWidth) < JR.call(JR.lget(f, :item2), :jm_getMinimumWidth, [])) do
                JR.put(this, :maxWidth, JR.call(JR.lget(f, :item2), :jm_getMinimumWidth, []))
            end
            JR.lset(f, :totalHeight, JR.int32(JR.lget(f, :totalHeight) + (JR.call(JR.lget(f, :item2), :jm_getMinimumHeight, []) + JR.get(this, :border))))
        end)
        JR.put(this, :dx, ((((JR.call(JR.get(this, :rectangle), :jm_getWidth, []) - JR.get(this, :maxWidth))) / 2)))
        if (JR.call(this, :jm_size, []) > 0) do
            JR.put(this, :dy, (JR.get(this, :y) + ((((JR.call(JR.get(this, :rectangle), :jm_getHeight, []) - JR.lget(f, :totalHeight))) / 2))))
            if JR.get(this, :moveForSmallScreen) do
                JR.lset(f, :maxTitleHeight, 175)
                if (JR.get(this, :dy) < JR.lget(f, :maxTitleHeight)) do
                    JR.put(this, :dy, JR.lget(f, :maxTitleHeight))
                end
            end
        else
            JR.put(this, :dy, JR.get(this, :y))
        end
    end)
  end


  def jm_getXTempHorizontalForm(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, JR.call(this, :jm_getDiffX, [JR.lget(f, :item)])})
    end)
  end


  def jm_getXHorizontalForm(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, 0})
    end)
  end


  def jm_getXVerticalForm(this, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        throw({:jreturn, (JR.call(this, :jm_getDiffX, [JR.lget(f, :item)]) + JR.get(this, :halfBorder))})
    end)
  end


  def jm_getDiffX(this, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :item, p_item)
        throw({:jreturn, (Bitwise.bsr(((JR.get(this, :maxWidth) - JR.call(JR.lget(f, :item), :jm_getMinimumWidth, []))), 1))})
    end)
  end


  def jm_getDx(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dx)})
    end)
  end


  def jm_getDy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :dy)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            JR.call(JR.get(this, :processor), :jm_process, [])
            JR.lset(f, :delta, 0)
            JR.lset(f, :deltaX, JR.call(this, :jm_getDx, []))
            JR.lset(f, :deltaY, JR.call(this, :jm_getDy, []))
            JR.lset(f, :size, JR.call(this, :jm_size, []))
            JR.lset(f, :formTypeFactory, FormTypeFactory.jm_getInstance())
            JR.lset(f, :item, nil)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :item, JR.call(this, :jm_get, [JR.lget(f, :index)]))
                JR.lset(f, :diffX, JR.call(JR.get(this, :preItemIndexDx), :jm_getDx, [JR.lget(f, :index), JR.lget(f, :item), JR.get(this, :dx), JR.get(this, :dy)]))
                if (JR.lget(f, :index) == JR.call(this, :jm_getSelectedIndex, [])) do
                    JR.lset(f, :delta, JR.call(this, :jm_paintItem, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.int32(JR.lget(f, :deltaX) + JR.lget(f, :diffX)), JR.lget(f, :deltaY)]))
                    JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.int32(JR.lget(f, :deltaX) + JR.lget(f, :diffX)), JR.lget(f, :deltaY)])
                else
                    JR.lset(f, :delta, JR.call(this, :jm_paintUnselectedItem, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.int32(JR.lget(f, :deltaX) + JR.lget(f, :diffX)), JR.lget(f, :deltaY)]))
                    JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.int32(JR.lget(f, :deltaX) + JR.lget(f, :diffX)), JR.lget(f, :deltaY)])
                end
                if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :TEMP_HORIZONTAL_FORM)) do
                    nil
                else
                    if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) do
                    JR.lset(f, :deltaX, JR.lget(f, :delta))
                else
                    if (JR.get(this, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
                    JR.lset(f, :deltaY, JR.lget(f, :delta))
                else
                    throw({:jexception, JR.exception("Exception", JR.get(JR.lget(f, :formTypeFactory), :UNK))})
                end
                end
                end
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :PAINT), JR.lget(f, :e)])
        end
    end)
  end
end


