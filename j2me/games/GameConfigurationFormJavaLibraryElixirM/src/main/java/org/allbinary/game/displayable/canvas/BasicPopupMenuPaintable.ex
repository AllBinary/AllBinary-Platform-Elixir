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

defmodule BasicPopupMenuPaintable do
  def jsuper(), do: Paintable
def jstatic_NAME(), do: JR.static_get(__MODULE__, :NAME, fn -> "MENU" end)
  def jstatic_set_NAME(value), do: JR.static_put(__MODULE__, :NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :drawStringUtil, nil)
    JR.put(this, :label, nil)
    JR.put(this, :foregroundBasicColor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :rectangle, nil)
    JR.put(this, :BORDER, 0)
    JR.put(this, :heightOffset, 0)
    JR.put(this, :offset, 0)
    JR.put(this, :animationInterface, nil)
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        JR.put(this, :drawStringUtil, DrawVerticalStringUtil.jm_getInstance())
        
        
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        
        JR.put(this, :BORDER, 0)
        JR.put(this, :heightOffset, 0)
        JR.put(this, :offset, 0)
        JR.put(this, :animationInterface, nil)
    nil
  end


  def jinit(this, p_rectangle, p_backgroundBasicColor, p_foregroundBasicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :backgroundBasicColor, p_backgroundBasicColor)
      JR.lset(f, :foregroundBasicColor, p_foregroundBasicColor)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :foregroundBasicColor, JR.lget(f, :foregroundBasicColor))
        JR.put(this, :label, BasicPopupMenuPaintable.jstatic_NAME())
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            JR.put(this, :animationInterface, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        else
            JR.put(this, :animationInterface, RectangleFilledAnimation.jnew(JR.call(JR.get(this, :rectangle), :jm_getWidth, []), JR.call(JR.get(this, :rectangle), :jm_getHeight, []), JR.get(BasicColorFactory.jm_getInstance(), :TRANSPARENT_GREY)))
        end
        JR.call(this, :jm_init, [JR.lget(f, :rectangle)])
    end)
  end

  def jnew(p_rectangle, p_backgroundBasicColor, p_foregroundBasicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_rectangle, p_backgroundBasicColor, p_foregroundBasicColor)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :isOpenGL, JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)]))
        JR.call(JR.get(this, :drawStringUtil), :jm_updateMeasurement, [JR.lget(f, :graphics), JR.get(this, :label)])
        JR.lset(f, :BORDER, 0)
        if (J2MEUtil.jm_isHTML() || JR.lget(f, :isOpenGL)) do
            JR.lset(f, :BORDER, (MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)) / 2))
        else
            if ((AndroidUtil.jm_isAndroid() || J2MEUtil.jm_isJ2SE()) || SWTUtil.jstatic_isSWT()) do
            JR.lset(f, :BORDER, MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)))
        else
            JR.lset(f, :BORDER, (MyFontProcessor.jm_defaultCharWidth(JR.lget(f, :font)) * 2))
        end
        end
        JR.put(this, :BORDER, JR.lget(f, :BORDER))
        JR.put(this, :heightOffset, (JR.call(JR.get(this, :rectangle), :jm_getHeight, []) - ((JR.call(JR.lget(f, :font), :jm_getHeight, []) * JR.call(BasicPopupMenuPaintable.jstatic_NAME(), :jm_length, [])))))
        if JR.call(OpenGLFeatureUtil.jm_getInstance(), :jm_isAnyThreed, []) do
            JR.put(this, :heightOffset, JR.int32(JR.get(this, :heightOffset) - (JR.call(JR.lget(f, :font), :jm_getHeight, []) + 2)))
            if AndroidUtil.jm_isAndroid() do
                JR.put(this, :heightOffset, JR.call(JR.lget(f, :font), :jm_getHeight, []))
            else
                JR.put(this, :heightOffset, JR.int32(JR.get(this, :heightOffset) - (JR.call(JR.lget(f, :font), :jm_getHeight, []) + 2)))
            end
        end
        JR.put(this, :offset, JR.int32((Bitwise.bsr(JR.get(this, :heightOffset), 1)) + ((if JR.call(SWTJOGLProcessor.jm_getInstance(), :jm_isJOGL, []), do: 4, else: 0))))
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_init(this, p_rectangle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rectangle, p_rectangle)
        JR.put(this, :rectangle, JR.lget(f, :rectangle))
        JR.lset(f, :width, JR.call(JR.get(this, :rectangle), :jm_getWidth, []))
        JR.lset(f, :height, JR.call(JR.get(this, :rectangle), :jm_getHeight, []))
        if (J2MEUtil.jm_isJ2ME() || J2MEUtil.jm_isHTML()) do
            nil
        else
            JR.lset(f, :rectangleFilledAnimation, JR.get(this, :animationInterface))
            JR.call(JR.lget(f, :rectangleFilledAnimation), :jm_setWidth, [JR.lget(f, :width)])
            JR.call(JR.lget(f, :rectangleFilledAnimation), :jm_setHeight, [JR.lget(f, :height)])
        end
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :point, JR.call(JR.get(this, :rectangle), :jm_getPoint, []))
        JR.lset(f, :x, JR.call(JR.lget(f, :point), :jm_getX, []))
        JR.lset(f, :y, JR.call(JR.lget(f, :point), :jm_getY, []))
        JR.lset(f, :width, JR.call(JR.get(this, :rectangle), :jm_getWidth, []))
        JR.lset(f, :height, JR.call(JR.get(this, :rectangle), :jm_getHeight, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.get(this, :foregroundBasicColor)])
        JR.call(JR.get(this, :drawStringUtil), :jm_paintVerticle, [JR.lget(f, :graphics), JR.get(this, :label), JR.int32(JR.lget(f, :x) + JR.get(this, :BORDER)), JR.int32(JR.lget(f, :y) + JR.get(this, :offset)), 0])
        JR.call(JR.lget(f, :graphics), :jm_drawRect, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :width), JR.lget(f, :height)])
    end)
  end
end


