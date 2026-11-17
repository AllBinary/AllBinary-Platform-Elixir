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
# package org.allbinary.game.input

defmodule GameInputProcessorComposite do
  def jsuper(), do: PlayerGameInput

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :gameInputProcessorInterface, nil)
    JR.put(this, :NAME_LABEL, nil)
        
        
        JR.put(this, :NAME_LABEL, " GameInputProcessorInterface: ")
    nil
  end


  def jinit(this, p_name, p_gameInputProcessorInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :gameInputProcessorInterface, p_gameInputProcessorInterface)
        PlayerGameInput.jinit(this, BasicArrayListD.jnew(), BasicArrayListD.jnew(), -1)
        GameInputProcessorComposite.jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :gameInputProcessorInterface, JR.lget(f, :gameInputProcessorInterface))
    end)
  end

  def jnew(p_name, p_gameInputProcessorInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_gameInputProcessorInterface)
    this
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :list, JR.call(this, :jm_getGameKeyEventList, []))
            JR.call(JR.get(this, :gameInputProcessorInterface), :jm_onInput, [JR.lget(f, :list)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :UPDATE), JR.lget(f, :e)])
        end
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [PlayerGameInput.jm_toString(this)]), :jm_append, [JR.get(this, :NAME_LABEL)]), :jm_append, [JR.get(this, :name)]), :jm_toString, [])})
    end)
  end
end


