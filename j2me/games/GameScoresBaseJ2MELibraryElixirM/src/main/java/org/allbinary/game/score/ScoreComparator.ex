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

defmodule ScoreComparator do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :isHighestBest, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_isHighestBest) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :isHighestBest, p_isHighestBest)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :isHighestBest, JR.lget(f, :isHighestBest))
    end)
  end

  def jnew(p_isHighestBest) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_isHighestBest)
    this
  end


  def jm_getBestScore(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, (if JR.get(this, :isHighestBest), do: J.Long.jstatic_MAX_VALUE(), else: 0)})
    end)
  end


  def jm_compare(this, p_recordOne, p_recordTwo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :recordOne, p_recordOne)
      JR.lset(f, :recordTwo, p_recordTwo)
        JR.lset(f, :byteArrayInputStreamOne, ByteArrayInputStream.jnew(JR.lget(f, :recordOne)))
        JR.lset(f, :inputStreamOne, DataInputStream.jnew(JR.lget(f, :byteArrayInputStreamOne)))
        JR.lset(f, :byteArrayInputStreamTwo, ByteArrayInputStream.jnew(JR.lget(f, :recordTwo)))
        JR.lset(f, :inputStreamTwo, DataInputStream.jnew(JR.lget(f, :byteArrayInputStreamTwo)))
        JR.lset(f, :scoreOne, 0)
        JR.lset(f, :scoreTwo, 0)
        try do
            JR.call(JR.lget(f, :inputStreamOne), :jm_readUTF, [])
            JR.call(JR.lget(f, :inputStreamTwo), :jm_readUTF, [])
            JR.lset(f, :scoreOne, JR.call(JR.lget(f, :inputStreamOne), :jm_readLong, []))
            JR.lset(f, :scoreTwo, JR.call(JR.lget(f, :inputStreamTwo), :jm_readLong, []))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "compare", JR.lget(f, :e)])
        end
        if JR.get(this, :isHighestBest) do
            throw({:jreturn, JR.call(this, :jm_getHighTooLow, [JR.lget(f, :scoreOne), JR.lget(f, :scoreTwo)])})
        else
            throw({:jreturn, JR.call(this, :jm_getLowTooHigh, [JR.lget(f, :scoreOne), JR.lget(f, :scoreTwo)])})
        end
    end)
  end


  def jm_getHighTooLow(this, p_scoreOne, p_scoreTwo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scoreOne, p_scoreOne)
      JR.lset(f, :scoreTwo, p_scoreTwo)
        if (JR.lget(f, :scoreOne) > JR.lget(f, :scoreTwo)) do
            throw({:jreturn, RecordComparator.jstatic_PRECEDES()})
        else
            if (JR.lget(f, :scoreOne) < JR.lget(f, :scoreTwo)) do
            throw({:jreturn, RecordComparator.jstatic_FOLLOWS()})
        else
            throw({:jreturn, RecordComparator.jstatic_EQUIVALENT()})
        end
        end
    end)
  end


  def jm_getLowTooHigh(this, p_scoreOne, p_scoreTwo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :scoreOne, p_scoreOne)
      JR.lset(f, :scoreTwo, p_scoreTwo)
        if (JR.lget(f, :scoreOne) < JR.lget(f, :scoreTwo)) do
            throw({:jreturn, RecordComparator.jstatic_PRECEDES()})
        else
            if (JR.lget(f, :scoreOne) > JR.lget(f, :scoreTwo)) do
            throw({:jreturn, RecordComparator.jstatic_FOLLOWS()})
        else
            throw({:jreturn, RecordComparator.jstatic_EQUIVALENT()})
        end
        end
    end)
  end
end


