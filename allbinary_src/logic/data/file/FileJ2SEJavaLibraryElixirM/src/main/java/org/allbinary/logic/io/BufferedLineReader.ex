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

defmodule BufferedLineReader do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tmpIn, nil)
        
    nil
  end


  def jinit(this, p_file) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :tmpIn, BufferedReader.jnew(FileReader.jnew(AbFileNativeUtil.jm_get(JR.lget(f, :file)))))
    end)
  end

  def jnew(p_file) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_file)
    this
  end


  def jm_readUpToLines(this, p_readAheadIndex) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :readAheadIndex, p_readAheadIndex)
        nil
    end)
  end


  def jm_readLine(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :tmpIn), :jm_readLine, [])})
    end)
  end


  def jm_ready(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :tmpIn), :jm_ready, [])})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getCurrent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end
end


