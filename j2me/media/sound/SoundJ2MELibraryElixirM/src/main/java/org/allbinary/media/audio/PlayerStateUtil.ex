# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

defmodule PlayerStateUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PlayerStateUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :UNREALIZED, nil)
    JR.put(this, :REALIZED, nil)
    JR.put(this, :PREFETCHED, nil)
    JR.put(this, :STARTED, nil)
    JR.put(this, :CLOSED, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :UNREALIZED, "UNREALIZED")
        JR.put(this, :REALIZED, "REALIZED")
        JR.put(this, :PREFETCHED, "PREFETCHED")
        JR.put(this, :STARTED, "STARTED")
        JR.put(this, :CLOSED, "CLOSED")
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
        throw({:jreturn, PlayerStateUtil.jstatic_instance()})
    end)
  end


  def jm_convert(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        if (JR.lget(f, :state) == Player.jstatic_UNREALIZED()) do
            throw({:jreturn, JR.get(this, :UNREALIZED)})
        else
            if (JR.lget(f, :state) == Player.jstatic_REALIZED()) do
            throw({:jreturn, JR.get(this, :REALIZED)})
        else
            if (JR.lget(f, :state) == Player.jstatic_PREFETCHED()) do
            throw({:jreturn, JR.get(this, :PREFETCHED)})
        else
            if (JR.lget(f, :state) == Player.jstatic_STARTED()) do
            throw({:jreturn, JR.get(this, :STARTED)})
        else
            if (JR.lget(f, :state) == Player.jstatic_CLOSED()) do
            throw({:jreturn, JR.get(this, :CLOSED)})
        end
        end
        end
        end
        end
        throw({:jreturn, JR.get(JR.get(this, :commonStrings), :UNKNOWN)})
    end)
  end
end


