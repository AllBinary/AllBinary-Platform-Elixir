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
# package org.allbinary.game

defmodule GameInfoCopyFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_getInstanceMaxLevel(p_gameInfo, p_maxLevel) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :maxLevel, p_maxLevel)
        throw({:jreturn, GameInfo.jnew(JR.call(JR.lget(f, :gameInfo), :jm_getGameType, []), JR.call(JR.lget(f, :gameInfo), :jm_getGameMode, []), JR.call(JR.lget(f, :gameInfo), :jm_getPlayerType, []), JR.lget(f, :maxLevel), JR.call(JR.lget(f, :gameInfo), :jm_getCurrentLevel, []))})
    end)
  end


  def jm_getInstance(p_gameInfo) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
        throw({:jreturn, GameInfo.jnew(JR.call(JR.lget(f, :gameInfo), :jm_getGameType, []), JR.call(JR.lget(f, :gameInfo), :jm_getGameMode, []), JR.call(JR.lget(f, :gameInfo), :jm_getPlayerType, []), JR.call(JR.lget(f, :gameInfo), :jm_getHighestLevel, []), JR.call(JR.lget(f, :gameInfo), :jm_getCurrentLevel, []))})
    end)
  end
end


