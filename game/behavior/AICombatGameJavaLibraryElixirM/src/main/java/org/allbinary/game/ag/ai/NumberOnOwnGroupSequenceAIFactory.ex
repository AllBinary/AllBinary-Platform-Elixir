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
# package org.allbinary.game.ag.ai

defmodule NumberOnOwnGroupSequenceAIFactory do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
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


  def jm_getInstance(this, p_hashtable, p_artificialIntelligenceInterface, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :artificialIntelligenceInterface, p_artificialIntelligenceInterface)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        JR.lset(f, :integerArray, JR.get(NumberInSameGroupSequence.jm_getInstance(), :NUMBER_ON_SAME_TEAM_SEQUENCE))
        JR.lset(f, :list, BasicArrayListD.jnew())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :integerArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :integerCanBeNull, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.aget(JR.lget(f, :integerArray), JR.lget(f, :index))]))
            if (JR.lget(f, :integerCanBeNull) == nil) do
                throw(:jbreak)
            end
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :integerCanBeNull)])
        end)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Total AI Properties: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(JR.lget(f, :list), :jm_size, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" == Total AI: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.alength(JR.lget(f, :artificialIntelligenceInterface))])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" + 1"])
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE)])
        if (JR.int32(JR.alength(JR.lget(f, :artificialIntelligenceInterface)) - 1) > JR.call(JR.lget(f, :list), :jm_size, [])) do
            throw({:jexception, JR.exception("Exception", "Not enough AI properties.")})
        end
        if (JR.int32(JR.alength(JR.lget(f, :artificialIntelligenceInterface)) - 1) < JR.call(JR.lget(f, :list), :jm_size, [])) do
            throw({:jexception, JR.exception("Exception", "Too Many AI properties.")})
        end
        JR.lset(f, :numberOnSameTeam, JR.anew(JR.call(JR.lget(f, :list), :jm_size, []), nil))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :numberOnSameTeam))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :numberOnSameTeam), JR.lget(f, :index), JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
        end)
        throw({:jreturn, NumberOnOwnGroupSequenceAI.jnew(JR.lget(f, :numberOnSameTeam), JR.lget(f, :artificialIntelligenceInterface), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))})
    end)
  end
end


