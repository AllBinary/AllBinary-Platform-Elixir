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

defmodule AbFileOutputStream do
  def jsuper(), do: FileOutputStream

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jm_createFromAbFile(p_file) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
        throw({:jreturn, AbFileOutputStream.jnew(JR.call(JR.lget(f, :file), :jm_getPath, []), false)})
    end)
  end


  def jm_createFromAbFileAppend(p_file, p_append) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
      JR.lset(f, :append, p_append)
        throw({:jreturn, AbFileOutputStream.jnew(JR.call(JR.lget(f, :file), :jm_getPath, []), JR.lget(f, :append))})
    end)
  end


  def jm_createFromFilePath(p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        throw({:jreturn, AbFileOutputStream.jnew(JR.lget(f, :name), false)})
    end)
  end


  def jm_createFromFilePathAppend(p_name, p_append) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :append, p_append)
        throw({:jreturn, AbFileOutputStream.jnew(JR.lget(f, :name), JR.lget(f, :append))})
    end)
  end


  def jinit(this, p_name, p_append) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :append, p_append)
        FileOutputStream.jinit(this, JR.lget(f, :name), JR.lget(f, :append))
        AbFileOutputStream.jinitfields(this)
    end)
  end

  def jnew(p_name, p_append) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_append)
    this
  end
end


