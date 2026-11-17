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
# package org.allbinary.util

defmodule ImmutableBasicArrayList do
  def jsuper(), do: BasicArrayListS

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
        
    nil
  end


  def jinit(this, p_name, p_size) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :size, p_size)
        BasicArrayListS.jinit(this, JR.lget(f, :size))
        ImmutableBasicArrayList.jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end

  def jnew(p_name, p_size) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_size)
    this
  end


  def jm_add(this, p_e) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :e, p_e)
        ForcedLogUtil.jm_log(JR.get(this, :name), this)
        throw({:jreturn, true})
    end)
  end


  def jm_addAt(this, p_index, p_element) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
      JR.lset(f, :element, p_element)
        ForcedLogUtil.jm_log(JR.get(this, :name), this)
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end
end


