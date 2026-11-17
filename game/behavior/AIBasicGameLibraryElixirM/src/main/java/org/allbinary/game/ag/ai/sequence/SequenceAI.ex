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
# package org.allbinary.game.ag.ai.sequence

defmodule SequenceAI do
  def jsuper(), do: ArrayAI
def jstatic_SEQUENCE_AI(), do: JR.static_get(__MODULE__, :SEQUENCE_AI, fn -> "Sequence AI" end)
  def jstatic_set_SEQUENCE_AI(value), do: JR.static_put(__MODULE__, :SEQUENCE_AI, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :index, 0)
        JR.put(this, :index, 0)
    nil
  end


  def jinit(this, p_artificialIntelligenceInterfaceArray, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :artificialIntelligenceInterfaceArray, p_artificialIntelligenceInterfaceArray)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        ArrayAI.jinit(this, JR.lget(f, :artificialIntelligenceInterfaceArray), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        SequenceAI.jinitfields(this)
    end)
  end

  def jnew(p_artificialIntelligenceInterfaceArray, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_artificialIntelligenceInterfaceArray, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.call(JR.aget(JR.call(this, :jm_getArtificialIntelligenceInterface, []), JR.get(this, :index)), :jm_processAI, [JR.lget(f, :allBinaryLayerManager)])
    end)
  end


  def jm_next(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.postinc(this, :index, 1)
        JR.lset(f, :artificialIntelligenceInterface, JR.call(this, :jm_getSelectedArtificialIntelligenceInterface, []))
        if (JR.call(JR.lget(f, :artificialIntelligenceInterface), :jm_getId, []) == ArtificialIntelligence.jstatic_AI_ID()) do
            JR.lset(f, :artificialIntelligenceTransitionInterface, JR.lget(f, :artificialIntelligenceInterface))
            JR.call(JR.lget(f, :artificialIntelligenceTransitionInterface), :jm_transition, [])
        end
    end)
  end


  def jm_getIndex(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :index)})
    end)
  end


  def jm_setIndex(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.put(this, :index, JR.lget(f, :index))
    end)
  end


  def jm_getSelectedArtificialIntelligenceInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.aget(JR.call(this, :jm_getArtificialIntelligenceInterface, []), JR.get(this, :index))})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, SequenceAI.jstatic_SEQUENCE_AI()})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [ArrayAI.jm_toString(this)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Selected AI: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.call(this, :jm_getSelectedArtificialIntelligenceInterface, [])])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


