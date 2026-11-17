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

defmodule DiveAndDirectionalTrackingAIFactory do
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


  def jm_getInstance(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        JR.lset(f, :visitorCanBeNull, JR.call(JR.lget(f, :hashtable), :jm_get, [BasicAI.jstatic_AI_VISITOR()]))
        if (JR.lget(f, :visitorCanBeNull) == nil) do
            JR.lset(f, :visitorCanBeNull, ThrustAIVisitorFactory.jm_getInstance())
        end
        JR.lset(f, :hashtable2, JR.call(BasicProbabilityAIDataFactory.jnew(), :jm_getInstance, []))
        JR.call(JR.lget(f, :hashtable2), :jm_put, [BasicAI.jstatic_AI_VISITOR(), LastKeyAIVisitorFactory.jm_getInstance()])
        JR.lset(f, :artificialIntelligenceInterface, JR.call(BasicRandomAIFactory.jnew(), :jm_getInstance, [JR.lget(f, :hashtable2), JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput)]))
        throw({:jreturn, DiveAndDirectionalTrackingAI.jnew(JR.lget(f, :ownerLayerInterface), JR.lget(f, :artificialIntelligenceInterface), JR.lget(f, :gameInput), JR.lget(f, :visitorCanBeNull))})
    end)
  end
end


