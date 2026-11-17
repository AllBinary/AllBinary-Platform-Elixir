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
# package org.allbinary.game.score

defmodule HighScores do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :orderedHighScoresList, nil)
    JR.put(this, :name, nil)
    JR.put(this, :heading, nil)
    JR.put(this, :columnOneHeading, nil)
    JR.put(this, :columnTwoHeading, nil)
        JR.put(this, :orderedHighScoresList, BasicArrayListD.jnew())
        
        
        JR.put(this, :columnOneHeading, "Name")
        
    nil
  end


  def jinit(this, p_name, p_heading, p_columnTwoHeading) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :heading, p_heading)
      JR.lset(f, :columnTwoHeading, p_columnTwoHeading)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :heading, JR.lget(f, :heading))
        JR.put(this, :columnTwoHeading, JR.lget(f, :columnTwoHeading))
    end)
  end

  def jnew(p_name, p_heading, p_columnTwoHeading) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_heading, p_columnTwoHeading)
    this
  end


  def jm_setList(this, p_orderedHighScoresList) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :orderedHighScoresList, p_orderedHighScoresList)
        JR.put(this, :orderedHighScoresList, JR.lget(f, :orderedHighScoresList))
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :orderedHighScoresList)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(this, :jm_getList, []), :jm_size, [])})
    end)
  end


  def jm_addHighScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
        JR.call(JR.get(this, :orderedHighScoresList), :jm_add, [JR.lget(f, :newHighScore)])
    end)
  end


  def jm_getHeading(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :heading)})
    end)
  end


  def jm_getColumnOneHeading(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :columnOneHeading)})
    end)
  end


  def jm_getColumnTwoHeading(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :columnTwoHeading)})
    end)
  end


  def jm_isBestScore(this, p_newHighScore) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newHighScore, p_newHighScore)
        throw({:jreturn, false})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["HighScores: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(this, :heading)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :TOTAL_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.get(this, :orderedHighScoresList), :jm_size, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


