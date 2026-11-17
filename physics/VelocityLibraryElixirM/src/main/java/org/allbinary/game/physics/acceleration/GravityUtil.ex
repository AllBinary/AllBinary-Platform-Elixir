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
# package org.allbinary.game.physics.acceleration

defmodule GravityUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GravityUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :GAME_GRAVITY_VELOCITY, 0)
    JR.put(this, :MAX_GAME_VELOCITY, 0)
        JR.put(this, :GAME_GRAVITY_VELOCITY, 1800)
        JR.put(this, :MAX_GAME_VELOCITY, 18000)
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
        throw({:jreturn, GravityUtil.jstatic_instance()})
    end)
  end


  def jm_process(this, p_velocityProperties, p_customGravity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :velocityProperties, p_velocityProperties)
      JR.lset(f, :customGravity, p_customGravity)
        JR.call(JR.call(JR.lget(f, :velocityProperties), :jm_getVelocityYBasicDecimalP, []), :jm_addint, [JR.lget(f, :customGravity)])
    end)
  end
end


