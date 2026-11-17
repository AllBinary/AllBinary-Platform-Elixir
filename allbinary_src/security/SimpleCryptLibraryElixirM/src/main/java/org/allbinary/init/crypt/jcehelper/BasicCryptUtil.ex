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
# package org.allbinary.init.crypt.jcehelper

defmodule BasicCryptUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicCryptUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :XML_START, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :XML_START, "<?xml")
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, BasicCryptUtil.jstatic_instance()})
    end)
  end


  def jm_getDecryptedInputStream(this, p_inputStream, p_cryptInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :cryptInterface, p_cryptInterface)
        JR.lset(f, :buffer, J.ByteArrayOutputStream.jnew())
        JR.lset(f, :ch, 0)
        JR.jwhile(fn -> true end, fn ->
            JR.lset(f, :ch, JR.call(JR.lget(f, :inputStream), :jm_read, []))
            if (JR.lget(f, :ch) == -1) do
                throw(:jbreak)
            end
            JR.call(JR.lget(f, :buffer), :jm_write, [JR.lget(f, :ch)])
        end)
        JR.lset(f, :decrypted, JR.call(JR.lget(f, :cryptInterface), :jm_decrypt, [JR.call(JR.lget(f, :buffer), :jm_toByteArray, [])]))
        JR.lset(f, :decryptedString, JR.lget(f, :decrypted))
        JR.lset(f, :index, JR.index_of(JR.lget(f, :decryptedString), JR.get(this, :XML_START)))
        if (JR.lget(f, :index) > 0) do
            JR.lset(f, :decryptedString, JR.substring(JR.lget(f, :decryptedString), JR.lget(f, :index)))
        end
        throw({:jreturn, ByteArrayInputStream.jnew(JR.call(JR.get(this, :tsUtil), :jm_getByteArray, [JR.lget(f, :decryptedString)]))})
    end)
  end
end


