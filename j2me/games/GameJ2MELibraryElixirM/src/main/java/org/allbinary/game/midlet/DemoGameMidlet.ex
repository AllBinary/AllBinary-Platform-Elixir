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
# package org.allbinary.game.midlet

defmodule DemoGameMidlet do
  def jsuper(), do: GameMidlet

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_clientInformationFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :clientInformationFactory, p_clientInformationFactory)
        GameMidlet.jinit(this, JR.lget(f, :clientInformationFactory))
        DemoGameMidlet.jinitfields(this)
    end)
  end

  def jnew(p_clientInformationFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_clientInformationFactory)
    this
  end


  def jm_isContinue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :hashtable, JR.call(this, :jm_getStartStateHashtable, []))
        if ((JR.lget(f, :hashtable) != nil) && (JR.call(JR.lget(f, :hashtable), :jm_size, []) > 0)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_getHighestLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 1})
    end)
  end


  def jm_createDemoGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED), this, JR.get(JR.get(this, :commonStrings), :CREATE)])
        throw({:jreturn, NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE()})
    end)
  end


  def jm_createGameCanvasRunnable(this, p_allBinaryGameLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameLayerManager, p_allBinaryGameLayerManager)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_createGameCanvasRunnableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_createGameCanvasRunnable, [JR.call(this, :jm_createGameLayerManager, [])])})
    end)
  end


  def jm_demoSetup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_postDemoSetup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_setDemo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "setDemo"])
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_start, [])
        JR.call(PrimaryThreadPool.jm_getInstance(), :jm_runTask, [DemoRunnable.jnew(this)])
    end)
  end


  def jm_createGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :CREATE_GAME, "createGame")
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.lget(f, :CREATE_GAME)])
        JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
        JR.call(JR.lget(f, :progressCanvas), :jm_start, [])
        JR.lset(f, :hashtable, JR.call(this, :jm_getStartStateHashtable, []))
        JR.call(this, :jm_setStartStateHashtable, [JR.get(StdUtil.jm_getInstance(), :NULL_TABLE)])
        JR.call(PrimaryThreadPool.jm_getInstance(), :jm_runTask, [CreateGameRunnable.jnew(this, JR.lget(f, :hashtable))])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :END), this, JR.lget(f, :CREATE_GAME)])
    end)
  end


  def jm_isReady(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end
end


