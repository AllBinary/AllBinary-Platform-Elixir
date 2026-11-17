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

defmodule SmallBasicColorCacheFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SmallBasicColorCacheFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :SIZE, 0)
    JR.put(this, :INDEX_TO_COLOR, nil)
    JR.put(this, :BASIC_COLOR_ARRAY, nil)
    JR.put(this, :colorIndex, 0)
        JR.put(this, :SIZE, 255)
        JR.put(this, :INDEX_TO_COLOR, JR.anew(JR.get(this, :SIZE), 0))
        JR.put(this, :BASIC_COLOR_ARRAY, JR.anew(JR.get(this, :SIZE), nil))
        JR.put(this, :colorIndex, 0)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SmallBasicColorCacheFactory.jstatic_instance()})
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


  def jm_add(this, p_basicDefaultColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicDefaultColor, p_basicDefaultColor)
        JR.aset(JR.get(this, :BASIC_COLOR_ARRAY), JR.get(this, :colorIndex), JR.lget(f, :basicDefaultColor))
        JR.aset(JR.get(this, :INDEX_TO_COLOR), JR.get(this, :colorIndex), JR.call(JR.lget(f, :basicDefaultColor), :jm_intValue, []))
        JR.postinc(this, :colorIndex, 1)
    end)
  end


  def jm_getAndOrCreate(this, p_colorAsInt) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :colorAsInt, p_colorAsInt)
        JR.lset(f, :basicColor, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :SIZE)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            if (JR.aget(JR.get(this, :INDEX_TO_COLOR), JR.lget(f, :index)) == JR.lget(f, :colorAsInt)) do
                throw({:jreturn, JR.aget(JR.get(this, :BASIC_COLOR_ARRAY), JR.lget(f, :index))})
            end
        end)
        JR.lset(f, :ALPHA_MASK, 0xFF000000)
        JR.lset(f, :basicColor, JR.call(BasicColorFactory.jm_getInstance(), :jm_createInstanceAN, [Bitwise.band(JR.lget(f, :colorAsInt), JR.lget(f, :ALPHA_MASK)), Bitwise.band(JR.lget(f, :colorAsInt), 0x00FFFFFF), JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)]))
        JR.call(this, :jm_add, [JR.lget(f, :basicColor)])
        throw({:jreturn, JR.lget(f, :basicColor)})
    end)
  end
end


