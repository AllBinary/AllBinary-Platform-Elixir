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

#In general allow scrolling of the menu and selection the center item
defmodule CommandFormInputProcessor do
  def jsuper(), do: BasicMenuInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MOTION_GESTURE_SOURCE_ID, 0)
    JR.put(this, :CLICK_DELAY, 0)
    JR.put(this, :clickTimeHelper, nil)
    JR.put(this, :DOUBLE_CLICK_DELAY, 0)
    JR.put(this, :doubleClickTimeHelper, nil)
    JR.put(this, :isSingleKeyProcessing, false)
    JR.put(this, :form, nil)
    JR.put(this, :hasPressed, false)
    JR.put(this, :PROCESS_COMMAND, nil)
    JR.put(this, :NAME_LABEL, nil)
        JR.put(this, :MOTION_GESTURE_SOURCE_ID, JR.get(GameKeyEventFactory.jm_getInstance(), :MOTION_GESTURE_SOURCE_ID))
        JR.put(this, :CLICK_DELAY, 150)
        JR.put(this, :clickTimeHelper, TimeDelayHelper.jnew(JR.get(this, :CLICK_DELAY)))
        JR.put(this, :DOUBLE_CLICK_DELAY, 1200)
        JR.put(this, :doubleClickTimeHelper, TimeDelayHelper.jnew(JR.get(this, :DOUBLE_CLICK_DELAY)))
        JR.put(this, :isSingleKeyProcessing, JR.call(InputFeatureFactory.jm_getInstance(), :jm_isSingleKeyProcessing, []))
        
        JR.put(this, :hasPressed, false)
        JR.put(this, :PROCESS_COMMAND, "processCommand")
        JR.put(this, :NAME_LABEL, " ScrollSelectionForm: ")
    nil
  end


  def jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameKeyEventList, p_gameKeyEventList)
      JR.lset(f, :playerInputId, p_playerInputId)
      JR.lset(f, :gameCanvas, p_gameCanvas)
      JR.lset(f, :form, p_form)
        BasicMenuInputProcessor.jinit(this, JR.lget(f, :gameKeyEventList), JR.lget(f, :playerInputId), JR.lget(f, :gameCanvas))
        CommandFormInputProcessor.jinitfields(this)
        JR.put(this, :form, JR.lget(f, :form))
    end)
  end

  def jnew(p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameKeyEventList, p_playerInputId, p_gameCanvas, p_form)
    this
  end


  def jm_processInput(this, p_key) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        if ((((JR.lget(f, :key) == Canvas.jstatic_LEFT()) || (JR.lget(f, :key) == Canvas.jstatic_RIGHT())) || (JR.lget(f, :key) == Canvas.jstatic_UP())) || (JR.lget(f, :key) == Canvas.jstatic_DOWN())) do
            JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [SelectSound.jm_getInstance()])
            JR.call(JR.get(this, :form), :jm_processInputKey, [JR.lget(f, :key)])
            throw({:jreturn, 1})
        else
            if (JR.lget(f, :key) == Canvas.jstatic_FIRE()) do
            JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [SelectSound.jm_getInstance()])
            throw({:jreturn, JR.call(this, :jm_processCommand, [])})
        end
        end
        throw({:jreturn, 0})
    end)
  end


  def jm_processCommand(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commandCurrentSelectionForm, JR.get(this, :form))
        JR.lset(f, :command, JR.call(JR.lget(f, :commandCurrentSelectionForm), :jm_getSelectedCommand, []))
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :command), :jm_toString, []), this, JR.get(this, :PROCESS_COMMAND)])
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :openGLFeatureFactory, OpenGLFeatureFactory.jm_getInstance())
        if ((SWTUtil.jstatic_isSWT() && JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(JR.lget(f, :openGLFeatureFactory), :OPENGL)])) && (JR.lget(f, :command) != JR.get(GameCommandsFactory.jm_getInstance(), :EXIT_COMMAND))) do
            JR.call(CommandRunnable.jnew(this, JR.lget(f, :command)), :jm_run, [])
        else
            JR.call(PrimaryThreadPool.jm_getInstance(), :jm_runTask, [CommandRunnable.jnew(this, JR.lget(f, :command))])
        end
        if (JR.lget(f, :command) == JR.get(GameCommandsFactory.jm_getInstance(), :QUIT_COMMAND)) do
            throw({:jreturn, -1})
        else
            throw({:jreturn, 1})
        end
    end)
  end


  def jm_processInputList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :motionInputsIndex, JR.call(this, :jm_processMotionInputs, []))
            JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
            JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :key, 0)
            JR.lset(f, :gameKeyEvent, nil)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :gameKeyEvent, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
                JR.lset(f, :key, JR.call(JR.lget(f, :gameKeyEvent), :jm_getKey, []))
                if (JR.call(JR.lget(f, :gameKeyEvent), :jm_getSourceId, []) != JR.get(this, :MOTION_GESTURE_SOURCE_ID)) do
                    if (JR.call(this, :jm_processInput, [JR.lget(f, :key)]) == 1) do
                        throw(:jbreak)
                    end
                end
            end)
            JR.call(this, :jm_clear, [])
            if ((JR.lget(f, :size) > 0) || (JR.lget(f, :motionInputsIndex) >= 0)) do
                throw({:jreturn, 1})
            else
                throw({:jreturn, -1})
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :gameInputStrings), :PROCESS_INPUT), JR.lget(f, :e)])
            throw({:jreturn, -1})
        end
    end)
  end


  def jm_processMotionInputs(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :lastIndex, JR.int32(JR.call(JR.get(this, :motionGestureEventList), :jm_size, []) - 1))
        if (JR.lget(f, :lastIndex) >= 0) do
            JR.lset(f, :motionGestureEvent, JR.aget(JR.get(JR.get(this, :motionGestureEventList), :objectArray), JR.lget(f, :lastIndex)))
            JR.call(this, :jm_processMotionInput, [JR.lget(f, :motionGestureEvent)])
        end
        JR.call(JR.get(this, :motionGestureEventList), :jm_clear, [])
        throw({:jreturn, JR.lget(f, :lastIndex)})
    end)
  end


  def jm_processMotionInput(this, p_motionGestureEvent) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :motionGestureEvent, p_motionGestureEvent)
        JR.lset(f, :touchMotionGestureFactory, TouchMotionGestureFactory.jm_getInstance())
        JR.lset(f, :motionGestureInput, JR.call(JR.lget(f, :motionGestureEvent), :jm_getMotionGesture, []))
        if (JR.lget(f, :motionGestureInput) == JR.get(JR.lget(f, :touchMotionGestureFactory), :RELEASED)) do
            JR.lset(f, :point, JR.call(JR.lget(f, :motionGestureEvent), :jm_getCurrentPoint, []))
            if JR.call(JR.get(this, :form), :jm_isInForm, [JR.lget(f, :point)]) do
                JR.lset(f, :index, JR.call(JR.get(this, :form), :jm_getSelectedIndexForPoint, [JR.lget(f, :point)]))
                if (JR.lget(f, :index) != -1) do
                    JR.call(PrimaryPlayerQueueFactory.jm_getInstance(), :jm_add, [SelectSound.jm_getInstance()])
                    if (JR.lget(f, :index) == JR.call(JR.get(this, :form), :jm_getSelectedIndex, [])) do
                        if JR.call(JR.get(this, :clickTimeHelper), :jm_isTimeTNT, []) do
                            JR.call(this, :jm_processCommand, [])
                        end
                    else
                        JR.call(JR.get(this, :form), :jm_setSelectedIndex, [JR.lget(f, :index)])
                    end
                else
                    nil
                end
            end
            if JR.get(this, :hasPressed) do
                if !JR.call(JR.get(this, :doubleClickTimeHelper), :jm_isTimeTNT, []) do
                    JR.call(JR.get(this, :logUtil), :jm_putF, ["Double Press", this, JR.get(JR.get(this, :gameInputStrings), :PROCESS_MOTION_INPUT)])
                    JR.call(this, :jm_processCommand, [])
                end
                JR.put(JR.get(this, :doubleClickTimeHelper), :delay, JR.get(this, :DOUBLE_CLICK_DELAY))
                JR.call(JR.get(this, :doubleClickTimeHelper), :jm_setStartTimeTNT, [])
            end
            JR.put(this, :hasPressed, false)
        else
            if (JR.lget(f, :motionGestureInput) == JR.get(JR.lget(f, :touchMotionGestureFactory), :PRESSED)) do
            JR.put(JR.get(this, :doubleClickTimeHelper), :delay, 0)
            JR.put(this, :hasPressed, true)
        end
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [BasicMenuInputProcessor.jm_toString(this)]), :jm_append, [JR.get(this, :NAME_LABEL)]), :jm_append, [JR.call(JR.get(this, :form), :jm_toString, [])]), :jm_toString, [])})
    end)
  end
end


