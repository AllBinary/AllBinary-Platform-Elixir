# Generated Code Do Not Modify
# package org.allbinary.graphics.form

defmodule MultipleScrollSelectionHorizontalForm do
  def jsuper(), do: ScrollSelectionForm

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :rectPaintable, nil)
    JR.put(this, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, nil)
    JR.put(this, :backgroundColor, 0)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :logged, false)
    JR.put(this, :fontHeight, 0)
        JR.put(this, :rectPaintable, NullPaintable.jm_getInstance())
        JR.put(this, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, ItemIndexPaintable.jm_getInstance())
        JR.put(this, :backgroundColor, JR.call(JR.get(BasicColorFactory.jm_getInstance(), :TRANSPARENT_GREY), :jm_intValue, []))
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :logged, false)
        JR.put(this, :fontHeight, 0)
    nil
  end


  def jm_createForm(p_title, p_items, p_rectangle, p_formType, p_border, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :formType, p_formType)
      JR.lset(f, :border, p_border)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        JR.lset(f, :scrollSelectionForm, MultipleScrollSelectionHorizontalForm.jnew(JR.lget(f, :title), JR.lget(f, :items), ItemPaintableFactory.jm_getInstance(), JR.lget(f, :border), JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor)))
        JR.call(JR.lget(f, :scrollSelectionForm), :jm_init, [JR.lget(f, :rectangle), JR.lget(f, :formType)])
        throw({:jreturn, JR.lget(f, :scrollSelectionForm)})
    end)
  end


  def jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :title, p_title)
      JR.lset(f, :items, p_items)
      JR.lset(f, :formPaintableFactory, p_formPaintableFactory)
      JR.lset(f, :border, p_border)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
        ScrollSelectionForm.jinit(this, JR.lget(f, :title), JR.lget(f, :items), JR.lget(f, :formPaintableFactory), JR.lget(f, :border), 3, JR.lget(f, :backgroundBasicColor), JR.lget(f, :foregroundBasicColor))
        MultipleScrollSelectionHorizontalForm.jinitfields(this)
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            nil
        else
            JR.put(this, :rectPaintable, MultipleScrollSelectionFormRectPaintable.jnew(this))
        end
    end)
  end

  def jnew(p_title, p_items, p_formPaintableFactory, p_border, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_title, p_items, p_formPaintableFactory, p_border, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_fillRect(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.lget(f, :graphics), :jm_setColor, [JR.get(this, :backgroundColor)])
        JR.call(JR.lget(f, :graphics), :jm_fillRect, [JR.get(this, :x), JR.get(this, :y), JR.call(JR.get(this, :rectangle), :jm_getWidth, []), JR.call(JR.get(this, :rectangle), :jm_getHeight, [])])
    end)
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
        if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :HORIZONTAL_FORM)) do
            JR.put(this, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, MultipleScrollSelectionFormHorizontalPaintable.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :VERTICAL_CENTER_FORM)) do
            JR.put(this, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, MultipleScrollSelectionFormVerticalPaintable.jnew(this))
        else
            if (JR.lget(f, :formType) == JR.get(JR.lget(f, :formTypeFactory), :NULL_FORM_TYPE)) do
            nil
        else
            throw({:jexception, JR.exception("Exception", JR.get(JR.lget(f, :formTypeFactory), :UNK))})
        end
        end
        end
    end)
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :fontHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_paintHorizontal(this, p_graphics, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.lset(f, :dx2, (JR.call(this, :jm_paintItem, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :dx), JR.lget(f, :dy)]) + JR.get(this, :border)))
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :dx), JR.lget(f, :dy)])
        JR.lset(f, :dx, JR.lget(f, :dx2))
        throw({:jreturn, JR.lget(f, :dx)})
    end)
  end


  def jm_paintVertical(this, p_graphics, p_index, p_item, p_dx, p_dy) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :index, p_index)
      JR.lset(f, :item, p_item)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
        JR.call(this, :jm_paintItem, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :dx), JR.lget(f, :dy)])
        JR.call(JR.get(this, :paintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :dx), JR.lget(f, :dy)])
        throw({:jreturn, JR.lget(f, :dx)})
    end)
  end


  def jm_getStartIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSelectedIndex, [])})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
            JR.lset(f, :start, JR.call(this, :jm_getStartIndex, []))
            JR.lset(f, :size, JR.call(this, :jm_size, []))
            JR.lset(f, :dx, JR.get(this, :x))
            JR.lset(f, :dy, JR.get(this, :y))
            JR.call(JR.get(this, :rectPaintable), :jm_paint, [JR.lget(f, :graphics)])
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.call(this, :jm_getTitle, []), JR.get(this, :x), (JR.get(this, :y) - JR.get(this, :fontHeight)), 0])
            JR.lset(f, :item, nil)
            JR.lset(f, :index, JR.lget(f, :start))
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :item, JR.call(this, :jm_get, [JR.lget(f, :index)]))
                if (JR.lget(f, :dx) >= JR.call(JR.get(this, :rectangle), :jm_getMaxX, [])) do
                    if JR.get(this, :logged) do
                        nil
                    else
                        JR.put(this, :logged, true)
                        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["painting beyond maxx: "]), :jm_appendint, [JR.int32(JR.call(JR.get(this, :rectangle), :jm_getMaxX, []))]), :jm_toString, []), this, JR.get(JR.get(this, :canvasStrings), :PAINT))
                    end
                end
                JR.lset(f, :dx, JR.call(JR.get(this, :multipleScrollSelectionHorizontalFormTypeItemIndexPaintable), :jm_paint, [JR.lget(f, :graphics), JR.lget(f, :index), JR.lget(f, :item), JR.lget(f, :dx), JR.lget(f, :dy)]))
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_put(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :canvasStrings), :PAINT))
        end
    end)
  end
end


