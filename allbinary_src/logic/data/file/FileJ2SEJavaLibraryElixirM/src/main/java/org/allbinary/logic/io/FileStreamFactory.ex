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

defmodule FileStreamFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

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
        if (FileStreamFactory.jstatic_SINGLETON() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            FileStreamFactory.jstatic_set_SINGLETON(FileStreamFactory.jnew())
        end
        throw({:jreturn, FileStreamFactory.jstatic_SINGLETON()})
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


  def jm_getFileInputStreamInstance(this, p_path, p_fileName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
      JR.lset(f, :fileName, p_fileName)
        JR.lset(f, :FILEABPATH, AbPath.jnew(JR.lget(f, :path), JR.lget(f, :fileName)))
        JR.lset(f, :file, AbFile.jm_createAbFileFromAbPath(JR.lget(f, :FILEABPATH)))
        throw({:jreturn, AbFileInputStream.jm_createFromAbFile(JR.lget(f, :file))})
    end)
  end


  def jm_getFileOutputStreamInstance(this, p_path, p_fileName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
      JR.lset(f, :fileName, p_fileName)
        JR.lset(f, :FILEABPATH, AbPath.jnew(JR.lget(f, :path), JR.lget(f, :fileName)))
        JR.lset(f, :file, AbFile.jm_createAbFileFromAbPath(JR.lget(f, :FILEABPATH)))
        if JR.call(JR.lget(f, :file), :jm_exists, []) do
            JR.call(JR.lget(f, :file), :jm_delete, [])
            JR.call(JR.lget(f, :file), :jm_createNewFile, [])
        end
        throw({:jreturn, AbFileOutputStream.jm_createFromAbFile(JR.lget(f, :file))})
    end)
  end


  def jm_delete(this, p_path, p_fileName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
      JR.lset(f, :fileName, p_fileName)
        JR.lset(f, :FILEABPATH, AbPath.jnew(JR.lget(f, :path), JR.lget(f, :fileName)))
        JR.lset(f, :file, AbFile.jm_createAbFileFromAbPath(JR.lget(f, :FILEABPATH)))
        JR.call(JR.lget(f, :file), :jm_delete, [])
    end)
  end
end


