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
# package org.allbinary.game.ag.layer.hud.basic

defmodule NumberStringHudFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> NullUtil.jm_getInstance() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_NUMBER_STRING_HUD, nil)
        JR.put(this, :NULL_NUMBER_STRING_HUD, JR.call(this, :jm_createHud, []))
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (NumberStringHudFactory.jstatic_instance() == NullUtil.jm_getInstance()) do
            NumberStringHudFactory.jstatic_set_instance(NumberStringHudFactory.jnew())
        end
        throw({:jreturn, NumberStringHudFactory.jstatic_instance()})
    end)
  end


  def jm_createHud(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            throw({:jreturn, NumberStringHud.jnew(JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), 9, JR.get(BasicHudFactory.jm_getInstance(), :ABSOLUTE), 1, 0, JR.get(BasicColorFactory.jm_getInstance(), :NULL_COLOR))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :logUtil, LogUtil.jm_getInstance())
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.lget(f, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
            throw({:jexception, JR.exception("RuntimeException", "")})
        end
    end)
  end
end


