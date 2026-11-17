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

defmodule BaseGameBehavior do
  def jsuper(), do: DemoGameBehavior
def jstatic_instanceC(), do: JR.static_get(__MODULE__, :instanceC, fn -> BaseGameBehavior.jnew() end)
  def jstatic_set_instanceC(value), do: JR.static_put(__MODULE__, :instanceC, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    DemoGameBehavior.jinit(this)
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
        throw({:jreturn, BaseGameBehavior.jstatic_instanceC()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :gameAdState, JR.call(GameAdStateFactory.jm_getInstance(), :jm_getCurrentInstance, []))
        JR.call(JR.lget(f, :gameAdState), :jm_playingAdState, [])
    end)
  end


  def jm_pause(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.lset(f, :features, Features.jm_getInstance())
        if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL_AS_GAME_THREAD)]) do
            JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
            JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setRunnable, [JR.get(JR.lget(f, :allBinaryGameCanvas), :gamePauseRunnable)])
        end
    end)
  end


  def jm_unPause(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        if JR.call(Features.jm_getInstance(), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL_AS_GAME_THREAD)]) do
            JR.lset(f, :currentDisplayableFactory, CurrentDisplayableFactory.jm_getInstance())
            JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setRunnable, [JR.get(JR.lget(f, :allBinaryGameCanvas), :gameRunnable)])
            JR.call(JR.lget(f, :currentDisplayableFactory), :jm_setDisplayable, [JR.lget(f, :allBinaryGameCanvas)])
        end
    end)
  end


  def jm_updateTouch(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_updateTouch2, [])
    end)
  end


  def jm_updateScreenButtonPaintable(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_updateScreenButtonPaintable2, [])
    end)
  end


  def jm_setGameState(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_updateGameState, [])
    end)
  end


  def jm_removeAllGameKeyInputListeners(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_removeAllGameKeyInputListeners2, [])
    end)
  end


  def jm_updateEndGameProcessor(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_updateEndGameProcessor2, [])
    end)
  end


  def jm_buildGame(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_buildGame2, [])
    end)
  end


  def jm_run(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_run2, [])
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
        JR.call(JR.lget(f, :allBinaryGameCanvas), :jm_setHighScore2, [JR.lget(f, :abeClientInformation), JR.lget(f, :name), JR.lget(f, :score), JR.lget(f, :autoSubmit), JR.lget(f, :isLast)])
    end)
  end
end


