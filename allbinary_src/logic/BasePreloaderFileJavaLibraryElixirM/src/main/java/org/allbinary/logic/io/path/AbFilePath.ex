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
# package org.allbinary.logic.io.path

defmodule AbFilePath do
  def jsuper(), do: AbPath

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_aPath) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :aPath, p_aPath)
        AbPath.jinit(this, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        AbFilePath.jinitfields(this)
        JR.lset(f, :pathData, AbPathData.jm_getInstance())
        JR.lset(f, :abPathUtil, PathUtil.jm_getInstance())
        JR.put(this, :schema, JR.call(this, :jm_getSchema, [JR.lget(f, :aPath)]))
        JR.call(this, :jm_setName, [JR.call(JR.lget(f, :pathData), :jm_getNameFromPath, [JR.lget(f, :aPath)])])
        JR.call(this, :jm_setPath, [JR.call(JR.lget(f, :abPathUtil), :jm_adjust, [JR.call(this, :jm_getPathFromPath, [JR.call(JR.call(JR.lget(f, :abPathUtil), :jm_removeNameFromPath, [JR.lget(f, :aPath)]), :jm_toString, [])])])])
    end)
  end

  def jnew(p_aPath) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_aPath)
    this
  end
end


