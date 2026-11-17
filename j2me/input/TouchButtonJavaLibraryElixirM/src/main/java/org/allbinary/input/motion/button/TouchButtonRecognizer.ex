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

defmodule TouchButtonRecognizer do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :rectangleCollisionUtil, nil)
    JR.put(this, :upGameKeyEventHandler, nil)
    JR.put(this, :downGameKeyEventHandler, nil)
    JR.put(this, :lastPressedTouchButtonInput, nil)
    JR.put(this, :currentlyPressedTouchButtonSingleton, nil)
    JR.put(this, :releaseHelper, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :rectangleCollisionUtil, RectangleCollisionUtil.jm_getInstance())
        JR.put(this, :upGameKeyEventHandler, UpGameKeyEventHandler.jm_getInstance())
        JR.put(this, :downGameKeyEventHandler, DownGameKeyEventHandler.jm_getInstance())
        JR.put(this, :lastPressedTouchButtonInput, JR.get(BasicTouchInputFactory.jm_getInstance(), :NONE))
        JR.put(this, :currentlyPressedTouchButtonSingleton, CurrentlyPressedTouchButtonSingleton.jm_getInstance())
        JR.put(this, :releaseHelper, nil)
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        if JR.call(TouchScreenFactory.jm_getInstance(), :jm_isMultiTouch, []) do
            JR.put(this, :releaseHelper, MultitouchReleaseHelper.jnew(this))
        else
            JR.put(this, :releaseHelper, ReleaseHelper.jnew(this))
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_processRelease(this, p_touchButtonInput, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
      JR.lset(f, :deviceId, p_deviceId)
        JR.call(JR.get(this, :releaseHelper), :jm_release, [JR.lget(f, :touchButtonInput), JR.lget(f, :deviceId)])
        JR.lset(f, :gameKeyEvent, JR.call(JR.lget(f, :touchButtonInput), :jm_getGameKeyEvent, []))
        JR.call(JR.get(this, :upGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
        JR.call(JR.call(JR.get(this, :upGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
        JR.call(JR.get(this, :currentlyPressedTouchButtonSingleton), :jm_remove, [JR.lget(f, :touchButtonInput)])
    end)
  end


  def jm_releaseTouchButtonInput(this, p_x, p_y, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
        JR.lset(f, :touchButtonInput, JR.get(this, :lastPressedTouchButtonInput))
        if JR.call(JR.get(this, :currentlyPressedTouchButtonSingleton), :jm_contains, [JR.lget(f, :touchButtonInput)]) do
            JR.put(this, :lastPressedTouchButtonInput, JR.get(BasicTouchInputFactory.jm_getInstance(), :NONE))
            JR.call(this, :jm_processRelease, [JR.lget(f, :touchButtonInput), JR.lget(f, :deviceId)])
            throw({:jreturn, true})
        else
            JR.lset(f, :list, JR.call(TouchButtonFactory.jm_getInstance(), :jm_getList, []))
            JR.lset(f, :rectangle, nil)
            JR.lset(f, :point, nil)
            JR.lset(f, :touchButton, nil)
            JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1))
            JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                JR.lset(f, :touchButton, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                JR.lset(f, :rectangle, JR.call(JR.lget(f, :touchButton), :jm_getRectangle, []))
                JR.lset(f, :point, JR.call(JR.lget(f, :rectangle), :jm_getPoint, []))
                if JR.call(JR.get(this, :rectangleCollisionUtil), :jm_isInside, [JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, []), JR.call(JR.lget(f, :rectangle), :jm_getMaxX, []), JR.call(JR.lget(f, :rectangle), :jm_getMaxY, []), JR.lget(f, :x), JR.lget(f, :y)]) do
                    JR.lset(f, :touchButtonInput, JR.call(JR.lget(f, :touchButton), :jm_getTouchButtonInput, []))
                    JR.call(this, :jm_processRelease, [JR.lget(f, :touchButtonInput), JR.lget(f, :deviceId)])
                    throw({:jreturn, true})
                end
            end)
        end
        throw({:jreturn, false})
    end)
  end


  def jm_pressTouchButtonInput(this, p_x, p_y, p_deviceId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :deviceId, p_deviceId)
        JR.lset(f, :list, JR.call(TouchButtonFactory.jm_getInstance(), :jm_getList, []))
        JR.lset(f, :rectangle, nil)
        JR.lset(f, :point, nil)
        JR.lset(f, :touchButton, nil)
        JR.lset(f, :touchButtonInput, nil)
        JR.lset(f, :gameKeyEvent, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :list), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :touchButton, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :rectangle, JR.call(JR.lget(f, :touchButton), :jm_getRectangle, []))
            JR.lset(f, :point, JR.call(JR.lget(f, :rectangle), :jm_getPoint, []))
            if JR.call(JR.get(this, :rectangleCollisionUtil), :jm_isInside, [JR.call(JR.lget(f, :point), :jm_getX, []), JR.call(JR.lget(f, :point), :jm_getY, []), JR.call(JR.lget(f, :rectangle), :jm_getMaxX, []), JR.call(JR.lget(f, :rectangle), :jm_getMaxY, []), JR.lget(f, :x), JR.lget(f, :y)]) do
                JR.lset(f, :touchButtonInput, JR.call(JR.lget(f, :touchButton), :jm_getTouchButtonInput, []))
                if !JR.call(JR.get(this, :currentlyPressedTouchButtonSingleton), :jm_contains, [JR.lget(f, :touchButtonInput)]) do
                    JR.call(JR.get(this, :releaseHelper), :jm_release, [JR.lget(f, :touchButtonInput), JR.lget(f, :deviceId)])
                    JR.put(this, :lastPressedTouchButtonInput, JR.lget(f, :touchButtonInput))
                    JR.call(JR.get(this, :currentlyPressedTouchButtonSingleton), :jm_add, [JR.lget(f, :touchButtonInput)])
                    JR.lset(f, :gameKeyEvent, JR.call(JR.lget(f, :touchButtonInput), :jm_getGameKeyEvent, []))
                    JR.call(JR.get(this, :downGameKeyEventHandler), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                    JR.call(JR.call(JR.get(this, :downGameKeyEventHandler), :jm_getInstanceForDevice, [JR.lget(f, :deviceId)]), :jm_fireEvent, [JR.lget(f, :gameKeyEvent)])
                end
                throw({:jreturn, true})
            end
        end)
        throw({:jreturn, false})
    end)
  end
end


