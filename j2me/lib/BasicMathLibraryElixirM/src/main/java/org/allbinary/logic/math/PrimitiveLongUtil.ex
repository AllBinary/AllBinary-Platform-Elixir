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
# package org.allbinary.logic.math

defmodule PrimitiveLongUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :powerOfTen, 0)
    JR.put(this, :maxValue, 0)
    JR.put(this, :maxDigits, 0)
    JR.put(this, :charArray, nil)
    JR.put(this, :currentTotalDigits, 0)
    JR.put(this, :primitiveLongSingleton, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
        
        
        JR.put(this, :currentTotalDigits, 0)
        JR.put(this, :primitiveLongSingleton, PrimitiveLongSingleton.jm_getInstance())
    nil
  end


  def jm_createPowerOfTen(p_powerOfTen) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :powerOfTen, p_powerOfTen)
        JR.lset(f, :primitiveLongUtil, PrimitiveLongUtil.jnew(JR.lget(f, :powerOfTen), JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)))
        if (rem(JR.lget(f, :powerOfTen), 10) != 0) do
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), JR.lget(f, :primitiveLongUtil), JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.exception("Exception", "Max must be power of 10")])
        end
        throw({:jreturn, JR.lget(f, :primitiveLongUtil)})
    end)
  end


  def jinit(this, p_powerOfTen, p_unused) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :powerOfTen, p_powerOfTen)
      JR.lset(f, :unused, p_unused)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :maxDigits, JR.call(MathUtil.jm_getInstance(), :jm_getTotalDigits, [JR.lget(f, :powerOfTen)]))
        JR.put(this, :powerOfTen, JR.lget(f, :powerOfTen))
        JR.put(this, :maxValue, JR.int32((JR.int32(JR.lget(f, :powerOfTen) * 10)) - 1))
        JR.put(this, :charArray, JR.anew(JR.get(this, :maxDigits), 0))
    end)
  end

  def jnew(p_powerOfTen, p_unused) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_powerOfTen, p_unused)
    this
  end


  def jm_getCharArray(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        if (JR.lget(f, :value) < 10) do
            JR.call(this, :jm_setCurrentTotalDigits, [1])
            throw({:jreturn, JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAYS), JR.lget(f, :value))})
        end
        if (JR.lget(f, :value) > JR.get(this, :maxValue)) do
            JR.call(this, :jm_setCurrentTotalDigits, [3])
            throw({:jreturn, JR.get(JR.get(this, :primitiveLongSingleton), :UNK)})
        end
        JR.lset(f, :index, 0)
        JR.lset(f, :div, JR.get(this, :powerOfTen))
        JR.lset(f, :lastValue, 0)
        JR.jwhile(fn -> (JR.lget(f, :div) >= 1) end, fn ->
            JR.lset(f, :digit, div((JR.int32(JR.lget(f, :value) - JR.lget(f, :lastValue))), JR.lget(f, :div)))
            if ((JR.lget(f, :digit) >= 0) && (JR.lget(f, :digit) < 10)) do
                if ((JR.lget(f, :digit) == 0) && (JR.lget(f, :index) == 0)) do
                    nil
                else
                    JR.aset(JR.get(this, :charArray), JR.lpostinc(f, :index, 1), JR.aget(JR.get(JR.get(this, :primitiveLongSingleton), :NUMBER_CHAR_ARRAY), JR.lget(f, :digit)))
                end
                JR.lset(f, :lastValue, JR.int32(JR.lget(f, :lastValue) + JR.int32(JR.lget(f, :digit) * JR.lget(f, :div))))
            end
            JR.lset(f, :div, div(JR.lget(f, :div), 10))
        end)
        JR.call(this, :jm_setCurrentTotalDigits, [JR.lget(f, :index)])
        throw({:jreturn, JR.get(this, :charArray)})
    end)
  end


  def jm_setCurrentTotalDigits(this, p_currentTotalDigits) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentTotalDigits, p_currentTotalDigits)
        JR.put(this, :currentTotalDigits, JR.lget(f, :currentTotalDigits))
    end)
  end


  def jm_getCurrentTotalDigits(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :currentTotalDigits)})
    end)
  end


  def jm_getMaxDigits(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :maxDigits)})
    end)
  end
end


