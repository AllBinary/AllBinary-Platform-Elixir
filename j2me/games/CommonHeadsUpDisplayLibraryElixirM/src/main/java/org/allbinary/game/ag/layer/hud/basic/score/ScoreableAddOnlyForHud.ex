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
# package org.allbinary.game.ag.layer.hud.basic.score

defmodule ScoreableAddOnlyForHud do
  def jsuper(), do: Scoreable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :scoreHudWidget, nil)
        
    nil
  end


  def jinit(this, p_scoreVectorGraphic) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :scoreVectorGraphic, p_scoreVectorGraphic)
        Scoreable.jinit(this, 0)
        ScoreableAddOnlyForHud.jinitfields(this)
        JR.put(this, :scoreHudWidget, JR.lget(f, :scoreVectorGraphic))
        JR.call(JR.call(this, :jm_getScoreHudWidget, []), :jm_set, [0])
    end)
  end

  def jnew(p_scoreVectorGraphic) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_scoreVectorGraphic)
    this
  end


  def jm_removePoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        nil
    end)
  end


  def jm_addPoints(this, p_points) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :points, p_points)
        Scoreable.jm_addPoints(this, JR.lget(f, :points))
        JR.call(JR.call(this, :jm_getScoreHudWidget, []), :jm_add, [JR.lget(f, :points)])
    end)
  end


  def jm_getScoreHudWidget(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scoreHudWidget)})
    end)
  end
end


