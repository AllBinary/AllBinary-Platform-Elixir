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

defmodule AbDataOutputStream do
  def jsuper(), do: DataOutputStream

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_out) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :out, p_out)
        DataOutputStream.jinit(this, JR.lget(f, :out))
        AbDataOutputStream.jinitfields(this)
    end)
  end

  def jnew(p_out) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_out)
    this
  end
end


