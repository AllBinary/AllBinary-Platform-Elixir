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

defmodule VelocityInterface do
  def jsuper(), do: JObject


  def jm_getMaxForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMaxForwardVelocity")})
    end)
  end


  def jm_getMaxReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getMaxReverseVelocity")})
    end)
  end


  def jm_limitMaxXYForwardVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "limitMaxXYForwardVelocity")})
    end)
  end


  def jm_limitMaxXYReverseVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "limitMaxXYReverseVelocity")})
    end)
  end


  def jm_limitXYToForwardAndReverseMaxVelocity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "limitXYToForwardAndReverseMaxVelocity")})
    end)
  end


  def jm_limitMaxXYVelocity(this, p_maxVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxVelocity, p_maxVelocity)
      throw({:jexception, JR.exception("AbstractMethodError", "limitMaxXYVelocity")})
    end)
  end


  def jm_setMaxForwardVelocity(this, p_maxForwardVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxForwardVelocity, p_maxForwardVelocity)
      throw({:jexception, JR.exception("AbstractMethodError", "setMaxForwardVelocity")})
    end)
  end


  def jm_setMaxReverseVelocity(this, p_maxReverseVelocity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :maxReverseVelocity, p_maxReverseVelocity)
      throw({:jexception, JR.exception("AbstractMethodError", "setMaxReverseVelocity")})
    end)
  end
end


