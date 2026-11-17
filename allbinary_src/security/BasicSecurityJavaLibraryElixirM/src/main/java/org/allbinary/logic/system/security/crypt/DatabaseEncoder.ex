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
# package org.allbinary.logic.system.security.crypt

defmodule DatabaseEncoder do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_encode(p_value) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        try do
            JR.lset(f, :array, JR.lget(f, :value))
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :array))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.aget(JR.lget(f, :array), JR.lget(f, :index)), :jm_toString, [])])
                if (JR.lget(f, :index) < JR.int32(JR.alength(JR.lget(f, :array)) - 1)) do
                    JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :SPACE)])
                end
            end)
            throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), "DatabaseEncoder", "decode", JR.lget(f, :e))
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end


  def jm_decode(p_value) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        try do
            JR.lset(f, :tokenizer, Tokenizer.jnew(JR.get(CommonSeps.jm_getInstance(), :SPACE)))
            JR.lset(f, :vector, JR.call(JR.lget(f, :tokenizer), :jm_getTokensFromString, [JR.lget(f, :value), BasicArrayListD.jnew()]))
            JR.lset(f, :size, JR.call(JR.lget(f, :vector), :jm_size, []))
            JR.lset(f, :decode, JR.anew(JR.lget(f, :size), 0))
            JR.lset(f, :byteOfData, nil)
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :byteOfData, JR.aget(JR.get(JR.lget(f, :vector), :objectArray), JR.lget(f, :index)))
                JR.aset(JR.lget(f, :decode), JR.lget(f, :index), J.Byte.jm_parseByte(JR.lget(f, :byteOfData)))
            end)
            throw({:jreturn, JR.lget(f, :decode)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putSE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), "DatabaseEncoder", "decode", JR.lget(f, :e))
            throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY)})
        end
    end)
  end
end


