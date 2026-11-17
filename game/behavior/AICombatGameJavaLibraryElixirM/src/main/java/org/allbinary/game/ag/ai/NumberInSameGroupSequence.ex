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

defmodule NumberInSameGroupSequence do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_TWO, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_NINE, nil)
    JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE, nil)
        
        
        
        
        
        
        
        
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NumberInSameGroupSequence.jnew()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [100]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [101]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_TWO, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [102]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [103]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [104]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [105]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [106]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [107]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [108]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_NINE, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [109]))
        JR.put(this, :NUMBER_ON_SAME_TEAM_SEQUENCE, JR.afrom([JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_ONE), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_THREE), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SIX), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT), JR.get(this, :NUMBER_ON_SAME_TEAM_SEQUENCE_NINE)]))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


