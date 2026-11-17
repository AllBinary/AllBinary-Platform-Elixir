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
# package org.allbinary.game.combat.damage

defmodule PtsDamageFloaters do
  def jsuper(), do: DamageFloaters
def jstatic_basicColorArrayIndexer(), do: JR.static_get(__MODULE__, :basicColorArrayIndexer, fn -> BasicColorArrayIndexer.jnew(JR.afrom([JR.get(BasicColorFactory.jm_getInstance(), :WHITE), JR.get(BasicColorFactory.jm_getInstance(), :RED), JR.get(BasicColorFactory.jm_getInstance(), :YELLOW), JR.get(BasicColorFactory.jm_getInstance(), :BLUE)])) end)
  def jstatic_set_basicColorArrayIndexer(value), do: JR.static_put(__MODULE__, :basicColorArrayIndexer, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicSetColorUtil, nil)
    JR.put(this, :layerInterface, nil)
    JR.put(this, :lastDamage, nil)
    JR.put(this, :lastDamageString, nil)
    JR.put(this, :lastDamageStringSizeArray, nil)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :primitiveLongUtil, nil)
    JR.put(this, :myRandomFactory, nil)
        JR.put(this, :basicSetColorUtil, BasicColorSetUtil.jm_getInstance())
        
        JR.put(this, :lastDamage, JR.anew(5, 0))
        JR.put(this, :lastDamageString, JR.anew_of(5, fn -> JR.anew(0, 0) end))
        JR.put(this, :lastDamageStringSizeArray, JR.anew(5, 0))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(5))
        
        JR.put(this, :myRandomFactory, MyRandomFactory.jm_getInstance())
    nil
  end


  def jinit(this, p_layerInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      DamageFloaters.jinit(this)
      jinitfields(this)
        JR.put(this, :primitiveLongUtil, PrimitiveLongUtil.jm_createPowerOfTen(100000))
        JR.put(this, :layerInterface, JR.lget(f, :layerInterface))
        JR.lset(f, :CHAR_ARRAY, JR.call(CharArrayFactory.jm_getInstance(), :jm_getZeroCharArray, []))
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :lastDamageString)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.aset(JR.get(this, :lastDamageString), JR.lget(f, :index), JR.lget(f, :CHAR_ARRAY))
        end)
    end)
  end

  def jnew(p_layerInterface) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface)
    this
  end


  def jm_add(this, p_damage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
        JR.lset(f, :index, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.aset(JR.get(this, :lastDamage), JR.lget(f, :index), JR.lget(f, :damage))
        JR.aset(JR.get(this, :lastDamageString), JR.lget(f, :index), JR.call(JR.get(this, :primitiveLongUtil), :jm_getCharArray, [JR.aget(JR.get(this, :lastDamage), JR.lget(f, :index))]))
        JR.aset(JR.get(this, :lastDamageStringSizeArray), JR.lget(f, :index), JR.call(JR.get(this, :primitiveLongUtil), :jm_getCurrentTotalDigits, []))
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(JR.get(this, :layerInterface), :jm_getViewPosition, []))
        JR.lset(f, :x, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
        JR.lset(f, :y, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :lastDamage)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            if (JR.aget(JR.get(this, :lastDamage), JR.lget(f, :index)) != 0) do
                JR.lset(f, :delta, JR.int32(10 * (JR.int32(JR.lget(f, :index) + 2))))
                JR.call(JR.get(this, :basicSetColorUtil), :jm_setBasicColorP, [JR.lget(f, :graphics), JR.call(PtsDamageFloaters.jstatic_basicColorArrayIndexer(), :jm_get, [])])
                JR.call(JR.lget(f, :graphics), :jm_drawChars, [JR.aget(JR.get(this, :lastDamageString), JR.lget(f, :index)), 0, JR.aget(JR.get(this, :lastDamageStringSizeArray), JR.lget(f, :index)), (JR.lget(f, :x) - JR.call(JR.get(this, :myRandomFactory), :jm_getNextInt, [JR.lget(f, :delta)])), JR.int32(JR.lget(f, :y) - JR.lget(f, :delta)), 0])
                JR.call(PtsDamageFloaters.jstatic_basicColorArrayIndexer(), :jm_next, [])
            end
            JR.aset(JR.get(this, :lastDamage), JR.lget(f, :index), 0)
        end)
    end)
  end
end


