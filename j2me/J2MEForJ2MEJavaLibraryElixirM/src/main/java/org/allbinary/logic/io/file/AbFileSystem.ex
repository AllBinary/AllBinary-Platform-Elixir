# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

#J2MEForJ2ME
defmodule AbFileSystem do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AbFileSystem.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
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
        throw({:jreturn, AbFileSystem.jstatic_instance()})
    end)
  end


  def jm_isDirectoryOrFile(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        throw({:jreturn, false})
    end)
  end


  def jm_isDirectory(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        throw({:jreturn, false})
    end)
  end


  def jm_getFilesAsStringArrayForPath(this, p_currentDirPath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :currentDirPath, p_currentDirPath)
        throw({:jreturn, JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, [])})
    end)
  end


  def jm_readAsString(this, p_fileName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fileName, p_fileName)
        JR.lset(f, :bytes, JR.anew(1000000, 0))
        throw({:jreturn, JR.call(this, :jm_readAsString, [JR.lget(f, :fileName), JR.lget(f, :bytes)])})
    end)
  end


  def jm_readAsString(this, p_fileName, p_bytes) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fileName, p_fileName)
      JR.lset(f, :bytes, p_bytes)
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
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
                JR.lset(f, :inputStream, (JR.lget(f, :closeable)))
                JR.call(JR.lget(f, :inputStream), :jm_close, [])
            end
            throw({:jreturn, true})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :CLOSE), JR.lget(f, :e)])
            throw({:jreturn, false})
        end
    end)
  end
end


