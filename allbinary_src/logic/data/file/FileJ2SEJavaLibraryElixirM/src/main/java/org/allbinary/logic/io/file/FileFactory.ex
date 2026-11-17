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
# package org.allbinary.logic.io.file

defmodule FileFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> FileFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        throw({:jreturn, FileFactory.jstatic_instance()})
    end)
  end


  def jm_getInstance(this, p_filePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
        throw({:jreturn, AbFile.jm_createAbFileFromRawPath(JR.lget(f, :filePath))})
    end)
  end


  def jm_getInstance(this, p_file, p_childFilePath) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
      JR.lset(f, :childFilePath, p_childFilePath)
        throw({:jreturn, AbFile.jm_createAbFileWithChild(JR.lget(f, :file), JR.lget(f, :childFilePath))})
    end)
  end


  def jm_isFile(this, p_path) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :file, AbFile.jm_createAbFile(JR.lget(f, :path)))
        if JR.call(JR.lget(f, :file), :jm_exists, []) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


