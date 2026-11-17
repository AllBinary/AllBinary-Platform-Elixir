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

defmodule BasicColor do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :name, nil)
    JR.put(this, :value, 0)
    JR.put(this, :redComponent, 0.0)
    JR.put(this, :greenComponent, 0.0)
    JR.put(this, :blueComponent, 0.0)
    JR.put(this, :alphaComponent, 0.0)
    JR.put(this, :red, 0)
    JR.put(this, :green, 0)
    JR.put(this, :blue, 0)
    JR.put(this, :alpha, 0)
        
        
        
        
        
        
        
        
        
        
    nil
  end


  def jinit(this, p_alphaValue, p_value, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :value, p_value)
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :name, JR.lget(f, :name))
        JR.lset(f, :tempValue, 0)
        JR.lset(f, :basicColorUtil, BasicColorUtil.jm_getInstance())
        if JR.get(JR.lget(f, :basicColorUtil), :isAlpha) do
            if JR.get(JR.lget(f, :basicColorUtil), :ffOpaque) do
                JR.lset(f, :tempValue, Bitwise.bor(JR.lget(f, :alphaValue), JR.lget(f, :value)))
            else
                JR.lset(f, :tempValue, Bitwise.bor(0x00000000, JR.lget(f, :value)))
            end
        else
            JR.lset(f, :tempValue, JR.lget(f, :value))
        end
        JR.lset(f, :alphaInt, (Bitwise.band((Bitwise.bsr(JR.lget(f, :tempValue), 24)), 255)))
        JR.put(this, :alpha, JR.int16(JR.lget(f, :alphaInt)))
        JR.put(this, :alphaComponent, (((JR.lget(f, :alphaInt) * 1.0)) / 255.0))
        JR.lset(f, :redInt, (Bitwise.band((Bitwise.bsr(JR.lget(f, :tempValue), 16)), 255)))
        JR.put(this, :red, JR.int16(JR.lget(f, :redInt)))
        JR.put(this, :redComponent, (((JR.lget(f, :redInt) * 1.0)) / 255.0))
        JR.lset(f, :greenInt, (Bitwise.band((Bitwise.bsr(JR.lget(f, :tempValue), 8)), 255)))
        JR.put(this, :green, JR.int16(JR.lget(f, :greenInt)))
        JR.put(this, :greenComponent, (((JR.lget(f, :greenInt) * 1.0)) / 255.0))
        JR.lset(f, :blueInt, (Bitwise.band((JR.lget(f, :tempValue)), 255)))
        JR.put(this, :blue, JR.int16(JR.lget(f, :blueInt)))
        JR.put(this, :blueComponent, (((JR.lget(f, :blueInt) * 1.0)) / 255.0))
        JR.put(this, :value, JR.lget(f, :tempValue))
    end)
  end

  def jnew(p_alphaValue, p_value, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_alphaValue, p_value, p_name)
    this
  end


  def jm_intValue(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_toInt(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :value)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["BasicColor: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Alpha: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :alpha)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Red: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :red)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Green: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :green)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Blue: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendshort, [JR.get(this, :blue)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" Value: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.get(this, :value)])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_getRedComponent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :redComponent)})
    end)
  end


  def jm_getGreenComponent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :greenComponent)})
    end)
  end


  def jm_getBlueComponent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :blueComponent)})
    end)
  end


  def jm_getAlphaComponent(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :alphaComponent)})
    end)
  end
end


