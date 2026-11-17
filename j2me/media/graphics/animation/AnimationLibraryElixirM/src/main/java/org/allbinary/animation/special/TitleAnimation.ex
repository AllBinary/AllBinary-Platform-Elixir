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
# package org.allbinary.animation.special

defmodule TitleAnimation do
  def jsuper(), do: SpecialAnimation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :systemWrapper, nil)
    JR.put(this, :deltaX, 0.0)
    JR.put(this, :deltaY, 0.0)
    JR.put(this, :deltaZ, 0.0)
    JR.put(this, :basicColorArray, nil)
    JR.put(this, :dxArray, nil)
    JR.put(this, :dyArray, nil)
    JR.put(this, :widthP, 0)
    JR.put(this, :animationInterfaceArray, nil)
    JR.put(this, :sizeP, 0)
    JR.put(this, :y, 0)
    JR.put(this, :lastFrameStartTime, 0)
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :CLEAR_COLOR, nil)
        JR.put(this, :systemWrapper, ABSystemWrapper.jm_getInstance())
        JR.put(this, :deltaX, 0.0)
        JR.put(this, :deltaY, 0.0)
        JR.put(this, :deltaZ, 0.0)
        
        
        
        
        
        
        
        
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :CLEAR_COLOR, JR.get(BasicColorFactory.jm_getInstance(), :CLEAR_COLOR))
    nil
  end


  def jm_createAnimation(p_animationInterfaceArray, p_basicColorArray, p_dxArray, p_dyArray, p_y, p_width) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JR.lset(f, :dxArray, p_dxArray)
      JR.lset(f, :dyArray, p_dyArray)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
        throw({:jreturn, TitleAnimation.jnew(JR.lget(f, :animationInterfaceArray), JR.lget(f, :basicColorArray), JR.lget(f, :dxArray), JR.lget(f, :dyArray), JR.lget(f, :y), JR.lget(f, :width), IndexedAnimationBehavior.jnew(1, 250))})
    end)
  end


  def jinit(this, p_animationInterfaceArray, p_basicColorArray, p_dxArray, p_dyArray, p_y, p_width, p_animationBehavior) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
      JR.lset(f, :basicColorArray, p_basicColorArray)
      JR.lset(f, :dxArray, p_dxArray)
      JR.lset(f, :dyArray, p_dyArray)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :animationBehavior, p_animationBehavior)
        SpecialAnimation.jinit(this, JR.lget(f, :animationBehavior))
        TitleAnimation.jinitfields(this)
        JR.put(this, :lastFrameStartTime, JR.call(JR.get(this, :systemWrapper), :jm_currentTimeMillis, []))
        JR.put(this, :animationInterfaceArray, JR.lget(f, :animationInterfaceArray))
        JR.put(this, :sizeP, JR.alength(JR.get(this, :animationInterfaceArray)))
        JR.put(this, :basicColorArray, JR.lget(f, :basicColorArray))
        JR.put(this, :dxArray, JR.lget(f, :dxArray))
        JR.put(this, :dyArray, JR.lget(f, :dyArray))
        JR.put(this, :y, JR.lget(f, :y))
        JR.put(this, :widthP, JR.lget(f, :width))
        JR.call(this, :jm_reset, [])
    end)
  end

  def jnew(p_animationInterfaceArray, p_basicColorArray, p_dxArray, p_dyArray, p_y, p_width, p_animationBehavior) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterfaceArray, p_basicColorArray, p_dxArray, p_dyArray, p_y, p_width, p_animationBehavior)
    this
  end


  def jm_nextFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :currentTime, JR.call(JR.get(this, :systemWrapper), :jm_currentTimeMillis, []))
        JR.lset(f, :totalTimeElapsed, JR.int64(JR.lget(f, :currentTime) - JR.get(this, :lastFrameStartTime)))
        JR.lset(f, :indexedAnimationBehavior, JR.call(this, :jm_getAnimationBehavior, []))
        if (JR.lget(f, :totalTimeElapsed) > JR.get(JR.lget(f, :indexedAnimationBehavior), :frameDelayTime)) do
            JR.call(this, :jm_previousFrame, [])
            JR.put(this, :lastFrameStartTime, JR.lget(f, :currentTime))
        end
        if (JR.call(JR.aget(JR.get(this, :animationInterfaceArray), 0), :jm_getFrame, []) == 0) do
            JR.postinc(JR.lget(f, :indexedAnimationBehavior), :loopIndex, 1)
        end
    end)
  end


  def jm_isComplete(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :indexedAnimationBehavior, JR.call(this, :jm_getAnimationBehavior, []))
        if (((JR.get(JR.lget(f, :indexedAnimationBehavior), :loopTotal) == -1) || (JR.get(JR.lget(f, :indexedAnimationBehavior), :loopIndex) < JR.get(JR.lget(f, :indexedAnimationBehavior), :loopTotal))) || (JR.call(this, :jm_getFrame, []) != 0)) do
            throw({:jreturn, false})
        else
            throw({:jreturn, true})
        end
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


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.aget(JR.get(this, :animationInterfaceArray), 0), :jm_getSize, [])})
    end)
  end


  def jm_getFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.aget(JR.get(this, :animationInterfaceArray), 0), :jm_getFrame, [])})
    end)
  end


  def jm_setFrame(this, p_frame) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :frame, p_frame)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :sizeP)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_setFrame, [JR.lget(f, :frame)])
        end)
    end)
  end


  def jm_setLastFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setFrame, [JR.int32(JR.call(this, :jm_getSize, []) - 1)])
    end)
  end


  def jm_reset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setLastFrame, [])
        JR.lset(f, :indexedAnimationBehavior, (JR.call(this, :jm_getAnimationBehavior, [])))
        JR.call(JR.lget(f, :indexedAnimationBehavior), :jm_reset, [])
    end)
  end


  def jm_previousFrame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :sizeP)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_previousFrame, [])
        end)
    end)
  end


  def jm_paintFrameXY(this, p_graphics, p_frame, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :frame, p_frame)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        JR.call(this, :jm_setFrame, [JR.lget(f, :frame)])
        JR.call(this, :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :x), JR.lget(f, :y)])
    end)
  end


  def jm_paintXY(this, p_graphics, p_ax, p_ay) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
      JR.lset(f, :ax, p_ax)
      JR.lset(f, :ay, p_ay)
        JR.lset(f, :x, 0)
        if (JR.get(this, :widthP) != J.Integer.jstatic_MIN_VALUE()) do
            JR.lset(f, :x, ((((JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastWidth, []) - JR.get(this, :widthP))) / 2)))
        end
        JR.lset(f, :deltaX, 0)
        JR.lset(f, :deltaY, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :sizeP)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :deltaX, JR.int32(JR.aget(JR.get(this, :dxArray), JR.lget(f, :index)) + JR.lget(f, :x)))
            JR.lset(f, :deltaY, JR.int32(JR.aget(JR.get(this, :dyArray), JR.lget(f, :index)) + JR.get(this, :y)))
            if (JR.aget(JR.get(this, :basicColorArray), JR.lget(f, :index)) != JR.get(this, :CLEAR_COLOR)) do
                JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.aget(JR.get(this, :basicColorArray), JR.lget(f, :index))])
            end
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :deltaX), JR.lget(f, :deltaY)])
        end)
    end)
  end
end


