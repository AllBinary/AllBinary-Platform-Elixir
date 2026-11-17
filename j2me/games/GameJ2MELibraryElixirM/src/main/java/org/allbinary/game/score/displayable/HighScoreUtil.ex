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
# package org.allbinary.game.score.displayable

defmodule HighScoreUtil do
  def jsuper(), do: JObject
def jstatic_SUBMIT_TEXTBOX_COMMAND(), do: JR.static_get(__MODULE__, :SUBMIT_TEXTBOX_COMMAND, fn -> Command.jnew("Submit", JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), Command.jstatic_SCREEN(), 1) end)
  def jstatic_set_SUBMIT_TEXTBOX_COMMAND(value), do: JR.static_put(__MODULE__, :SUBMIT_TEXTBOX_COMMAND, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :highScoresFactoryInterface, nil)
    JR.put(this, :highScoresArray, nil)
    JR.put(this, :highScore, nil)
    JR.put(this, :abeClientInformation, nil)
    JR.put(this, :gameInfo, nil)
    JR.put(this, :highScoresHelper, nil)
    JR.put(this, :firstTime, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        
        
        
        
        
        
        JR.put(this, :firstTime, true)
    nil
  end


  def jinit(this, p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresFactoryInterface, p_highScoresFactoryInterface)
      JR.lset(f, :highScoresHelper, p_highScoresHelper)
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :cmdListener, p_cmdListener)
      JR.lset(f, :name, p_name)
      JR.lset(f, :highScore, p_highScore)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :highScoresFactoryInterface, JR.lget(f, :highScoresFactoryInterface))
        JR.put(this, :highScoresHelper, JR.lget(f, :highScoresHelper))
        JR.put(this, :highScoresArray, JR.call(JR.get(this, :highScoresHelper), :jm_getHighScoresArray, []))
        JR.put(this, :highScore, JR.lget(f, :highScore))
        JR.put(this, :abeClientInformation, JR.lget(f, :abeClientInformation))
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
    end)
  end

  def jnew(p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_highScoresFactoryInterface, p_highScoresHelper, p_abeClientInformation, p_gameInfo, p_cmdListener, p_name, p_highScore)
    this
  end


  def jm_setHighScoresArray(this, p_highScoresArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :highScoresArray, p_highScoresArray)
        JR.put(this, :highScoresArray, JR.lget(f, :highScoresArray))
        JR.put(this, :firstTime, false)
        JR.call(this, :jm_saveHighScore, [])
    end)
  end


  def jm_update(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.call(HighScoreNamePersistanceSingleton.jm_getInstance(), :jm_save, [JR.get(this, :abeClientInformation), JR.get(this, :gameInfo), JR.lget(f, :name)])
        JR.call(JR.get(this, :highScore), :jm_setName, [JR.lget(f, :name)])
    end)
  end


  def jm_saveHighScore(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :START)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :highScore)])]), :jm_toString, []), this, "saveHighScore"])
        JR.lset(f, :size, JR.alength(JR.get(this, :highScoresArray)))
        if (JR.get(this, :firstTime) && (JR.lget(f, :size) == 0)) do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Games canvas did not give us any HighScores", this, "saveHighScore"])
            JR.call(JR.get(this, :highScoresFactoryInterface), :jm_fetchHighScores, [JR.get(this, :gameInfo), this])
            throw({:jreturn, nil})
        end
        JR.lset(f, :highScores, nil)
        JR.lset(f, :highScoresAsString, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :highScores, JR.aget(JR.get(this, :highScoresArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :highScores), :jm_addHighScore, [JR.get(this, :highScore)])
            JR.lset(f, :highScoresAsString, JR.call(JR.lget(f, :highScores), :jm_toString, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Added/Adding Score: "]), :jm_append, [JR.lget(f, :highScoresAsString)]), :jm_toString, []), this, "saveHighScore"])
        end)
        JR.call(JR.get(this, :highScoresHelper), :jm_setHighScoresArray, [JR.get(this, :highScoresArray)])
    end)
  end


  def jm_submit(this, p_myCanvas) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :myCanvas, p_myCanvas)
        JR.lset(f, :commandListener, JR.call(JR.lget(f, :myCanvas), :jm_getCustomCommandListener, []))
        JR.call(JR.lget(f, :commandListener), :jm_commandAction, [HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND(), JR.lget(f, :myCanvas)])
    end)
  end
end


