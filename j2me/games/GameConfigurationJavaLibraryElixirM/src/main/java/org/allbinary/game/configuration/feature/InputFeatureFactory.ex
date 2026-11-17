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
# package org.allbinary.game.configuration.feature

defmodule InputFeatureFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> InputFeatureFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :REMOVE_DUPLICATE_KEY_PRESSES, nil)
    JR.put(this, :INPUT_MAPPING, nil)
    JR.put(this, :MULTI_KEY_PRESS, nil)
    JR.put(this, :SINGLE_KEY_REPEAT_PRESS, nil)
    JR.put(this, :SINGLE_KEY_PRESS, nil)
        JR.put(this, :REMOVE_DUPLICATE_KEY_PRESSES, InputFeature.jnew("Remove Duplicate Key Presses"))
        JR.put(this, :INPUT_MAPPING, InputFeature.jnew("Input Mapping"))
        JR.put(this, :MULTI_KEY_PRESS, InputFeature.jnew("Multi Key Press"))
        JR.put(this, :SINGLE_KEY_REPEAT_PRESS, InputFeature.jnew("Single Key Repeat Press"))
        JR.put(this, :SINGLE_KEY_PRESS, InputFeature.jnew("Single Key Press"))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, InputFeatureFactory.jstatic_instance()})
    end)
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


  def jm_isSingleKeyProcessing(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :features, Features.jm_getInstance())
        if (JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(this, :SINGLE_KEY_REPEAT_PRESS)]) || JR.call(JR.lget(f, :features), :jm_isFeature, [JR.get(this, :SINGLE_KEY_PRESS)])) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end
end


