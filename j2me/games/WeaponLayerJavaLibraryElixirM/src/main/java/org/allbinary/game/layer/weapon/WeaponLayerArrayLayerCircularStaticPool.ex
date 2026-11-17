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

defmodule WeaponLayerArrayLayerCircularStaticPool do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> WeaponLayerArrayLayerCircularStaticPool.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :MAX, 0)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :WEAPONLAYER_ARRAY, nil)
    JR.put(this, :TWO_WEAPONLAYER_ARRAY, nil)
    JR.put(this, :THREE_WEAPONLAYER_ARRAY, nil)
        JR.put(this, :MAX, 5)
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.get(this, :MAX)))
        JR.put(this, :WEAPONLAYER_ARRAY, nil)
        JR.put(this, :TWO_WEAPONLAYER_ARRAY, nil)
        JR.put(this, :THREE_WEAPONLAYER_ARRAY, nil)
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
        throw({:jreturn, WeaponLayerArrayLayerCircularStaticPool.jstatic_instance()})
    end)
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :WEAPONLAYER_ARRAY, JR.anew(JR.int32(JR.get(this, :MAX) * 2), nil))
        JR.lset(f, :TWO_WEAPONLAYER_ARRAY, JR.anew(JR.get(this, :MAX), nil))
        JR.lset(f, :THREE_WEAPONLAYER_ARRAY, JR.anew(JR.get(this, :MAX), nil))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :MAX)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.lget(f, :WEAPONLAYER_ARRAY), JR.lget(f, :index), JR.anew(1, nil))
            JR.aset(JR.lget(f, :TWO_WEAPONLAYER_ARRAY), JR.lget(f, :index), JR.anew(2, nil))
            JR.aset(JR.lget(f, :THREE_WEAPONLAYER_ARRAY), JR.lget(f, :index), JR.anew(3, nil))
        end)
        JR.put(this, :WEAPONLAYER_ARRAY, JR.lget(f, :WEAPONLAYER_ARRAY))
        JR.put(this, :TWO_WEAPONLAYER_ARRAY, JR.lget(f, :TWO_WEAPONLAYER_ARRAY))
        JR.put(this, :THREE_WEAPONLAYER_ARRAY, JR.lget(f, :THREE_WEAPONLAYER_ARRAY))
    end)
  end


  def jm_getWeaponLayerArrays(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        if (JR.lget(f, :size) == 1) do
            throw({:jreturn, JR.get(this, :WEAPONLAYER_ARRAY)})
        else
            if (JR.lget(f, :size) == 2) do
            throw({:jreturn, JR.get(this, :TWO_WEAPONLAYER_ARRAY)})
        else
            if (JR.lget(f, :size) == 3) do
            throw({:jreturn, JR.get(this, :THREE_WEAPONLAYER_ARRAY)})
        end
        end
        end
        throw({:jexception, JR.exception("RuntimeException", "")})
    end)
  end


  def jm_getInstanceArray(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        JR.lset(f, :weaponLayerArray, JR.aget(JR.call(this, :jm_getWeaponLayerArrays, [JR.lget(f, :size)]), JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, [])))
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
        throw({:jreturn, JR.lget(f, :weaponLayerArray)})
    end)
  end
end


