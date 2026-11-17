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
# package org.allbinary.game.layer.weapon

defmodule WeaponLayerCircularPool do
  def jsuper(), do: AllBinaryLayerCircularPool

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
      AllBinaryLayerCircularPool.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstanceWeaponLayer(this, p_sourceLayerInterface, p_x, p_y, p_z, p_angle, p_otherAngle, p_weaponProperties, p_scoreable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreable, p_scoreable)
        JR.lset(f, :weaponLayer, AllBinaryLayerCircularPool.jm_getNextInstance(this))
        JR.call(JR.lget(f, :weaponLayer), :jm_initXYZ, [JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])
        JR.call(JR.lget(f, :weaponLayer), :jm_init, [JR.lget(f, :sourceLayerInterface), JR.lget(f, :angle), JR.lget(f, :otherAngle), JR.lget(f, :weaponProperties), JR.lget(f, :scoreable)])
        throw({:jreturn, JR.lget(f, :weaponLayer)})
    end)
  end
end


