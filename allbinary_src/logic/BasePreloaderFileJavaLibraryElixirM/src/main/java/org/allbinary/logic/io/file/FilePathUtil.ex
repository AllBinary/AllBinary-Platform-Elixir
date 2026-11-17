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

#Used to correct user input for paths
defmodule FilePathUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
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


  def jm_adjust(p_path) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :path, p_path)
        JR.lset(f, :abPathData, AbPathData.jm_getInstance())
        JR.lset(f, :stringValidationUtil, StringValidationUtil.jm_getInstance())
        JR.lset(f, :filePathData, FilePathData.jm_getInstance())
        if JR.call(JR.lget(f, :stringValidationUtil), :jm_isEmpty, [JR.lget(f, :path)]) do
            throw({:jreturn, JR.get(JR.lget(f, :filePathData), :PATH_START)})
        end
        JR.lset(f, :path, JR.call(JR.lget(f, :path), :jm_replace, [JR.get(JR.lget(f, :abPathData), :SEPARATORCHAR), JR.get(JR.lget(f, :filePathData), :SEPARATORCHAR)]))
        throw({:jreturn, JR.lget(f, :path)})
    end)
  end
end


