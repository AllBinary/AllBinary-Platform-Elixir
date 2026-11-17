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
# package org.allbinary.logic.math

defmodule SmallLongFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> SmallLongFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NEGATIVE_MAX, 0)
    JR.put(this, :POSITIVE_MAX, 0)
    JR.put(this, :INTEGER_ARRAY, nil)
    JR.put(this, :STRING_ARRAY, nil)
    JR.put(this, :MIN, 0)
    JR.put(this, :lastMin, 0)
    JR.put(this, :lastNegativeMin, 0)
        JR.put(this, :NEGATIVE_MAX, 500)
        JR.put(this, :POSITIVE_MAX, 0x2D1)
        JR.put(this, :INTEGER_ARRAY, JR.anew(JR.int32(JR.get(this, :NEGATIVE_MAX) + JR.get(this, :POSITIVE_MAX)), nil))
        JR.put(this, :STRING_ARRAY, JR.anew(JR.int32(JR.get(this, :NEGATIVE_MAX) + JR.get(this, :POSITIVE_MAX)), nil))
        JR.put(this, :MIN, 0)
        JR.put(this, :lastMin, 0)
        JR.put(this, :lastNegativeMin, 0)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, SmallLongFactory.jstatic_instance()})
    end)
  end


  def jm_initWithRange(this, p_value, p_negativeValue) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :negativeValue, p_negativeValue)
        JR.lset(f, :index, JR.int32(JR.lget(f, :value) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= JR.get(this, :lastMin)) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :INTEGER_ARRAY), JR.int32(JR.lget(f, :index) + JR.get(this, :NEGATIVE_MAX)), JR.lget(f, :index))
        end)
        JR.lset(f, :index, JR.int32(JR.lget(f, :negativeValue) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= JR.get(this, :lastNegativeMin)) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :INTEGER_ARRAY), JR.lget(f, :index), -JR.lget(f, :index))
        end)
        if (JR.get(this, :lastMin) < JR.lget(f, :value)) do
            JR.put(this, :lastMin, JR.lget(f, :value))
            JR.put(this, :MIN, JR.lget(f, :value))
        end
        if (JR.get(this, :lastNegativeMin) < JR.lget(f, :negativeValue)) do
            JR.put(this, :lastNegativeMin, JR.lget(f, :negativeValue))
        end
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if (JR.aget(JR.get(this, :INTEGER_ARRAY), 0) == nil) do
            if ((JR.get(this, :lastMin) < JR.get(this, :POSITIVE_MAX)) || (JR.get(this, :lastNegativeMin) < JR.get(this, :NEGATIVE_MAX))) do
                JR.lset(f, :index, JR.int32(JR.get(this, :POSITIVE_MAX) - 1))
                JR.jfor(fn -> (JR.lget(f, :index) >= JR.get(this, :lastMin)) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                    JR.aset(JR.get(this, :INTEGER_ARRAY), JR.int32(JR.lget(f, :index) + JR.get(this, :NEGATIVE_MAX)), JR.lget(f, :index))
                end)
                JR.lset(f, :index, JR.int32(JR.get(this, :NEGATIVE_MAX) - 1))
                JR.jfor(fn -> (JR.lget(f, :index) >= JR.get(this, :lastNegativeMin)) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
                    JR.aset(JR.get(this, :INTEGER_ARRAY), JR.lget(f, :index), -JR.lget(f, :index))
                end)
                JR.put(this, :lastMin, JR.get(this, :POSITIVE_MAX))
                JR.put(this, :lastNegativeMin, JR.get(this, :NEGATIVE_MAX))
            end
        end
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


  def jm_getInstanceNoThrow(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        if (JR.int64(JR.lget(f, :index) + JR.get(this, :NEGATIVE_MAX)) > JR.int32(JR.alength(JR.get(this, :INTEGER_ARRAY)) - 1)) do
            throw({:jreturn, JR.aget(JR.get(this, :INTEGER_ARRAY), JR.int32(-1 + JR.get(this, :NEGATIVE_MAX)))})
        end
        throw({:jreturn, JR.aget(JR.get(this, :INTEGER_ARRAY), JR.int32((JR.int32(JR.lget(f, :index))) + JR.get(this, :NEGATIVE_MAX)))})
    end)
  end


  def jm_getString(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.lset(f, :i, JR.int32(JR.lget(f, :index) + JR.get(this, :NEGATIVE_MAX)))
        if (JR.aget(JR.get(this, :STRING_ARRAY), JR.lget(f, :i)) == nil) do
            JR.aset(JR.get(this, :STRING_ARRAY), JR.lget(f, :i), JR.call(JR.aget(JR.get(this, :INTEGER_ARRAY), JR.lget(f, :i)), :jm_toString, []))
        end
        throw({:jreturn, JR.aget(JR.get(this, :STRING_ARRAY), JR.lget(f, :i))})
    end)
  end
end


