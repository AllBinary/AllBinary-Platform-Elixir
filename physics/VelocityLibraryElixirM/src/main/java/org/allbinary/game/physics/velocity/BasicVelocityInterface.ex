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
# package org.allbinary.game.physics.velocity

defmodule BasicVelocityInterface do
  def jsuper(), do: JObject


  def jm_getVelocityXBasicDecimalP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getVelocityXBasicDecimalP")})
    end)
  end


  def jm_getVelocityYBasicDecimalP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getVelocityYBasicDecimalP")})
    end)
  end


  def jm_zero(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "zero")})
    end)
  end


  def jm_setVelocityWithBigDecimalAndDirection(this, p_magnitudeBasicDecimal, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
      throw({:jexception, JR.exception("AbstractMethodError", "setVelocityWithBigDecimalAndDirection")})
    end)
  end


  def jm_addVelocityWithBigDecimalAndDirection(this, p_magnitudeBasicDecimal, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
      throw({:jexception, JR.exception("AbstractMethodError", "addVelocityWithBigDecimalAndDirection")})
    end)
  end


  def jm_setVelocityWithDirection(this, p_magnitude, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
      throw({:jexception, JR.exception("AbstractMethodError", "setVelocityWithDirection")})
    end)
  end


  def jm_addVelocityWithDirection(this, p_magnitude, p_direction, p_otherDirection) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :direction, p_direction)
      JR.lset(f, :otherDirection, p_otherDirection)
      throw({:jexception, JR.exception("AbstractMethodError", "addVelocityWithDirection")})
    end)
  end


  def jm_setVelocityWithBigDecimal(this, p_magnitudeBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "setVelocityWithBigDecimal")})
    end)
  end


  def jm_addVelocityWithBigDecimal(this, p_magnitudeBasicDecimal, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitudeBasicDecimal, p_magnitudeBasicDecimal)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "addVelocityWithBigDecimal")})
    end)
  end


  def jm_setVelocity(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "setVelocity")})
    end)
  end


  def jm_addVelocity(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "addVelocity")})
    end)
  end


  def jm_addVelocityi(this, p_magnitude, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :magnitude, p_magnitude)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      throw({:jexception, JR.exception("AbstractMethodError", "addVelocityi")})
    end)
  end
end


