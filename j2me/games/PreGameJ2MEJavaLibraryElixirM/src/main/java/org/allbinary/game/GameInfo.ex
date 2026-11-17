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

defmodule GameInfo do
  def jsuper(), do: JObject
def jstatic_NONE(), do: JR.static_get(__MODULE__, :NONE, fn -> GameInfo.jnew(JR.get(GameTypeFactory.jm_getInstance(), :NONE), GameMode.jstatic_NONE(), JR.get(PlayerTypesFactory.jm_getInstance(), :PLAYER_TYPE_ONE), -1, -1) end)
  def jstatic_set_NONE(value), do: JR.static_put(__MODULE__, :NONE, value)
def jstatic_LEVEL_NAME(), do: JR.static_get(__MODULE__, :LEVEL_NAME, fn -> "LEVEL" end)
  def jstatic_set_LEVEL_NAME(value), do: JR.static_put(__MODULE__, :LEVEL_NAME, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :gameInfoData, nil)
    JR.put(this, :gameType, nil)
    JR.put(this, :gameMode, nil)
    JR.put(this, :playerType, nil)
    JR.put(this, :highestLevel, 0)
    JR.put(this, :currentLevel, 0)
    JR.put(this, :NEW_LEVEL, nil)
    JR.put(this, :SET_CURRENT_LEVEL, nil)
    JR.put(this, :NEXT_GAME_LEVEL, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :gameInfoData, GameInfoData.jm_getInstance())
        
        
        
        JR.put(this, :highestLevel, 0)
        
        JR.put(this, :NEW_LEVEL, "New Level: ")
        JR.put(this, :SET_CURRENT_LEVEL, "setCurrentLevel")
        JR.put(this, :NEXT_GAME_LEVEL, "nextGameLevel")
    nil
  end


  def jinit(this, p_gameType, p_gameMode, p_playerType, p_highestLevel, p_currentLevel) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameType, p_gameType)
      JR.lset(f, :gameMode, p_gameMode)
      JR.lset(f, :playerType, p_playerType)
      JR.lset(f, :highestLevel, p_highestLevel)
      JR.lset(f, :currentLevel, p_currentLevel)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :gameType, JR.lget(f, :gameType))
        JR.put(this, :gameMode, JR.lget(f, :gameMode))
        JR.call(this, :jm_setHighestLevel, [JR.lget(f, :highestLevel)])
        JR.put(this, :currentLevel, JR.lget(f, :currentLevel))
        JR.put(this, :playerType, JR.lget(f, :playerType))
    end)
  end

  def jnew(p_gameType, p_gameMode, p_playerType, p_highestLevel, p_currentLevel) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameType, p_gameMode, p_playerType, p_highestLevel, p_currentLevel)
    this
  end


  def jm_getGameType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameType)})
    end)
  end


  def jm_getGameMode(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameMode)})
    end)
  end


  def jm_getPlayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playerType)})
    end)
  end


  def jm_getHighestLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :highestLevel)})
    end)
  end


  def jm_setHighestLevel(this, p_highestLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highestLevel, p_highestLevel)
        JR.put(this, :highestLevel, JR.lget(f, :highestLevel))
    end)
  end


  def jm_getCurrentLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentLevel)})
    end)
  end


  def jm_setCurrentLevel(this, p_currentLevel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentLevel, p_currentLevel)
        JR.put(this, :currentLevel, JR.lget(f, :currentLevel))
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :NEW_LEVEL)]), :jm_appendint, [JR.call(this, :jm_getCurrentLevel, [])]), :jm_toString, []), this, JR.get(this, :SET_CURRENT_LEVEL)])
    end)
  end


  def jm_nextGameLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getCurrentLevel, []) < JR.call(this, :jm_getHighestLevel, [])) do
            JR.postinc(this, :currentLevel, 1)
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :NEXT)]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)]), :jm_append, [JR.get(this, :NEW_LEVEL)]), :jm_appendint, [JR.call(this, :jm_getCurrentLevel, [])]), :jm_toString, []), this, JR.get(this, :NEXT_GAME_LEVEL)])
    end)
  end


  def jm_previousGameLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getCurrentLevel, []) > 1) do
            JR.postinc(this, :currentLevel, -1)
        end
    end)
  end


  def jm_isLastLevel(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.call(this, :jm_getCurrentLevel, []) >= JR.call(this, :jm_getHighestLevel, [])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_toHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.get(JR.get(this, :gameInfoData), :GAME_TYPE), JR.call(JR.call(this, :jm_getGameType, []), :jm_toString, [])])
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.get(JR.get(this, :gameInfoData), :GAME_MODE), JR.call(JR.get(this, :gameMode), :jm_toString, [])])
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.get(JR.get(this, :gameInfoData), :PLAYER_TYPE), JR.call(JR.get(this, :playerType), :jm_toString, [])])
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.get(JR.get(this, :gameInfoData), :HIGHEST_LEVEL), JR.str(JR.call(this, :jm_getHighestLevel, []))])
        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.get(JR.get(this, :gameInfoData), :CURRENT_LEVEL), JR.str(JR.get(this, :currentLevel))])
        throw({:jreturn, JR.lget(f, :hashtable)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :gameInfoData), :GAME_TYPE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.call(this, :jm_getGameType, []), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :gameInfoData), :GAME_MODE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.get(this, :gameMode), :jm_toString, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :gameInfoData), :PLAYER_TYPE)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :playerType)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :gameInfoData), :HIGHEST_LEVEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getHighestLevel, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA_SEP)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :gameInfoData), :CURRENT_LEVEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :currentLevel)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


