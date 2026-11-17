# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

defmodule DemoGameBehavior do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DemoGameBehavior.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, DemoGameBehavior.jstatic_instance()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_pause(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_unPause(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_updateTouch(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_updateScreenButtonPaintable(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_setTouchPaintableP, [NullPaintable.jm_getInstance()])
    end)
  end


  def jm_setGameState(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_removeAllGameKeyInputListeners(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_updateEndGameProcessor(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_buildGame(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        nil
    end)
  end


  def jm_run(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.get(GameTypeFactory.jm_getInstance(), :BOT), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :RUN)])
    end)
  end


  def jm_setHighScore(this, p_abeClientInformation, p_allBinaryGameCanvas, p_name, p_score, p_autoSubmit, p_isLast) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
      JR.lset(f, :name, p_name)
      JR.lset(f, :score, p_score)
      JR.lset(f, :autoSubmit, p_autoSubmit)
      JR.lset(f, :isLast, p_isLast)
        nil
    end)
  end
end


