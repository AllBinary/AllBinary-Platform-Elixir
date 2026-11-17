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
# package org.allbinary.game.input

defmodule TestingInputSingleton do
  def jsuper(), do: AllBinaryGameLayer
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> TestingInputSingleton.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :inputProcessorArray, nil)
    JR.put(this, :testInputPaintable, nil)
        JR.put(this, :inputProcessorArray, JR.anew(JR.get(InputFactory.jm_getInstance(), :MAX), nil))
        JR.put(this, :testInputPaintable, NullPaintable.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, TestingInputSingleton.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        AllBinaryGameLayer.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), RectangleFactory.jstatic_SINGLETON(), ViewPosition.jm_getInstanceD())
        TestingInputSingleton.jinitfields(this)
        GameInputProcessorUtil.jm_init(JR.get(this, :inputProcessorArray))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_initInputProcessors(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_initInputProcessorsForTestInput(this, p_aTestInputInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :aTestInputInterface, p_aTestInputInterface)
        JR.lset(f, :testInputInterface, JR.lget(f, :aTestInputInterface))
        JR.put(this, :testInputPaintable, JR.lget(f, :testInputInterface))
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_UP(), GameInputProcessor.jnew())
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_DOWN(), GameInputProcessor.jnew())
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_LEFT(), GameInputProcessor.jnew())
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_RIGHT(), GameInputProcessor.jnew())
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_KEY_NUM7(), GameInputProcessor.jnew())
        JR.aset(JR.get(this, :inputProcessorArray), Canvas.jstatic_KEY_NUM9(), GameInputProcessor.jnew())
        GameInputProcessorUtil.jm_init(JR.get(this, :inputProcessorArray))
    end)
  end


  def jm_processInputList(this, p_allbinaryLayerManager, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :list, p_list)
        JR.lset(f, :key, 0)
        JR.lset(f, :gameKeyEvent, nil)
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameKeyEvent, (JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index))))
            JR.lset(f, :key, JR.call(JR.lget(f, :gameKeyEvent), :jm_getKey, []))
            JR.call(JR.aget(JR.get(this, :inputProcessorArray), JR.lget(f, :key)), :jm_processEvent, [JR.lget(f, :allbinaryLayerManager), GameKeyEvent.jstatic_NONE()])
        end)
    end)
  end


  def jm_processInput(this, p_allbinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
        JR.call(this, :jm_processInputList, [JR.lget(f, :allbinaryLayerManager), JR.call(this, :jm_getGameKeyEventList, [])])
        JR.call(JR.call(this, :jm_getGameKeyEventList, []), :jm_clear, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :testInputPaintable), :jm_paint, [JR.lget(f, :graphics)])
    end)
  end


  def jm_implmentsGameInputInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end
end


