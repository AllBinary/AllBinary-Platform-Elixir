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
# package org.allbinary.logic.system.security.crypt.jcehelper

defmodule BasicCrypt do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :byteUtil, nil)
    JR.put(this, :key, nil)
        JR.put(this, :byteUtil, ByteUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_keyAsString) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :keyAsString, p_keyAsString)
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :key, JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY))
        try do
            JR.lset(f, :key, JR.call(TsUtil.jm_getInstance(), :jm_getByteArray, [JR.lget(f, :keyAsString)]))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "AbCrypt(alg,key)", JR.lget(f, :e))
        end
        JR.put(this, :key, JR.lget(f, :key))
    end)
  end

  def jnew(p_keyAsString) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_keyAsString)
    this
  end


  def jm_encrypt(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        try do
            throw({:jreturn, JR.call(this, :jm_mutilate, [JR.lget(f, :array)])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("Encrypt Failed", this, "encrypt", JR.lget(f, :e))
            throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY)})
        end
    end)
  end


  def jm_decrypt(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        try do
            throw({:jreturn, JR.call(this, :jm_mutilate, [JR.lget(f, :array)])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("decrypt Failed", this, "decrypt", JR.lget(f, :e))
            throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY)})
        end
    end)
  end


  def jm_mutilate(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        JR.lset(f, :value, 0)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :key))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :value, JR.aget(JR.get(this, :key), JR.lget(f, :index)))
            JR.lset(f, :array, JR.call(JR.get(this, :byteUtil), :jm_xor, [JR.lget(f, :array), JR.lget(f, :value)]))
        end)
        throw({:jreturn, JR.lget(f, :array)})
    end)
  end
end


