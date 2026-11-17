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

defmodule GameCanvasRunnableInterface do
  def jsuper(), do: JObject


  def jm_getTitle(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getTitle")})
    end)
  end


  def jm_isInitialized(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isInitialized")})
    end)
  end


  def jm_isPaused(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isPaused")})
    end)
  end


  def jm_unPause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "unPause")})
    end)
  end


  def jm_pause(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "pause")})
    end)
  end


  def jm_isHighScoreSubmitted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isHighScoreSubmitted")})
    end)
  end


  def jm_setHighScoreSubmitted(this, p_highScoreSubmitted) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoreSubmitted, p_highScoreSubmitted)
      throw({:jexception, JR.exception("AbstractMethodError", "setHighScoreSubmitted")})
    end)
  end


  def jm_processGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "processGameOver")})
    end)
  end


  def jm_isGameOver(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isGameOver")})
    end)
  end


  def jm_initCommands(this, p_cmdListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cmdListener, p_cmdListener)
      throw({:jexception, JR.exception("AbstractMethodError", "initCommands")})
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getCurrentStateHashtable")})
    end)
  end


  def jm_getLoadStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getLoadStateHashtable")})
    end)
  end


  def jm_setLoadStateHashtable(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      throw({:jexception, JR.exception("AbstractMethodError", "setLoadStateHashtable")})
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getType")})
    end)
  end
end


