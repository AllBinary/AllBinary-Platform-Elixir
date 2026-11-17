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
# package org.allbinary.media.audio

defmodule Sound do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :resource, nil)
    JR.put(this, :player, nil)
        
        JR.put(this, :player, NoPlayer.jstatic_NO_PLAYER())
    nil
  end


  def jinit(this, p_resource) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :resource, JR.lget(f, :resource))
    end)
  end

  def jnew(p_resource) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_resource)
    this
  end


  def jm_getResource(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :resource)})
    end)
  end


  def jm_getPlayerP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :player)})
    end)
  end


  def jm_setPlayerP(this, p_player) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :player, p_player)
        JR.put(this, :player, JR.lget(f, :player))
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_getDuration(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, -1})
    end)
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.call(JR.get(this, :player), :jm_start, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_put(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN))
        end
    end)
  end
end


