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

defmodule AbCrypt do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tsUtil, nil)
    JR.put(this, :secretComposite, nil)
    JR.put(this, :algorithm, nil)
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :secretComposite, BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE())
        
    nil
  end


  def jinit(this, p_algorithm) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :algorithm, p_algorithm)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :algorithm, JR.lget(f, :algorithm))
    end)
  end

  def jnew(p_algorithm) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_algorithm)
    this
  end


  def jm_init(this, p_keyAsString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :keyAsString, p_keyAsString)
        JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
        try do
            try do
                Security.jm_addProvider(BouncyCastleProvider.jnew())
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :INIT), JR.lget(f, :e))
            end
            JR.lset(f, :key, JR.call(JR.get(this, :tsUtil), :jm_getByteArray, [JR.lget(f, :keyAsString)]))
            JR.lset(f, :keySpec, JR.call(KeySpecFactory.jm_getInstance(), :jm_getInstance, [JR.get(this, :algorithm), JR.lget(f, :key)]))
            JR.lset(f, :keyFactory, SecretKeyFactory.jm_getInstance(JR.get(this, :algorithm)))
            JR.lset(f, :secretKey, JR.call(JR.lget(f, :keyFactory), :jm_generateSecret, [JR.lget(f, :keySpec)]))
            JR.lset(f, :cipher, Cipher.jm_getInstance(JR.get(this, :algorithm)))
            JR.put(this, :secretComposite, SecretComposite.jnew(JR.lget(f, :secretKey), JR.lget(f, :cipher), JR.lget(f, :key)))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("init Failed", this, JR.get(JR.lget(f, :commonStrings), :INIT), JR.lget(f, :e))
        end
    end)
  end


  def jm_encrypt(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        try do
            throw({:jreturn, JR.call(JR.get(this, :secretComposite), :jm_encrypt, [JR.lget(f, :array)])})
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
            throw({:jreturn, JR.call(JR.get(this, :secretComposite), :jm_decrypt, [JR.lget(f, :array)])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("decrypt Failed", this, "decrypt", JR.lget(f, :e))
            throw({:jreturn, JR.get(NullUtil.jm_getInstance(), :NULL_BYTE_ARRAY)})
        end
    end)
  end
end


