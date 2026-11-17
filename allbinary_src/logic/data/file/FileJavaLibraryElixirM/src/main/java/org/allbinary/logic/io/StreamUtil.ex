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
# package org.allbinary.logic.io

defmodule StreamUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> StreamUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, StreamUtil.jstatic_instance()})
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


  def jm_get(this, p_inputStream, p_outputStream, p_buffer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :outputStream, p_outputStream)
      JR.lset(f, :buffer, p_buffer)
        JR.lset(f, :len, 0)
        JR.jwhile(fn -> true end, fn ->
            JR.lset(f, :len, JR.call(JR.lget(f, :inputStream), :jm_read, [JR.lget(f, :buffer), 0, JR.alength(JR.lget(f, :buffer))]))
            if (JR.lget(f, :len) != -1) do
                nil
            else
                throw(:jbreak)
            end
            JR.call(JR.lget(f, :outputStream), :jm_write, [JR.lget(f, :buffer), 0, JR.lget(f, :len)])
        end)
        throw({:jreturn, JR.lget(f, :outputStream)})
    end)
  end


  def jm_getByteArray(this, p_inputStream, p_outputStream2, p_byteArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :outputStream2, p_outputStream2)
      JR.lset(f, :byteArray, p_byteArray)
        JR.lset(f, :outputStream, JR.lget(f, :outputStream2))
        try do
            JR.call(this, :jm_get, [JR.lget(f, :inputStream), JR.lget(f, :outputStream), JR.lget(f, :byteArray)])
            throw({:jreturn, JR.call(JR.lget(f, :outputStream), :jm_toByteArray, [])})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            JR.call(this, :jm_close, [JR.lget(f, :outputStream)])
        end
    end)
  end


  def jm_close(this, p_closeable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :closeable, p_closeable)
        try do
            if (JR.lget(f, :closeable) != nil) do
                JR.call(JR.lget(f, :closeable), :jm_close, [])
            end
            throw({:jreturn, true})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CLOSE), JR.lget(f, :e)])
            throw({:jreturn, false})
        end
    end)
  end
end


