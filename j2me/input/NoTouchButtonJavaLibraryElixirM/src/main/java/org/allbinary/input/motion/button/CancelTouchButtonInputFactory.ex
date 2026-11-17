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
# package org.allbinary.input.motion.button

defmodule CancelTouchButtonInputFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :cancelInputArray, nil)
        JR.put(this, :cancelInputArray, JR.anew(JR.get(InputFactory.jm_getInstance(), :MAX), nil))
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (CancelTouchButtonInputFactory.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            CancelTouchButtonInputFactory.jstatic_set_instance(CancelTouchButtonInputFactory.jnew())
        end
        throw({:jreturn, CancelTouchButtonInputFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :basicTouchInputFactory, BasicTouchInputFactory.jm_getInstance())
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :cancelInputArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :cancelInputArray), JR.lget(f, :index), JR.get(JR.lget(f, :basicTouchInputFactory), :NONE))
        end)
        JR.aset(JR.get(this, :cancelInputArray), JR.call(JR.get(JR.lget(f, :basicTouchInputFactory), :UP), :jm_getId, []), JR.get(JR.lget(f, :basicTouchInputFactory), :DOWN))
        JR.aset(JR.get(this, :cancelInputArray), JR.call(JR.get(JR.lget(f, :basicTouchInputFactory), :DOWN), :jm_getId, []), JR.get(JR.lget(f, :basicTouchInputFactory), :UP))
        JR.aset(JR.get(this, :cancelInputArray), JR.call(JR.get(JR.lget(f, :basicTouchInputFactory), :LEFT), :jm_getId, []), JR.get(JR.lget(f, :basicTouchInputFactory), :RIGHT))
        JR.aset(JR.get(this, :cancelInputArray), JR.call(JR.get(JR.lget(f, :basicTouchInputFactory), :RIGHT), :jm_getId, []), JR.get(JR.lget(f, :basicTouchInputFactory), :LEFT))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getCancel(this, p_touchButtonInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :touchButtonInput, p_touchButtonInput)
        throw({:jreturn, JR.aget(JR.get(this, :cancelInputArray), JR.call(JR.lget(f, :touchButtonInput), :jm_getId, []))})
    end)
  end
end


