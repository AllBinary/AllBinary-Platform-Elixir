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

defmodule PCGameInputMapping do
  def jsuper(), do: PersistentInputMapping

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
        PersistentInputMapping.jinit(this, JR.get(GamePersistanceStrings.jm_getInstance(), :SAVED_INPUT_CONFIGURATION_RECORD_ID))
        PCGameInputMapping.jinitfields(this)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_init(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        PCKeyFactory.jm_getInstance()
        TouchMotionGestureFactory.jm_getInstance()
        TrackballMotionGestureFactory.jm_getInstance()
        BasicTouchInputFactory.jm_getInstance()
        PersistentInputMapping.jm_init(this, JR.lget(f, :abeClientInformation))
        if ((JR.call(this, :jm_getTotalMapped, []) == 0) || JR.call(this, :jm_isDefaultNew, [])) do
            JR.call(JR.call(this, :jm_getInputMapping, []), :jm_addMapping, [JR.call(this, :jm_getDefault, [])])
            JR.call(this, :jm_save, [JR.lget(f, :abeClientInformation)])
        end
    end)
  end


  def jm_isDelete(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        if (JR.lget(f, :input) == JR.get(PCKeyFactory.jm_getInstance(), :DEL)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_isSystemInput(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, false})
    end)
  end
end


