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

defmodule BasicColorFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicColorFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NULL_COLOR, nil)
    JR.put(this, :TAN, nil)
    JR.put(this, :SKIN_PINK, nil)
    JR.put(this, :RED, nil)
    JR.put(this, :LIGHT_RED, nil)
    JR.put(this, :DARK_GREEN, nil)
    JR.put(this, :GREEN, nil)
    JR.put(this, :LIGHT_GREEN, nil)
    JR.put(this, :PURPLE, nil)
    JR.put(this, :BLUE, nil)
    JR.put(this, :LIGHT_BLUE, nil)
    JR.put(this, :VERY_LIGHT_BLUE, nil)
    JR.put(this, :PUCE, nil)
    JR.put(this, :AQUA, nil)
    JR.put(this, :YELLOW, nil)
    JR.put(this, :PINK, nil)
    JR.put(this, :BLACK, nil)
    JR.put(this, :GREY, nil)
    JR.put(this, :LIGHT_GREY, nil)
    JR.put(this, :DARK_GREY, nil)
    JR.put(this, :ORANGE, nil)
    JR.put(this, :BROWN, nil)
    JR.put(this, :WHITE, nil)
    JR.put(this, :TRANSPARENT_COLOR, nil)
    JR.put(this, :TRANSPARENT_GREY, nil)
    JR.put(this, :TRANSPARENT_BLACK, nil)
    JR.put(this, :TRANSPARENT_RED, nil)
    JR.put(this, :CLEAR_COLOR, nil)
    JR.put(this, :BORDER_COLOR, nil)
        JR.put(this, :NULL_COLOR, JR.call(this, :jm_createInstanceARGB, [255, 255, 255, 255, "null color"]))
        JR.put(this, :TAN, JR.call(this, :jm_createInstance, [0xE9D8B5]))
        JR.put(this, :SKIN_PINK, JR.call(this, :jm_createInstance, [0xFDCECE]))
        JR.put(this, :RED, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0xFF0000, "red"]))
        JR.put(this, :LIGHT_RED, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0xFFA0A0, "light red"]))
        JR.put(this, :DARK_GREEN, JR.call(this, :jm_createInstance, [0x00FF00]))
        JR.put(this, :GREEN, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0x00DD00, "green"]))
        JR.put(this, :LIGHT_GREEN, JR.call(this, :jm_createInstance, [0x007700]))
        JR.put(this, :PURPLE, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0x400040, "purple"]))
        JR.put(this, :BLUE, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0x0000FF, "blue"]))
        JR.put(this, :LIGHT_BLUE, JR.call(this, :jm_createInstance, [0x00aaff]))
        JR.put(this, :VERY_LIGHT_BLUE, JR.call(this, :jm_createInstance, [0x000033]))
        JR.put(this, :PUCE, JR.call(this, :jm_createInstance, [0xFF00AA]))
        JR.put(this, :AQUA, JR.call(this, :jm_createInstance, [0x00FFFF]))
        JR.put(this, :YELLOW, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0xFFFF00, "yellow"]))
        JR.put(this, :PINK, JR.call(this, :jm_createInstance, [0xFF00FF]))
        JR.put(this, :BLACK, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0x000000, "black"]))
        JR.put(this, :GREY, JR.call(this, :jm_createInstanceAN, [JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), 0xAAAAAA, "grey"]))
        JR.put(this, :LIGHT_GREY, JR.call(this, :jm_createInstance, [0xC0C0C0]))
        JR.put(this, :DARK_GREY, JR.call(this, :jm_createInstance, [0x404040]))
        JR.put(this, :ORANGE, JR.call(this, :jm_createInstance, [0xe07718]))
        JR.put(this, :BROWN, JR.call(this, :jm_createInstance, [0x956B00]))
        JR.put(this, :WHITE, JR.call(this, :jm_createInstance, [0xFFFFFF]))
        JR.put(this, :TRANSPARENT_COLOR, JR.call(this, :jm_createInstanceAN, [0x00000000, 0x000000, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        JR.put(this, :TRANSPARENT_GREY, JR.call(this, :jm_createInstanceAN, [0x52000000, 0xECECEC, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        JR.put(this, :TRANSPARENT_BLACK, JR.call(this, :jm_createInstanceAN, [0x52000000, 0x000000, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        JR.put(this, :TRANSPARENT_RED, JR.call(this, :jm_createInstanceAN, [0x52000000, 0xFF0000, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        JR.put(this, :CLEAR_COLOR, JR.get(this, :BLACK))
        JR.put(this, :BORDER_COLOR, JR.get(this, :WHITE))
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
        throw({:jreturn, BasicColorFactory.jstatic_instance()})
    end)
  end


  def jm_createInstance(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        throw({:jreturn, BasicColor.jnew(JR.get(BasicColorUtil.jm_getInstance(), :ALPHA), JR.lget(f, :value), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))})
    end)
  end


  def jm_createInstanceA(this, p_alphaValue, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :value, p_value)
        throw({:jreturn, BasicColor.jnew(JR.lget(f, :alphaValue), JR.lget(f, :value), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))})
    end)
  end


  def jm_createInstanceAN(this, p_alphaValue, p_value, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :value, p_value)
      JR.lset(f, :name, p_name)
        throw({:jreturn, BasicColor.jnew(JR.lget(f, :alphaValue), JR.lget(f, :value), JR.lget(f, :name))})
    end)
  end


  def jm_createInstanceARGB(this, p_alphaValue, p_r, p_g, p_b, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :alphaValue, p_alphaValue)
      JR.lset(f, :r, p_r)
      JR.lset(f, :g, p_g)
      JR.lset(f, :b, p_b)
      JR.lset(f, :name, p_name)
        JR.lset(f, :ALPHA_MASK, 0xFF000000)
        throw({:jreturn, BasicColor.jnew(JR.lget(f, :alphaValue), JR.int32(JR.int32(JR.int32((Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :alphaValue), 24))), JR.lget(f, :ALPHA_MASK))) + (Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :r), 16))), 0x00FF0000))) + (Bitwise.band((JR.int32(Bitwise.bsl(JR.lget(f, :g), 8))), 0x0000FF00))) + (Bitwise.band(JR.lget(f, :b), 0x000000FF))), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))})
    end)
  end
end


