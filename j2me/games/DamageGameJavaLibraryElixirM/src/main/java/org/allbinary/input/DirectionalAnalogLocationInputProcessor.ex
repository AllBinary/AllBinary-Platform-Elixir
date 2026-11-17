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
# package org.allbinary.input

defmodule DirectionalAnalogLocationInputProcessor do
  def jsuper(), do: AnalogLocationInputProcessor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :inputProcessorArray, nil)
    JR.put(this, :gameKeyFactory, nil)
    JR.put(this, :leftGameKeyEvent, nil)
    JR.put(this, :rightGameKeyEvent, nil)
    JR.put(this, :upGameKeyEvent, nil)
    JR.put(this, :downGameKeyEvent, nil)
    JR.put(this, :leftTriggerGameKeyEvent, nil)
    JR.put(this, :rightTriggerGameKeyEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :gameKeyFactory, GameKeyFactory.jm_getInstance())
        JR.put(this, :leftGameKeyEvent, GameKeyEvent.jstatic_NONE())
        JR.put(this, :rightGameKeyEvent, GameKeyEvent.jstatic_NONE())
        JR.put(this, :upGameKeyEvent, GameKeyEvent.jstatic_NONE())
        JR.put(this, :downGameKeyEvent, GameKeyEvent.jstatic_NONE())
        JR.put(this, :leftTriggerGameKeyEvent, GameKeyEvent.jstatic_NONE())
        JR.put(this, :rightTriggerGameKeyEvent, GameKeyEvent.jstatic_NONE())
    nil
  end


  def jinit(this, p_inputProcessorArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :inputProcessorArray, p_inputProcessorArray)
      AnalogLocationInputProcessor.jinit(this)
      jinitfields(this)
        JR.put(this, :inputProcessorArray, JR.lget(f, :inputProcessorArray))
        try do
            JR.put(this, :leftGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :LEFT)]))
            JR.put(this, :rightGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :RIGHT)]))
            JR.put(this, :upGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :UP)]))
            JR.put(this, :downGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :DOWN)]))
            JR.put(this, :leftTriggerGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM0)]))
            JR.put(this, :rightTriggerGameKeyEvent, JR.call(GameKeyEventFactory.jm_getInstance(), :jm_getInstanceForInput, [this, JR.get(JR.get(this, :gameKeyFactory), :KEY_NUM5)]))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end

  def jnew(p_inputProcessorArray) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_inputProcessorArray)
    this
  end


  def jm_process(this, p_allbinaryLayerManager, p_analogLocationInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :analogLocationInput, p_analogLocationInput)
        try do
            JR.lset(f, :customGPoint, nil)
            JR.lset(f, :customGPoint, JR.call(JR.lget(f, :analogLocationInput), :jm_getCustomGPoint, []))
            JR.lset(f, :x, JR.call(JR.lget(f, :customGPoint), :jm_getX, []))
            JR.lset(f, :y, JR.call(JR.lget(f, :customGPoint), :jm_getY, []))
            JR.lset(f, :leftTrigger, JR.call(JR.lget(f, :analogLocationInput), :jm_getLeftTrigger, []))
            JR.lset(f, :rightTrigger, JR.call(JR.lget(f, :analogLocationInput), :jm_getRightTrigger, []))
            if (JR.lget(f, :x) < 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :leftGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :leftGameKeyEvent), JR.lget(f, :x)])
            else
                if (JR.lget(f, :x) > 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :rightGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :rightGameKeyEvent), JR.lget(f, :x)])
            end
            end
            if (JR.lget(f, :y) < 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :downGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :downGameKeyEvent), JR.lget(f, :y)])
            else
                if (JR.lget(f, :y) > 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :upGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :upGameKeyEvent), JR.lget(f, :y)])
            end
            end
            if (JR.lget(f, :leftTrigger) > 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :leftTriggerGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :leftTriggerGameKeyEvent), JR.lget(f, :leftTrigger)])
            end
            if (JR.lget(f, :rightTrigger) > 0) do
                JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.call(JR.get(this, :rightTriggerGameKeyEvent), :jm_getKey, [])), :jm_processAnalog, [JR.lget(f, :allbinaryLayerManager), JR.get(this, :rightTriggerGameKeyEvent), JR.lget(f, :rightTrigger)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, ["Unable to process analog input", this, JR.get(JR.lget(f, :commonStrings), :PROCESS), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getSourceId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


