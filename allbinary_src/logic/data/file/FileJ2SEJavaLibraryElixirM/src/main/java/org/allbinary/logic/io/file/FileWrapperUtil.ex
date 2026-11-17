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

defmodule FileWrapperUtil do
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


  def jm_wrapFiles(p_files) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :files, p_files)
        try do
            JR.lset(f, :abFileArray, JR.anew(JR.alength(JR.lget(f, :files)), nil))
            JR.lset(f, :index, JR.int32(JR.alength(JR.lget(f, :files)) - 1))
            JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                JR.aset(JR.lget(f, :abFileArray), JR.lget(f, :index), AbFile.jnew(JR.aget(JR.lget(f, :files), JR.lget(f, :index))))
            end)
            throw({:jreturn, JR.lget(f, :abFileArray)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", JR.lget(f, :e))
            throw({:jreturn, JR.anew(0, nil)})
        end
    end)
  end


  def jm_wrapFile(p_file) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
        try do
            throw({:jreturn, AbFile.jnew(JR.lget(f, :file))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", JR.lget(f, :e))
            throw({:jreturn, AbFile.jstatic_NULL_FILE()})
        end
    end)
  end
end


