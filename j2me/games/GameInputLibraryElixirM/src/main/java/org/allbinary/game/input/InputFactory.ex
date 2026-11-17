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
# package org.allbinary.game.input

defmodule InputFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :KEY_CODE_LABEL, nil)
    JR.put(this, :DEVICE_ID_LABEL, nil)
    JR.put(this, :MAX, 0)
    JR.put(this, :inputIntegerArray, nil)
    JR.put(this, :NO_INPUT, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :KEY_CODE_LABEL, "KeyCode: ")
        JR.put(this, :DEVICE_ID_LABEL, "DeviceId: ")
        JR.put(this, :MAX, JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_getMin, []))
        JR.put(this, :inputIntegerArray, JR.anew(JR.get(this, :MAX), nil))
        JR.put(this, :NO_INPUT, Input.jnew(0, JR.get(JR.get(this, :commonStrings), :UNKNOWN)))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (InputFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            InputFactory.jstatic_set_instance(InputFactory.jnew())
        end
        throw({:jreturn, InputFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :size, JR.alength(JR.get(this, :inputIntegerArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :inputIntegerArray), JR.lget(f, :index), JR.get(this, :NO_INPUT))
        end)
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_add(this, p_id, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :input, p_input)
        JR.aset(JR.get(this, :inputIntegerArray), JR.lget(f, :id), JR.lget(f, :input))
    end)
  end


  def jm_getInstanceById(this, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        if (JR.lget(f, :id) < 0) do
            JR.lset(f, :id, -JR.lget(f, :id))
        end
        if (JR.lget(f, :id) > JR.alength(JR.get(this, :inputIntegerArray))) do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Warning id: "]), :jm_appendint, [JR.lget(f, :id)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :GET_INSTANCE)])
            throw({:jreturn, JR.get(this, :NO_INPUT)})
        end
        throw({:jreturn, JR.aget(JR.get(this, :inputIntegerArray), JR.lget(f, :id))})
    end)
  end
end


