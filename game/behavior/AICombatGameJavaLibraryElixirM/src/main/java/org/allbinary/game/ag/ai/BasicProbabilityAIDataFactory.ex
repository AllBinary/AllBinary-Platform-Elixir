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

defmodule BasicProbabilityAIDataFactory do
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


  def jm_getInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :likelyhoodIntegerArray, JR.anew_of((Canvas.jstatic_KEY_NUM9() + 1), fn -> JR.anew(2, nil) end))
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_UP()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_UP()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_DOWN()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_DOWN()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [14]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_LEFT()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [14]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_LEFT()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [18]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_RIGHT()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [18]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_RIGHT()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [22]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM7()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [22]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM7()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [26]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM9()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [26]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM9()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [30]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM1()), 0, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [30]))
        JR.aset(JR.aget(JR.lget(f, :likelyhoodIntegerArray), Canvas.jstatic_KEY_NUM1()), 1, JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [40]))
        JR.lset(f, :repeatLikelyhoodIntegerArray, JR.anew((Canvas.jstatic_KEY_NUM9() + 1), nil))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_UP(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_DOWN(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_LEFT(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_RIGHT(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_KEY_NUM7(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_KEY_NUM9(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [0]))
        JR.aset(JR.lget(f, :repeatLikelyhoodIntegerArray), Canvas.jstatic_KEY_NUM1(), JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [10]))
        JR.lset(f, :inputProbability, InputProbability.jnew(JR.lget(f, :likelyhoodIntegerArray), JR.lget(f, :repeatLikelyhoodIntegerArray), 42, NoTimeDelayHelper.jstatic_SINGLETON()))
        throw({:jreturn, JR.call(JR.lget(f, :inputProbability), :jm_toHashtable, [])})
    end)
  end
end


