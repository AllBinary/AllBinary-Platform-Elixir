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
# package org.allbinary.game

defmodule Intermission do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :enabled, false)
    JR.put(this, :timeElapsedHelper, nil)
    JR.put(this, :intermissionEnableListener, nil)
        JR.put(this, :enabled, false)
        JR.put(this, :timeElapsedHelper, TimeDelayHelper.jnew(0))
        JR.put(this, :intermissionEnableListener, NullIntermissionEnableListener.jm_getInstance())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setListener(this, p_enableListener) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enableListener, p_enableListener)
        JR.put(this, :intermissionEnableListener, JR.lget(f, :enableListener))
    end)
  end


  def jm_getTimeDelayHelper(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :timeElapsedHelper)})
    end)
  end


  def jm_setEnabled(this, p_enabled) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :enabled, p_enabled)
        JR.put(this, :enabled, JR.lget(f, :enabled))
        if JR.call(this, :jm_isEnabled, []) do
            JR.call(JR.call(this, :jm_getTimeDelayHelper, []), :jm_setStartTimeTNT, [])
        end
        JR.call(JR.get(this, :intermissionEnableListener), :jm_notifyIntermission, [JR.lget(f, :enabled)])
    end)
  end


  def jm_isEnabled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :enabled)})
    end)
  end
end


