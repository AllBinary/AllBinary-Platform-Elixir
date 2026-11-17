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
# package org.allbinary.game.layer

defmodule LayerPlacementType do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :type, 0)
        
    nil
  end


  def jinit(this, p_type) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :type, p_type)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :type, JR.lget(f, :type))
    end)
  end

  def jnew(p_type) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_type)
    this
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :type)})
    end)
  end


  def jm_setType(this, p_type) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :type, p_type)
        JR.put(this, :type, JR.lget(f, :type))
    end)
  end
end


