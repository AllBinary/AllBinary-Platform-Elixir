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
# package org.allbinary.logic.java.byteutil

defmodule ByteUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ByteUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, ByteUtil.jstatic_instance()})
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


  def jm_xor(this, p_array, p_mask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
      JR.lset(f, :mask, p_mask)
        JR.lset(f, :bytes, JR.anew(JR.alength(JR.lget(f, :array)), 0))
        JR.lset(f, :size, JR.alength(JR.lget(f, :array)))
        JR.lset(f, :index, 0)
        JR.lset(f, :currentByte, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn ->
            JR.lset(f, :currentByte, JR.aget(JR.lget(f, :array), JR.lget(f, :index)))
            JR.aset(JR.lget(f, :bytes), JR.lget(f, :index), JR.int8((Bitwise.bxor(JR.lget(f, :currentByte), JR.lget(f, :mask)))))
            JR.lpostinc(f, :index, 1)
        end)
        throw({:jreturn, JR.lget(f, :bytes)})
    end)
  end


  def jm_not(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        JR.lset(f, :bytes, JR.anew(JR.alength(JR.lget(f, :array)), 0))
        JR.lset(f, :size, JR.alength(JR.lget(f, :array)))
        JR.lset(f, :index, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn ->
            JR.aset(JR.lget(f, :bytes), JR.lget(f, :index), JR.int8(Bitwise.bnot(JR.aget(JR.lget(f, :array), JR.lget(f, :index)))))
            JR.lpostinc(f, :index, 1)
        end)
        throw({:jreturn, JR.lget(f, :bytes)})
    end)
  end


  def jm_xorByte(this, p_array, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
      JR.lset(f, :index, p_index)
        JR.lset(f, :mask, 0)
        if (JR.lget(f, :index) == 0) do
            JR.lset(f, :mask, 1)
        end
        if (JR.lget(f, :index) == 1) do
            JR.lset(f, :mask, 2)
        end
        if (JR.lget(f, :index) == 2) do
            JR.lset(f, :mask, 4)
        end
        if (JR.lget(f, :index) == 3) do
            JR.lset(f, :mask, 8)
        end
        if (JR.lget(f, :index) == 4) do
            JR.lset(f, :mask, 16)
        end
        if (JR.lget(f, :index) == 5) do
            JR.lset(f, :mask, 32)
        end
        if (JR.lget(f, :index) == 6) do
            JR.lset(f, :mask, 64)
        end
        if (JR.lget(f, :index) == 7) do
            JR.lset(f, :mask, JR.int8(-127))
        end
        throw({:jreturn, JR.call(this, :jm_xor, [JR.lget(f, :array), JR.lget(f, :mask)])})
    end)
  end


  def jm_compare(this, p_newByteArray, p_oldByteArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newByteArray, p_newByteArray)
      JR.lset(f, :oldByteArray, p_oldByteArray)
        if (JR.alength(JR.lget(f, :newByteArray)) != JR.alength(JR.lget(f, :oldByteArray))) do
            throw({:jreturn, false})
        else
            nil
        end
        JR.lset(f, :size, JR.alength(JR.lget(f, :newByteArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.lget(f, :newByteArray), JR.lget(f, :index)) != JR.aget(JR.lget(f, :oldByteArray), JR.lget(f, :index))) do
                throw({:jreturn, false})
            end
        end)
        throw({:jreturn, true})
    end)
  end


  def jm_compareWithStats(this, p_newByteArray, p_newSize, p_oldByteArray, p_stats) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newByteArray, p_newByteArray)
      JR.lset(f, :newSize, p_newSize)
      JR.lset(f, :oldByteArray, p_oldByteArray)
      JR.lset(f, :stats, p_stats)
        if (JR.lget(f, :newSize) != JR.alength(JR.lget(f, :oldByteArray))) do
            JR.aset(JR.lget(f, :stats), 0, -1)
            JR.aset(JR.lget(f, :stats), 2, JR.lget(f, :newSize))
            JR.aset(JR.lget(f, :stats), 3, JR.alength(JR.lget(f, :oldByteArray)))
            throw({:jreturn, false})
        else
            JR.aset(JR.lget(f, :stats), 0, JR.lget(f, :newSize))
        end
        JR.aset(JR.lget(f, :stats), 1, 0)
        JR.lset(f, :size, JR.lget(f, :newSize))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.lget(f, :newByteArray), JR.lget(f, :index)) != JR.aget(JR.lget(f, :oldByteArray), JR.lget(f, :index))) do
                throw({:jreturn, false})
            end
            JR.apostinc(JR.lget(f, :stats), 1, 1)
        end)
        throw({:jreturn, true})
    end)
  end
end


