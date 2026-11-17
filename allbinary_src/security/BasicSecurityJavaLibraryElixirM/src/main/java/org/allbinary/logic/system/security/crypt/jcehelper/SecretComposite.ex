# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

defmodule SecretComposite do
  def jsuper(), do: BaseSecretComposite

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :byteUtil, nil)
    JR.put(this, :cipher, nil)
    JR.put(this, :secretKey, nil)
    JR.put(this, :key, nil)
        JR.put(this, :byteUtil, ByteUtil.jm_getInstance())
        
        
        
    nil
  end


  def jinit(this, p_secretKey, p_cipher, p_key) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :secretKey, p_secretKey)
      JR.lset(f, :cipher, p_cipher)
      JR.lset(f, :key, p_key)
      BaseSecretComposite.jinit(this)
      jinitfields(this)
        JR.put(this, :secretKey, JR.lget(f, :secretKey))
        JR.put(this, :cipher, JR.lget(f, :cipher))
        JR.put(this, :key, JR.lget(f, :key))
    end)
  end

  def jnew(p_secretKey, p_cipher, p_key) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_secretKey, p_cipher, p_key)
    this
  end


  def jm_encrypt(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        JR.lset(f, :array, JR.call(this, :jm_mutilate, [JR.lget(f, :array)]))
        JR.call(JR.get(this, :cipher), :jm_init, [Cipher.jstatic_ENCRYPT_MODE(), JR.get(this, :secretKey)])
        throw({:jreturn, JR.call(JR.get(this, :cipher), :jm_doFinal, [JR.lget(f, :array)])})
    end)
  end


  def jm_decrypt(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        JR.call(JR.get(this, :cipher), :jm_init, [Cipher.jstatic_DECRYPT_MODE(), JR.get(this, :secretKey)])
        throw({:jreturn, JR.call(this, :jm_mutilate, [JR.call(JR.get(this, :cipher), :jm_doFinal, [JR.lget(f, :array)])])})
    end)
  end


  def jm_mutilate(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :key))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :value, JR.aget(JR.get(this, :key), JR.lget(f, :index)))
            if ((JR.int32(JR.lget(f, :value)) < 8) && (JR.int32(JR.lget(f, :value)) > 0)) do
                JR.lset(f, :array, JR.call(JR.get(this, :byteUtil), :jm_xorByte, [JR.lget(f, :array), JR.int32(JR.lget(f, :value))]))
            end
        end)
        throw({:jreturn, JR.lget(f, :array)})
    end)
  end
end


