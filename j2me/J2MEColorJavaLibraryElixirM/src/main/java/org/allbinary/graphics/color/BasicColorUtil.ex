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
# package org.allbinary.graphics.color

defmodule BasicColorUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicColorUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :ZERO_ARRAY, nil)
    JR.put(this, :ALPHA, 0)
    JR.put(this, :isAlpha, false)
    JR.put(this, :ffOpaque, false)
        JR.put(this, :ZERO_ARRAY, JR.anew(0, nil))
        JR.put(this, :ALPHA, 0xFF000000)
        JR.put(this, :isAlpha, true)
        JR.put(this, :ffOpaque, true)
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
        throw({:jreturn, BasicColorUtil.jstatic_instance()})
    end)
  end


  def jm_getRGB(this, p_red, p_green, p_blue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :red, p_red)
      JR.lset(f, :green, p_green)
      JR.lset(f, :blue, p_blue)
        JR.lset(f, :value, 0)
        if JR.get(this, :isAlpha) do
            if JR.get(this, :ffOpaque) do
                JR.lset(f, :value, JR.get(this, :ALPHA))
            end
        end
        JR.lset(f, :value, Bitwise.bor((JR.int32(Bitwise.bsl(JR.lget(f, :red), 16))), JR.lget(f, :value)))
        JR.lset(f, :value, Bitwise.bor((JR.int32(Bitwise.bsl(JR.lget(f, :green), 8))), JR.lget(f, :value)))
        JR.lset(f, :value, Bitwise.bor(JR.lget(f, :blue), JR.lget(f, :value)))
        throw({:jreturn, JR.lget(f, :value)})
    end)
  end


  def jm_getARGB(this, p_alphaValue, p_r, p_g, p_b) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :r, p_r)
      JR.lset(f, :g, p_g)
      JR.lset(f, :b, p_b)
        throw({:jreturn, JR.int32(JR.int32(JR.int32((Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :alphaValue), 24))), JR.get(this, :ALPHA))) + (Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :r), 16))), 0x00FF0000))) + (Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :g), 8))), 0x0000FF00))) + (Bitwise.band(JR.lget(f, :b), 0x000000FF)))})
    end)
  end


  def jm_get(this, p_alphaValue, p_color) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :color, p_color)
        throw({:jreturn, JR.int32((Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :alphaValue), 24))), JR.get(this, :ALPHA))) + JR.lget(f, :color))})
    end)
  end


  def jm_invert(this, p_color) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :color, p_color)
        throw({:jreturn, Bitwise.bor((JR.int32(0xFFFFFF - JR.lget(f, :color))), JR.get(this, :ALPHA))})
    end)
  end
end


