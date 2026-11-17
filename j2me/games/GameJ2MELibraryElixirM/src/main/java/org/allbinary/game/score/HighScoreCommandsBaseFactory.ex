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

defmodule HighScoreCommandsBaseFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :HIGH_SCORE_COMMANDS, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_HIGH_SCORE_COMMANDS) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :HIGH_SCORE_COMMANDS, p_HIGH_SCORE_COMMANDS)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :HIGH_SCORE_COMMANDS, JR.lget(f, :HIGH_SCORE_COMMANDS))
    end)
  end

  def jnew(p_HIGH_SCORE_COMMANDS) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_HIGH_SCORE_COMMANDS)
    this
  end


  def jm_isHighScoreCommand(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :HIGH_SCORE_COMMANDS)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if (JR.lget(f, :command) == JR.aget(JR.get(this, :HIGH_SCORE_COMMANDS), JR.lget(f, :index))) do
                throw({:jreturn, true})
            end
        end)
        throw({:jreturn, false})
    end)
  end


  def jm_getIndex(this, p_command) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :HIGH_SCORE_COMMANDS)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if (JR.lget(f, :command) == JR.aget(JR.get(this, :HIGH_SCORE_COMMANDS), JR.lget(f, :index))) do
                throw({:jreturn, JR.lget(f, :index)})
            end
        end)
        throw({:jexception, JR.exception("Exception", "No Such Command")})
    end)
  end
end


