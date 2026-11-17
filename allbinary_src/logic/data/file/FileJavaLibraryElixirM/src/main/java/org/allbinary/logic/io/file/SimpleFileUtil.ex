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
# package org.allbinary.logic.io.file

defmodule SimpleFileUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SimpleFileUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :NULL_WRITER, nil)
    JR.put(this, :NULL_READER, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :nullUtil, nil)
    JR.put(this, :streamUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :NULL_WRITER, SimpleFileUtil.jm_nullWriter())
        JR.put(this, :NULL_READER, SimpleFileUtil.jm_nullReader())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :nullUtil, NullUtil.jm_getInstance())
        JR.put(this, :streamUtil, StreamUtil.jm_getInstance())
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
        throw({:jreturn, SimpleFileUtil.jstatic_instance()})
    end)
  end


  def jm_nullOutputStream() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullOutputStream.jstatic_NULL_OUTPUT_STREAM()})
    end)
  end


  def jm_nullWriter() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullWriter.jstatic_NULL_WRITER()})
    end)
  end


  def jm_nullReader() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, NullReader.jstatic_NULL_READER()})
    end)
  end


  def jm_loadFileAsList(this, p_inputStream, p_max, p_byteArray1) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :max, p_max)
      JR.lset(f, :byteArray1, p_byteArray1)
        throw({:jreturn, JR.call(this, :jm_loadFileAsListReturnLine, [JR.lget(f, :inputStream), JR.lget(f, :max), JR.lget(f, :byteArray1), 0])})
    end)
  end


  def jm_loadFileAsListReturnLine(this, p_inputStream, p_max, p_byteArray1, p_includeReturnLine) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputStream, p_inputStream)
      JR.lset(f, :max, p_max)
      JR.lset(f, :byteArray1, p_byteArray1)
      JR.lset(f, :includeReturnLine, p_includeReturnLine)
        JR.lset(f, :stringList, BasicArrayListD.jnew())
        if (JR.lget(f, :inputStream) == nil) do
            throw({:jreturn, JR.lget(f, :stringList)})
        end
        JR.lset(f, :byteArray, JR.get(JR.get(this, :nullUtil), :NULL_BYTE_ARRAY))
        try do
            JR.lset(f, :outputStream2, J.ByteArrayOutputStream.jnew(JR.lget(f, :max)))
            JR.lset(f, :byteArray, JR.call(JR.get(this, :streamUtil), :jm_getByteArray, [JR.lget(f, :inputStream), JR.lget(f, :outputStream2), JR.lget(f, :byteArray1)]))
            JR.call(JR.get(this, :streamUtil), :jm_close, [JR.lget(f, :inputStream)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :streamUtil), :jm_close, [JR.lget(f, :inputStream)])
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :ADD), JR.lget(f, :e)])
        end
        if (JR.lget(f, :byteArray) == nil) do
            throw({:jreturn, JR.lget(f, :stringList)})
        end
        JR.lset(f, :size, JR.alength(JR.lget(f, :byteArray)))
        JR.lset(f, :index, 0)
        JR.lset(f, :startIndex, 0)
        JR.lset(f, :returnLine, 0)
        JR.jwhile(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn ->
            JR.lset(f, :startIndex, JR.lget(f, :index))
            JR.jwhile(fn -> ((JR.lget(f, :index) < JR.int32(JR.lget(f, :size) - 1)) && (JR.aget(JR.lget(f, :byteArray), JR.lget(f, :index)) != JR.int8(?\n))) end, fn ->
                JR.lpostinc(f, :index, 1)
            end)
            if (JR.lget(f, :includeReturnLine) == 0) do
                if ((JR.lget(f, :index) > 0) && (JR.aget(JR.lget(f, :byteArray), JR.int32(JR.lget(f, :index) - 1)) == JR.int8(?\r))) do
                    JR.lset(f, :returnLine, 1)
                else
                    JR.lset(f, :returnLine, 0)
                end
            end
            JR.lset(f, :s, JR.from_chars(JR.lget(f, :byteArray), JR.lget(f, :startIndex), (JR.int32(JR.int32(JR.int32(JR.lget(f, :index) + JR.lget(f, :includeReturnLine)) - JR.lget(f, :returnLine)) - JR.lget(f, :startIndex)))))
            JR.call(JR.lget(f, :stringList), :jm_add, [JR.lget(f, :s)])
            JR.lpostinc(f, :index, 1)
        end)
        throw({:jreturn, JR.lget(f, :stringList)})
    end)
  end


  def jm_createStringFromArrayOfStrings(this, p_stringArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :stringArray, p_stringArray)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :size, JR.alength(JR.lget(f, :stringArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.aget(JR.lget(f, :stringArray), JR.lget(f, :index))])
        end)
        throw({:jreturn, JR.call(JR.lget(f, :stringMaker), :jm_toString, [])})
    end)
  end
end


