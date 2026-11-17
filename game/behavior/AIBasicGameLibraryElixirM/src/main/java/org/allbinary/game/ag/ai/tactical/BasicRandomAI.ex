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
# package org.allbinary.game.ag.ai.tactical

defmodule BasicRandomAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :i_random, 0)
    JR.put(this, :inputProbability, nil)
    JR.put(this, :visitor, nil)
    JR.put(this, :keyArray, nil)
    JR.put(this, :myRandomFactory, nil)
        JR.put(this, :i_random, 0)
        
        
        JR.put(this, :keyArray, JR.afrom([Canvas.jstatic_UP(), Canvas.jstatic_DOWN(), Canvas.jstatic_LEFT(), Canvas.jstatic_RIGHT(), Canvas.jstatic_KEY_NUM1(), Canvas.jstatic_KEY_NUM7(), Canvas.jstatic_KEY_NUM9()]))
        JR.put(this, :myRandomFactory, MyRandomFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_ownerLayerInterface, p_gameInput, p_inputProbability, p_visitor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
      JR.lset(f, :inputProbability, p_inputProbability)
      JR.lset(f, :visitor, p_visitor)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        BasicRandomAI.jinitfields(this)
        JR.put(this, :inputProbability, JR.lget(f, :inputProbability))
        JR.put(this, :visitor, JR.lget(f, :visitor))
    end)
  end

  def jnew(p_ownerLayerInterface, p_gameInput, p_inputProbability, p_visitor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_ownerLayerInterface, p_gameInput, p_inputProbability, p_visitor)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if JR.call(JR.call(JR.get(this, :inputProbability), :jm_getTimeDelayHelper, []), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            JR.put(this, :i_random, JR.call(JR.get(this, :myRandomFactory), :jm_getAbsoluteNextInt, [JR.call(JR.get(this, :inputProbability), :jm_getMax, [])]))
            JR.lset(f, :repeat, false)
            JR.lset(f, :repeatLikelyhoodIntegerArray, JR.call(JR.get(this, :inputProbability), :jm_getRepeatLikelyhoodIntegerArray, []))
            if ((JR.call(this, :jm_getLastKey, []) != -1) && (JR.call(JR.aget(JR.lget(f, :repeatLikelyhoodIntegerArray), JR.call(this, :jm_getLastKey, [])), :jm_intValue, []) >= JR.get(this, :i_random))) do
                JR.lset(f, :repeat, true)
            end
            if !JR.lget(f, :repeat) do
                JR.lset(f, :likelyhoodIntegerArray, JR.call(JR.get(this, :inputProbability), :jm_getLikelyhoodIntegerArray, []))
                JR.put(this, :i_random, JR.call(JR.get(this, :myRandomFactory), :jm_getAbsoluteNextInt, [JR.call(JR.get(this, :inputProbability), :jm_getMax, [])]))
                JR.lset(f, :size, JR.alength(JR.get(this, :keyArray)))
                JR.lset(f, :likelyhoodIntegerKeyArray, nil)
                JR.lset(f, :index, 0)
                JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                    JR.lset(f, :key, JR.aget(JR.get(this, :keyArray), JR.lget(f, :index)))
                    JR.lset(f, :likelyhoodIntegerKeyArray, JR.aget(JR.lget(f, :likelyhoodIntegerArray), JR.lget(f, :key)))
                    if ((JR.alength(JR.lget(f, :likelyhoodIntegerArray)) >= JR.lget(f, :key)) && (JR.aget(JR.lget(f, :likelyhoodIntegerKeyArray), 0) != nil)) do
                        if ((JR.get(this, :i_random) >= JR.call(JR.aget(JR.lget(f, :likelyhoodIntegerKeyArray), 0), :jm_intValue, [])) && (JR.get(this, :i_random) < JR.call(JR.aget(JR.lget(f, :likelyhoodIntegerKeyArray), 1), :jm_intValue, []))) do
                            JR.call(this, :jm_setLastKey, [JR.lget(f, :key)])
                            throw(:jbreak)
                        end
                    end
                end)
            end
            JR.call(JR.get(this, :visitor), :jm_visit, [this])
        end
    end)
  end
end


