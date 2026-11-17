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

defmodule NullGameCanvas do
  def jsuper(), do: AllBinaryGameCanvas
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)
def jstatic_NO_GAME(), do: JR.static_get(__MODULE__, :NO_GAME, fn -> "No Background Game" end)
  def jstatic_set_NO_GAME(value), do: JR.static_put(__MODULE__, :NO_GAME, value)
def jstatic_TYPE(), do: JR.static_get(__MODULE__, :TYPE, fn -> 1 end)
  def jstatic_set_TYPE(value), do: JR.static_put(__MODULE__, :TYPE, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :runningNull, false)
        JR.put(this, :runningNull, true)
    nil
  end


  def jm_createNull() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        try do
            throw({:jreturn, NullGameCanvas.jnew(AllBinaryGameLayerManager.jm_getNullInstance())})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(LogUtil.jm_getInstance(), :jm_put, [JR.get(CommonStrings.jm_getInstance(), :EXCEPTION), "NullGameCanvas", JR.get(CommonStrings.jm_getInstance(), :GET_INSTANCE), JR.lget(f, :e)])
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (NullGameCanvas.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            NullGameCanvas.jstatic_set_instance(NullGameCanvas.jm_createNull())
        end
        throw({:jreturn, NullGameCanvas.jstatic_instance()})
    end)
  end


  def jm_createCanvas(p_gameLayerManager) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameLayerManager, p_gameLayerManager)
        JR.lset(f, :nullGameCanvas, NullGameCanvas.jnew(JR.lget(f, :gameLayerManager)))
        JR.call(JR.lget(f, :nullGameCanvas), :jm_setInitialized, [true])
        JR.call(JR.lget(f, :nullGameCanvas), :jm_setTitle, [NullGameCanvas.jstatic_NO_GAME()])
        throw({:jreturn, JR.lget(f, :nullGameCanvas)})
    end)
  end


  def jinit(this, p_gameLayerManager) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameLayerManager, p_gameLayerManager)
        AllBinaryGameCanvas.jinit(this, NullCommandListener.jstatic_NULL_COMMAND_LISTENER(), JR.lget(f, :gameLayerManager), NoHighScoresFactory.jm_getInstance(), BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(), false)
        NullGameCanvas.jinitfields(this)
        AllBinaryGameCanvas.jm_setWait(this, 1200)
    end)
  end

  def jnew(p_gameLayerManager) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameLayerManager)
    this
  end


  def jm_isGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_setRunning(this, p_running) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :running, p_running)
        JR.put(this, :runningNull, JR.lget(f, :running))
    end)
  end


  def jm_isRunning(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :runningNull)})
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setPaused, [true])
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setPaused, [false])
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
        JR.call(this, :jm_removeAllCommands, [])
        JR.call(this, :jm_setCommandListener, [JR.lget(f, :cmdListener)])
    end)
  end


  def jm_buildGameInit(this, p_isProgress) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :isProgress, p_isProgress)
        nil
    end)
  end


  def jm_draw(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END_RUNNABLE), this, JR.get(JR.get(this, :commonStrings), :RUN)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, NullGameCanvas.jstatic_TYPE()})
    end)
  end
end


