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

defmodule EndGameProcessor do
  def jsuper(), do: Processor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :gameStateFactory, nil)
    JR.put(this, :gameCanvas, nil)
    JR.put(this, :WAIT, 0)
        JR.put(this, :gameStateFactory, GameStateFactory.jm_getInstance())
        
        JR.put(this, :WAIT, 5000)
    nil
  end


  def jinit(this, p_gameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameCanvas, p_gameCanvas)
      Processor.jinit(this)
      jinitfields(this)
        JR.put(this, :gameCanvas, JR.lget(f, :gameCanvas))
    end)
  end

  def jnew(p_gameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameCanvas)
    this
  end


  def jm_process(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if JR.call(JR.get(this, :gameCanvas), :jm_isHighScoreSubmitted, []) do
            if JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getGameStateTimeHelper, []), :jm_isElapsedTNT, [JR.get(this, :WAIT)]) do
                if (JR.call(JR.get(this, :gameCanvas), :jm_getGameState, []) == JR.get(JR.get(this, :gameStateFactory), :SHOW_END_RESULT_GAME_STATE)) do
                    JR.lset(f, :highScoresBase, JR.get(JR.get(this, :gameCanvas), :highScoresHelper))
                    JR.lset(f, :highScores, JR.call(JR.lget(f, :highScoresBase), :jm_getSelectedHighScores, []))
                    if (JR.lget(f, :highScores) != NullHighScoresSingletonFactory.jm_getInstance()) do
                        JR.call(JR.lget(f, :highScoresBase), :jm_selectHighScores, [])
                        JR.call(JR.call(JR.get(this, :gameCanvas), :jm_getRealHighScoresPaintable, []), :jm_setHighScores, [JR.lget(f, :highScores)])
                        JR.call(JR.get(this, :gameCanvas), :jm_setGameState, [JR.get(JR.get(this, :gameStateFactory), :SHOW_HIGH_SCORE_GAME_STATE)])
                        JR.call(JR.get(this, :gameCanvas), :jm_setHighScoresPaintable, [JR.call(JR.get(this, :gameCanvas), :jm_getRealHighScoresPaintable, [])])
                    end
                else
                    if (JR.call(JR.get(this, :gameCanvas), :jm_getGameState, []) == JR.get(JR.get(this, :gameStateFactory), :SHOW_HIGH_SCORE_GAME_STATE)) do
                    JR.call(JR.get(this, :gameCanvas), :jm_setGameState, [JR.get(JR.get(this, :gameStateFactory), :SHOW_END_RESULT_GAME_STATE)])
                    JR.call(JR.get(this, :gameCanvas), :jm_setHighScoresPaintable, [NullPaintable.jm_getInstance()])
                end
                end
            end
        end
    end)
  end
end


