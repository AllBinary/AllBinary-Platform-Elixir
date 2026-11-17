# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.util

defmodule BasicArrayListS do
  def jsuper(), do: BasicArrayList

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        BasicArrayList.jinit(this, JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT_ARRAY))
        BasicArrayListS.jinitfields(this)
        if (JR.lget(f, :size) < 0) do
            throw({:jexception, JR.exception("IllegalArgumentException", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Init Size Exception: "]), :jm_appendint, [JR.lget(f, :size)]), :jm_toString, []))})
        end
        JR.put(this, :objectArray, JR.anew(JR.lget(f, :size), nil))
    end)
  end

  def jnew(p_size) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_size)
    this
  end
end


