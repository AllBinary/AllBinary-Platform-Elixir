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

defmodule EndGameInfo do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NORMAL_GAME_OVER_WIN, nil)
    JR.put(this, :TEASER_DEMO_GAME_END_LAST_LEVEL, nil)
    JR.put(this, :TEASER_DEMO_GAME_END, nil)
    JR.put(this, :gameOverStr, nil)
    JR.put(this, :winStr, nil)
        JR.put(this, :NORMAL_GAME_OVER_WIN, "You Won")
        JR.put(this, :TEASER_DEMO_GAME_END_LAST_LEVEL, "End of Demo.")
        JR.put(this, :TEASER_DEMO_GAME_END, "Demo Game Over.")
        JR.put(this, :gameOverStr, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :winStr, JR.get(this, :gameOverStr))
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


  def jm_update(this, p_gameInfo, p_myCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :myCanvas, p_myCanvas)
        if JR.call(JR.lget(f, :gameInfo), :jm_isLastLevel, []) do
            JR.call(this, :jm_setWinStr, [JR.get(this, :TEASER_DEMO_GAME_END_LAST_LEVEL)])
            JR.call(this, :jm_setGameOverStr, [JR.get(this, :TEASER_DEMO_GAME_END_LAST_LEVEL)])
        else
            JR.call(this, :jm_setWinStr, [JR.get(this, :NORMAL_GAME_OVER_WIN)])
            JR.call(this, :jm_setGameOverStr, [JR.get(this, :TEASER_DEMO_GAME_END)])
        end
    end)
  end


  def jm_getGameOverStr(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameOverStr)})
    end)
  end


  def jm_setGameOverStr(this, p_gameOverStr) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOverStr, p_gameOverStr)
        JR.put(this, :gameOverStr, JR.lget(f, :gameOverStr))
    end)
  end


  def jm_getWinStr(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :winStr)})
    end)
  end


  def jm_setWinStr(this, p_winStr) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :winStr, p_winStr)
        JR.put(this, :winStr, JR.lget(f, :winStr))
    end)
  end
end


