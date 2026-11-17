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
# package org.allbinary.game.layer.special

defmodule AnalogInputBuilder do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AnalogInputBuilder.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
        throw({:jreturn, AnalogInputBuilder.jstatic_instance()})
    end)
  end


  def jm_disable(this, p_inputProcessorArray, p_collidableDestroyableDamageableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputProcessorArray, p_inputProcessorArray)
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_UP(), SpecialUpGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_DOWN(), SpecialDownGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_RIGHT(), SpecialRightGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_LEFT(), SpecialLeftGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_KEY_NUM0(), Special1GameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_KEY_NUM5(), Special3GameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
    end)
  end


  def jm_enable(this, p_inputProcessorArray, p_collidableDestroyableDamageableLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputProcessorArray, p_inputProcessorArray)
      JR.lset(f, :collidableDestroyableDamageableLayer, p_collidableDestroyableDamageableLayer)
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_UP(), SpecialAnalogUpGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_DOWN(), SpecialAnalogDownGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_RIGHT(), SpecialAnalogRightGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_LEFT(), SpecialAnalogLeftGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_KEY_NUM0(), SpecialAnalogLeftTriggerGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
        JR.aset(JR.lget(f, :inputProcessorArray), Canvas.jstatic_KEY_NUM5(), SpecialAnalogRightTriggerGameInputProcessor.jnew(JR.lget(f, :collidableDestroyableDamageableLayer)))
    end)
  end
end


