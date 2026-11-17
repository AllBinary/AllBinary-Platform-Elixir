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

defmodule DataOutputStreamFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> DataOutputStreamFactory.jnew() end)
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
        throw({:jreturn, DataOutputStreamFactory.jstatic_instance()})
    end)
  end


  def jm_getInstanceForAbFile(this, p_file) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
        JR.lset(f, :idFileOutputStream, AbFileOutputStream.jm_createFromAbFile(JR.lget(f, :file)))
        JR.lset(f, :idOutData, AbDataOutputStream.jnew(JR.lget(f, :idFileOutputStream)))
        throw({:jreturn, JR.lget(f, :idOutData)})
    end)
  end


  def jm_getInstance(this, p_filePath, p_fileName) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :filePath, p_filePath)
      JR.lset(f, :fileName, p_fileName)
        JR.lset(f, :fileStreamFactory, FileStreamFactory.jm_getInstance())
        JR.lset(f, :fileOutputStream, JR.call(JR.lget(f, :fileStreamFactory), :jm_getFileOutputStreamInstance, [JR.lget(f, :filePath), JR.lget(f, :fileName)]))
        JR.lset(f, :idOutData, AbDataOutputStream.jnew(JR.lget(f, :fileOutputStream)))
        throw({:jreturn, JR.lget(f, :idOutData)})
    end)
  end
end


