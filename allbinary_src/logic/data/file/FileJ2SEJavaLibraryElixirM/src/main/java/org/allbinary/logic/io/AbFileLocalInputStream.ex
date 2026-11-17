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

defmodule AbFileLocalInputStream do
  def jsuper(), do: AbFileInputStream

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_file) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :file, p_file)
        AbFileInputStream.jinit(this, JR.call(AbFileNativeUtil.jm_get(JR.lget(f, :file)), :jm_getPath, []))
        AbFileLocalInputStream.jinitfields(this)
    end)
  end

  def jnew(p_file) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_file)
    this
  end
end


