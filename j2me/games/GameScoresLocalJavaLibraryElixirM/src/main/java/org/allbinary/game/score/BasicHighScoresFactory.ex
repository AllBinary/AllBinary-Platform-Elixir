# Generated Code Do Not Modify
# package org.allbinary.game.score

defmodule BasicHighScoresFactory do
  def jsuper(), do: HighScoresBase

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :abeClientInformation, nil)
    JR.put(this, :highScoresArray, nil)
    JR.put(this, :TOP, nil)
    JR.put(this, :SCORES, nil)
    JR.put(this, :PERSONAL_HIGH_SCORES, nil)
    JR.put(this, :FETCH, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        JR.put(this, :highScoresArray, JR.anew(1, nil))
        JR.put(this, :TOP, "Top")
        JR.put(this, :SCORES, "Scores")
        JR.put(this, :PERSONAL_HIGH_SCORES, "Personal Top Scores")
        JR.put(this, :FETCH, "fetchHighScores")
    nil
  end


  def jinit(this, p_abeClientInformation, p_softwareInformation) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :softwareInformation, p_softwareInformation)
      HighScoresBase.jinit(this)
      jinitfields(this)
        JR.put(this, :abeClientInformation, JR.lget(f, :abeClientInformation))
    end)
  end

  def jnew(p_abeClientInformation, p_softwareInformation) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_abeClientInformation, p_softwareInformation)
    this
  end


  def jm_fetchHighScores(this, p_gameInfo, p_highScoresResultsListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoresResultsListener, p_highScoresResultsListener)
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Getting Local HighScores", this, JR.get(this, :FETCH)])
        JR.call(this, :jm_fetchHighScoresPreload, [JR.lget(f, :gameInfo), JR.lget(f, :highScoresResultsListener), true])
    end)
  end


  def jm_fetchHighScoresPreload(this, p_gameInfo, p_highScoresResultsListener, p_preload) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :highScoresResultsListener, p_highScoresResultsListener)
      JR.lset(f, :preload, p_preload)
        try do
            JR.aset(JR.get(this, :highScoresArray), 0, RecordStoreHighScores.jm_getInstance(JR.get(this, :abeClientInformation), JR.lget(f, :gameInfo), JR.get(this, :TOP), JR.get(this, :PERSONAL_HIGH_SCORES), JR.get(this, :SCORES), ScoreComparator.jnew(true)))
            JR.call(JR.lget(f, :highScoresResultsListener), :jm_setHighScoresArray, [JR.get(this, :highScoresArray)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(this, :FETCH), JR.lget(f, :e)])
        end
    end)
  end


  def jm_createHighScoresHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, HighScoresHelper2.jnew()})
    end)
  end


  def jm_loaded(p_index2) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :index2, p_index2)
        if (JR.lget(f, :index2) >= 0) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end
end


