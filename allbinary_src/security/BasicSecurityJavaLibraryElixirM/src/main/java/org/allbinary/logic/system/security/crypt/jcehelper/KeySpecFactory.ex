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

defmodule KeySpecFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> KeySpecFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :DES, nil)
    JR.put(this, :DESEDE, nil)
    JR.put(this, :BLOWFISH, nil)
        JR.put(this, :DES, "DES")
        JR.put(this, :DESEDE, "DESede")
        JR.put(this, :BLOWFISH, "Blowfish")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, KeySpecFactory.jstatic_instance()})
    end)
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


  def jm_getInstance(this, p_algorithm, p_keyData) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :algorithm, p_algorithm)
      JR.lset(f, :keyData, p_keyData)
        try do
            JR.lset(f, :tsUtil, TsUtil.jm_getInstance())
            if (JR.call(JR.lget(f, :tsUtil), :jm_compareTo, [JR.lget(f, :algorithm), JR.get(this, :DES)]) == 0) do
                throw({:jreturn, DESKeySpec.jnew(JR.lget(f, :keyData))})
            else
                if (JR.call(JR.lget(f, :tsUtil), :jm_compareTo, [JR.lget(f, :algorithm), JR.get(this, :DESEDE)]) == 0) do
                throw({:jreturn, DESedeKeySpec.jnew(JR.lget(f, :keyData))})
            else
                throw({:jexception, JR.exception("RuntimeException", "")})
            end
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :GET_INSTANCE), JR.lget(f, :e))
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end
end


