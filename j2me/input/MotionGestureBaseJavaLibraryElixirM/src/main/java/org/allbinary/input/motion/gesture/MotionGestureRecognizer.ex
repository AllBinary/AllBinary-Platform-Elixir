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
# package org.allbinary.input.motion.gesture

defmodule MotionGestureRecognizer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :j2seMath, nil)
    JR.put(this, :origin, nil)
    JR.put(this, :previous, nil)
    JR.put(this, :intermediate, nil)
    JR.put(this, :line, nil)
    JR.put(this, :motionGesturesHandler, nil)
    JR.put(this, :movedMotionGesturesHandler, nil)
    JR.put(this, :scrolledMotionGesturesHandler, nil)
    JR.put(this, :motionEventCircularPool, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :j2seMath, J2SEMath.jm_getInstance())
        JR.put(this, :origin, JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO))
        JR.put(this, :previous, JR.get(this, :origin))
        JR.put(this, :intermediate, JR.get(this, :origin))
        JR.put(this, :line, Line.jnew(JR.get(this, :origin), JR.get(this, :origin)))
        
        
        
        
    nil
  end


  def jinit(this, p_id) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :motionEventCircularPool, MotionEventCircularPool.jm_createPool(JR.lget(f, :id)))
        JR.lset(f, :motionGesturesHandler, BasicEventHandler.jnew())
        JR.lset(f, :movedMotionGesturesHandler, JR.lget(f, :motionGesturesHandler))
        JR.lset(f, :scrolledMotionGesturesHandler, JR.lget(f, :motionGesturesHandler))
        try do
            JR.lset(f, :motionGesturesHandler, BasicMotionGesturesHandler.jm_getInstance())
            JR.lset(f, :movedMotionGesturesHandler, MovedMotionGesturesHandler.jm_getInstance())
            JR.lset(f, :scrolledMotionGesturesHandler, ScrolledMotionGesturesHandler.jm_getInstance())
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
        JR.put(this, :motionGesturesHandler, JR.lget(f, :motionGesturesHandler))
        JR.put(this, :movedMotionGesturesHandler, JR.lget(f, :movedMotionGesturesHandler))
        JR.put(this, :scrolledMotionGesturesHandler, JR.lget(f, :scrolledMotionGesturesHandler))
    end)
  end

  def jnew(p_id) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id)
    this
  end


  def jm_processPressedMotionEvent(this, p_current, p_deviceId, p_button) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :current, p_current)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :button, p_button)
        JR.put(this, :intermediate, JR.get(this, :origin))
        JR.put(this, :previous, JR.get(this, :origin))
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.get(TouchMotionGestureFactory.jm_getInstance(), :PRESSED)]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.get(this, :previous)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :current)])
        JR.call(JR.get(this, :motionGesturesHandler), :jm_fireEvent, [JR.lget(f, :event)])
        throw({:jreturn, true})
    end)
  end


  def jm_processReleasedMotionEvent(this, p_current, p_deviceId, p_button) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :current, p_current)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :button, p_button)
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.get(TouchMotionGestureFactory.jm_getInstance(), :RELEASED)]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.get(this, :previous)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :current)])
        JR.call(JR.get(this, :motionGesturesHandler), :jm_fireEvent, [JR.lget(f, :event)])
        throw({:jreturn, true})
    end)
  end


  def jm_processDraggedMotionEvent(this, p_current, p_deviceId, p_buttonMask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :current, p_current)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :buttonMask, p_buttonMask)
        if ((JR.get(this, :previous) == JR.get(this, :origin)) || (JR.get(this, :intermediate) == JR.get(this, :origin))) do
            JR.put(this, :previous, JR.lget(f, :current))
            JR.put(this, :intermediate, JR.lget(f, :current))
            throw({:jreturn, nil})
        end
        JR.call(JR.get(this, :line), :jm_setP1, [JR.get(this, :previous)])
        JR.call(JR.get(this, :line), :jm_setP2, [JR.lget(f, :current)])
        JR.lset(f, :minimumMotionGesture, JR.call(MotionGestureConfigurationFactory.jm_getInstance(), :jm_getMinimumMotionGesture, []))
        if ((JR.call(JR.get(this, :j2seMath), :jm_abs, [(JR.call(JR.get(this, :line), :jm_getDeltaX, []) * 1.0)]) < JR.lget(f, :minimumMotionGesture)) && (JR.call(JR.get(this, :j2seMath), :jm_abs, [(JR.call(JR.get(this, :line), :jm_getDeltaY, []) * 1.0)]) < JR.lget(f, :minimumMotionGesture))) do
            JR.put(this, :intermediate, JR.lget(f, :current))
            throw({:jreturn, nil})
        end
        JR.lset(f, :gradient, JR.call(JR.get(this, :line), :jm_getGradient, []))
        JR.lset(f, :absGradient, (JR.call(JR.get(this, :j2seMath), :jm_abs, [(JR.lget(f, :gradient) * 1.0)]) * 1.0))
        JR.lset(f, :conf, MotionGestureConfigurationFactory.jm_getInstance())
        JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :NO_MOTION))
        JR.lset(f, :diagonalToleranceHigher, 12.0)
        JR.lset(f, :diagonalToleranceLower, 12.0)
        if JR.call(JR.lget(f, :conf), :jm_isDiagonalMotionGestureAllowed, []) do
            JR.lset(f, :diagonalToleranceHigher, (((90 - JR.call(JR.lget(f, :conf), :jm_getDiagonalTolerance, []))) * 1.0))
            JR.lset(f, :diagonalToleranceLower, (JR.call(JR.lget(f, :conf), :jm_getDiagonalTolerance, []) * 1.0))
        end
        if (JR.lget(f, :absGradient) > :math.tan(:math.toRadians(JR.lget(f, :diagonalToleranceHigher)))) do
            if (JR.call(JR.get(this, :line), :jm_getDeltaY, []) > 0) do
                JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :UP))
            else
                JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :DOWN))
            end
        else
            if (JR.lget(f, :absGradient) < :math.tan(:math.toRadians(JR.lget(f, :diagonalToleranceLower)))) do
                if (JR.call(JR.get(this, :line), :jm_getDeltaX, []) > 0) do
                    JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :LEFT))
                else
                    JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :RIGHT))
                end
            else
                if (JR.lget(f, :gradient) > 0.0) do
                    if (JR.call(JR.get(this, :line), :jm_getDeltaX, []) > 0) do
                        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_UP_LEFT))
                    else
                        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_DOWN_RIGHT))
                    end
                else
                    if (JR.call(JR.get(this, :line), :jm_getDeltaX, []) > 0) do
                        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_DOWN_LEFT))
                    else
                        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :DIAGONAL_UP_RIGHT))
                    end
                end
            end
        end
        JR.put(this, :previous, JR.lget(f, :current))
        JR.put(this, :intermediate, JR.lget(f, :current))
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.lget(f, :newMotionGesture)]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.get(this, :previous)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :current)])
        JR.call(JR.get(this, :motionGesturesHandler), :jm_fireEvent, [JR.lget(f, :event)])
        throw({:jreturn, nil})
    end)
  end


  def jm_processMovedMotionEvent(this, p_current, p_deviceId, p_button) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :current, p_current)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :button, p_button)
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.get(TouchMotionGestureFactory.jm_getInstance(), :NO_MOTION)]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.get(this, :previous)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :current)])
        JR.call(JR.get(this, :movedMotionGesturesHandler), :jm_fireEvent, [JR.lget(f, :event)])
        throw({:jreturn, true})
    end)
  end


  def jm_processScrolledMotionEvent(this, p_current, p_deviceId, p_button) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :current, p_current)
      JR.lset(f, :deviceId, p_deviceId)
      JR.lset(f, :button, p_button)
        JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
        JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :NO_MOTION))
        if (JR.lget(f, :button) > 0) do
            JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :SCROLL_UP))
        else
            if (JR.lget(f, :button) < 0) do
            JR.lset(f, :newMotionGesture, JR.get(JR.lget(f, :touchMotionGestureFactory), :SCROLL_DOWN))
        end
        end
        JR.lset(f, :event, JR.call(JR.get(this, :motionEventCircularPool), :jm_getInstance, [JR.lget(f, :newMotionGesture)]))
        JR.call(JR.lget(f, :event), :jm_setPreviousPoint, [JR.get(this, :previous)])
        JR.call(JR.lget(f, :event), :jm_setCurrentPoint, [JR.lget(f, :current)])
        JR.call(JR.get(this, :scrolledMotionGesturesHandler), :jm_fireEvent, [JR.lget(f, :event)])
        throw({:jreturn, true})
    end)
  end


  def jm_getMotionGesturesHandler(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :motionGesturesHandler)})
    end)
  end
end


