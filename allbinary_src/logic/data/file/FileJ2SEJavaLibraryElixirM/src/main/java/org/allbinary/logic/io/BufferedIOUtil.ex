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

defmodule BufferedIOUtil do
  def jsuper(), do: JObject

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


  def jm_copy(p_backupFile, p_backupFileBak) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :backupFile, p_backupFile)
      JR.lset(f, :backupFileBak, p_backupFileBak)
        JR.lset(f, :line, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.lset(f, :tmpOut, BufferedWriter.jnew(FileWriter.jnew(AbFileNativeUtil.jm_get(JR.lget(f, :backupFileBak)))))
        JR.lset(f, :tmpIn, BufferedReader.jnew(FileReader.jnew(AbFileNativeUtil.jm_get(JR.lget(f, :backupFile)))))
        JR.jwhile(fn -> JR.call(JR.lget(f, :tmpIn), :jm_ready, []) end, fn ->
            JR.lset(f, :line, JR.call(JR.lget(f, :tmpIn), :jm_readLine, []))
            JR.call(JR.lget(f, :tmpOut), :jm_write, [JR.lget(f, :line), 0, byte_size(JR.lget(f, :line))])
            JR.call(JR.lget(f, :tmpOut), :jm_newLine, [])
        end)
        JR.call(JR.lget(f, :tmpOut), :jm_flush, [])
    end)
  end
end


