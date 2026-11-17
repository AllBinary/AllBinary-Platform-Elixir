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
# package org.allbinary.game.input.mapping.event

defmodule InputMappingEvent do
  def jsuper(), do: AllBinaryEventObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :inputToGameKeyMapping, nil)
        JR.put(this, :inputToGameKeyMapping, InputToGameKeyMapping.jm_getNullInstance())
    nil
  end


  def jinit(this, p_anyType) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
        AllBinaryEventObject.jinit(this, JR.lget(f, :anyType))
        InputMappingEvent.jinitfields(this)
    end)
  end

  def jnew(p_anyType) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_anyType)
    this
  end


  def jm_setInputToGameKeyMapping(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        JR.put(this, :inputToGameKeyMapping, JR.lget(f, :inputToGameKeyMapping))
    end)
  end


  def jm_getInputToGameKeyMapping(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :inputToGameKeyMapping)})
    end)
  end
end


