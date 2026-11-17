# Generated Code Do Not Modify
# package org.allbinary.animation

defmodule FillAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :pixelBuffer, nil)
    JR.put(this, :width, 0)
    JR.put(this, :height, 0)
        
        
        
    nil
  end


  def jinit(this, p_pixelBuffer, p_width, p_height, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :pixelBuffer, p_pixelBuffer)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        FillAnimation.jinitfields(this)
        JR.put(this, :width, 100)
        JR.put(this, :height, 100)
        JR.put(this, :pixelBuffer, JR.lget(f, :pixelBuffer))
    end)
  end

  def jnew(p_pixelBuffer, p_width, p_height, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_pixelBuffer, p_width, p_height, p_animationBehavior)
    this
  end


  def jm_setBasicColorP(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :changed, false)
        if ((JR.call(this, :jm_getBasicColorP, []) == nil) || (JR.call(JR.call(this, :jm_getBasicColorP, []), :jm_intValue, []) != JR.call(JR.lget(f, :basicColor), :jm_intValue, []))) do
            JR.lset(f, :changed, true)
        end
        IndexedAnimation.jm_setBasicColorP(this, JR.lget(f, :basicColor))
        if JR.lget(f, :changed) do
            JR.call(this, :jm_updateModifiers, [])
        end
    end)
  end


  def jm_changeBasicColor(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :changed, false)
        if ((JR.call(this, :jm_getChangeBasicColor, []) == nil) || (JR.call(JR.call(this, :jm_getChangeBasicColor, []), :jm_intValue, []) != JR.call(JR.lget(f, :basicColor), :jm_intValue, []))) do
            JR.lset(f, :changed, true)
        end
        IndexedAnimation.jm_changeBasicColor(this, JR.lget(f, :basicColor))
        if JR.lget(f, :changed) do
            JR.call(this, :jm_updateModifiers, [])
        end
    end)
  end


  def jm_setAlpha(this, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alpha, p_alpha)
        JR.lset(f, :changed, false)
        if (JR.get(this, :alphaP) != JR.lget(f, :alpha)) do
            JR.lset(f, :changed, true)
        end
        IndexedAnimation.jm_setAlpha(this, JR.lget(f, :alpha))
        if JR.lget(f, :changed) do
            JR.call(this, :jm_updateModifiers, [])
        end
    end)
  end


  def jm_setScale(this, p_scaleX, p_scaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scaleX, p_scaleX)
      JR.lset(f, :scaleY, p_scaleY)
        nil
    end)
  end


  def jm_setMaxScale(this, p_maxScaleX, p_maxScaleY) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxScaleX, p_maxScaleX)
      JR.lset(f, :maxScaleY, p_maxScaleY)
        nil
    end)
  end


  def jm_updateModifiers(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_paint(this, p_g) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
        JR.call(JR.lget(f, :g), :jm_drawRGB, [JR.get(this, :pixelBuffer), 0, JR.get(this, :width), 0, 0, JR.get(this, :width), JR.get(this, :height), true])
    end)
  end
end


