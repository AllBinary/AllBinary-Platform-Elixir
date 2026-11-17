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
# package org.allbinary.logic.math.permutations

defmodule ComparableObject do
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


  def jm_compareTo(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        if (JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]) < JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [JR.lget(f, :anyType)])) do
            throw({:jreturn, -1})
        else
            if (JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]) > JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [JR.lget(f, :anyType)])) do
            throw({:jreturn, 1})
        end
        end
        throw({:jreturn, 0})
    end)
  end
end


