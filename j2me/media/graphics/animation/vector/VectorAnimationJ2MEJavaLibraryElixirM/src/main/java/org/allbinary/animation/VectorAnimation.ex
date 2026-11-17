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
# package org.allbinary.animation

defmodule VectorAnimation do
  def jsuper(), do: IndexedAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :currentPoints, nil)
    JR.put(this, :circularIndexUtil, nil)
        JR.put(this, :currentPoints, JR.get(NullUtil.jm_getInstance(), :NULL_INT_ARRAY_ARRAY_ARRAY))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(0))
    nil
  end


  def jm_createVectorAnimation(p_currentPoints2, p_basicColor, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints2, p_currentPoints2)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        JR.lset(f, :currentPoints, JR.anew_of(1, fn -> JR.anew_of(JR.alength(JR.lget(f, :currentPoints2)), fn -> JR.anew(2, 0) end) end))
        JR.lset(f, :size, JR.alength(JR.lget(f, :currentPoints2)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.aget(JR.aget(JR.lget(f, :currentPoints), 0), JR.lget(f, :index)), 0, JR.aget(JR.aget(JR.lget(f, :currentPoints2), JR.lget(f, :index)), 0))
            JR.aset(JR.aget(JR.aget(JR.lget(f, :currentPoints), 0), JR.lget(f, :index)), 1, JR.aget(JR.aget(JR.lget(f, :currentPoints2), JR.lget(f, :index)), 1))
        end)
        throw({:jreturn, VectorAnimation.jnew(JR.lget(f, :currentPoints), JR.lget(f, :basicColor), JR.lget(f, :animationBehavior))})
    end)
  end


  def jinit(this, p_currentPoints, p_basicColor, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
      JR.lset(f, :basicColor, p_basicColor)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        IndexedAnimation.jinit(this, JR.lget(f, :animationBehavior))
        VectorAnimation.jinitfields(this)
        JR.call(this, :jm_setPoints, [JR.lget(f, :currentPoints)])
        JR.call(this, :jm_setBasicColorP, [JR.lget(f, :basicColor)])
    end)
  end

  def jnew(p_currentPoints, p_basicColor, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_currentPoints, p_basicColor, p_animationBehavior)
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


  def jm_getAnimationSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getSize, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.alength(JR.get(this, :currentPoints))})
    end)
  end


  def jm_setSequence(this, p_sequence) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sequence, p_sequence)
        nil
    end)
  end


  def jm_getSequence(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, PrimitiveIntUtil.jm_getArrayInstance()})
    end)
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :circularIndexUtil), :jm_previous, [])
    end)
  end


  def jm_paintVectors(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        try do
            JR.lset(f, :nextPointX, 0)
            JR.lset(f, :nextPointY, 0)
            JR.lset(f, :nextPoint, nil)
            JR.lset(f, :point, nil)
            JR.lset(f, :currentPointsFrame, JR.aget(JR.get(this, :currentPoints), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])))
            JR.lset(f, :size, JR.alength(JR.lget(f, :currentPointsFrame)))
            JR.lset(f, :index, JR.int32(JR.lget(f, :size) - 2))
            JR.jwhile(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn ->
                JR.lset(f, :nextPoint, JR.aget(JR.lget(f, :currentPointsFrame), JR.lget(f, :index)))
                JR.lset(f, :point, JR.aget(JR.lget(f, :currentPointsFrame), JR.int32(JR.lget(f, :index) + 1)))
                JR.lset(f, :nextPointX, JR.aget(JR.lget(f, :nextPoint), 0))
                JR.lset(f, :nextPointY, JR.aget(JR.lget(f, :nextPoint), 1))
                if (JR.lget(f, :nextPointX) != 1000) do
                    JR.call(JR.lget(f, :graphics), :jm_drawLine, [JR.int32(JR.aget(JR.lget(f, :point), 0) + JR.lget(f, :x)), JR.int32(JR.aget(JR.lget(f, :point), 1) + JR.lget(f, :y)), JR.int32(JR.lget(f, :nextPointX) + JR.lget(f, :x)), JR.int32(JR.lget(f, :nextPointY) + JR.lget(f, :y))])
                else
                    JR.lpostinc(f, :index, -1)
                end
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, "paintVectors", JR.lget(f, :e)])
        end
    end)
  end


  def jm_paintXY(this, p_graphics, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.get(this, :basicColor)])
        JR.call(this, :jm_paintVectors, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])})
    end)
  end


  def jm_setFrame(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :circularIndexUtil), :jm_setIndex, [JR.lget(f, :index)])
    end)
  end


  def jm_getPoints(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        throw({:jreturn, JR.aget(JR.get(this, :currentPoints), JR.lget(f, :frame))})
    end)
  end


  def jm_setPoints(this, p_currentPoints) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentPoints, p_currentPoints)
        JR.put(this, :currentPoints, JR.lget(f, :currentPoints))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.alength(JR.lget(f, :currentPoints))))
    end)
  end


  def jm_getBasicColorP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, IndexedAnimation.jm_getBasicColorP(this)})
    end)
  end
end


