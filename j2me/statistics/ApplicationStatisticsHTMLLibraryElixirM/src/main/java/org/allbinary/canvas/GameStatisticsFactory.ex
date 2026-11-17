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
# package org.allbinary.canvas

#ActualPlatform
defmodule GameStatisticsFactory do
  def jsuper(), do: BaseGameStatistics
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameStatisticsFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :stringBuffer, nil)
        JR.put(this, :stringBuffer, StringMaker.jnew())
    nil
  end

  def jinit(this) do
    BaseGameStatistics.jinit(this)
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
        throw({:jreturn, GameStatisticsFactory.jstatic_instance()})
    end)
  end


  def jm_add(this, p_string) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :string, p_string)
        if (JR.call(JR.get(this, :stringBuffer), :jm_length, []) > 12000) do
            JR.call(JR.get(this, :stringBuffer), :jm_delete, [0, JR.call(JR.get(this, :stringBuffer), :jm_length, [])])
            JR.call(JR.get(this, :stringBuffer), :jm_append, ["Old Stats Cleared"])
        end
        JR.call(JR.get(this, :stringBuffer), :jm_append, [JR.lget(f, :string)])
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [BaseGameStatistics.jm_toString(this)]), :jm_append, [JR.call(JR.get(this, :stringBuffer), :jm_toString, [])]), :jm_toString, [])})
    end)
  end
end


