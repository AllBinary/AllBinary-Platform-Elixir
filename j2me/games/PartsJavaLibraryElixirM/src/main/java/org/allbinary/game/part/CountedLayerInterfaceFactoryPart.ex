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
# package org.allbinary.game.part

defmodule CountedLayerInterfaceFactoryPart do
  def jsuper(), do: JObject
def jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY(), do: JR.static_get(__MODULE__, :NULL_COUNTED_LAYER_INTERFACE_FACTORY, fn -> CountedLayerInterfaceFactoryPart.jnew(0, CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()) end)
  def jstatic_set_NULL_COUNTED_LAYER_INTERFACE_FACTORY(value), do: JR.static_put(__MODULE__, :NULL_COUNTED_LAYER_INTERFACE_FACTORY, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :updateMyFontProcessor, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :animationInterface, nil)
    JR.put(this, :total, 0)
    JR.put(this, :totalString, nil)
    JR.put(this, :xOffset, 0)
    JR.put(this, :countedPickedUpLayerInterfaceFactory, nil)
    JR.put(this, :primitiveLongUtil, nil)
        JR.put(this, :updateMyFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
        JR.put(this, :animationInterface, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        JR.put(this, :total, 0)
        JR.put(this, :totalString, JR.get(NullUtil.jm_getInstance(), :NULL_CHAR_ARRAY))
        JR.put(this, :xOffset, 0)
        JR.put(this, :countedPickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY())
        
    nil
  end


  def jinit(this, p_total, p_countedPickedUpLayerInterfaceFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
      JR.lset(f, :countedPickedUpLayerInterfaceFactory, p_countedPickedUpLayerInterfaceFactory)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :primitiveLongUtil, PrimitiveLongUtil.jm_createPowerOfTen(1000))
        JR.call(this, :jm_init, [JR.lget(f, :total), JR.lget(f, :countedPickedUpLayerInterfaceFactory)])
    end)
  end

  def jnew(p_total, p_countedPickedUpLayerInterfaceFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_total, p_countedPickedUpLayerInterfaceFactory)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.call(this, :jm_setXOffset, [(JR.call(JR.lget(f, :font), :jm_charsWidth, [JR.get(this, :totalString), 0, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCurrentTotalDigits, [])]) + (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_getSize, []), 1)))])
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_init(this, p_total, p_countedPickedUpLayerInterfaceFactory) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
      JR.lset(f, :countedPickedUpLayerInterfaceFactory, p_countedPickedUpLayerInterfaceFactory)
        JR.call(this, :jm_setCountedPickedUpLayerInterfaceFactory, [JR.lget(f, :countedPickedUpLayerInterfaceFactory)])
        JR.put(this, :total, JR.lget(f, :total))
    end)
  end


  def jm_getInstance(this, p_hashtable, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        if (JR.get(this, :total) > 0) do
            JR.call(this, :jm_setTotal, [JR.int32(JR.get(this, :total) - 1)])
            throw({:jreturn, JR.call(JR.call(this, :jm_getCountedPickedUpLayerInterfaceFactory, []), :jm_getNextInstance, [JR.lget(f, :hashtable), JR.lget(f, :x), JR.lget(f, :y), JR.lget(f, :z)])})
        else
            throw({:jexception, JR.exception("Exception", "No more left. Could use a listener to automatically remove")})
        end
    end)
  end


  def jm_getTotal(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :total)})
    end)
  end


  def jm_setTotal(this, p_total) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
        JR.put(this, :total, JR.lget(f, :total))
        JR.put(this, :totalString, JR.call(JR.get(this, :primitiveLongUtil), :jm_getCharArray, [JR.lget(f, :total)]))
        JR.put(this, :myFontProcessor, JR.get(this, :updateMyFontProcessor))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        nil
    end)
  end


  def jm_getAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationInterface)})
    end)
  end


  def jm_setAnimationInterface(this, p_animationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        JR.put(this, :animationInterface, JR.lget(f, :animationInterface))
    end)
  end


  def jm_getXOffset(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :xOffset)})
    end)
  end


  def jm_setXOffset(this, p_totalStringWidth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :totalStringWidth, p_totalStringWidth)
        JR.put(this, :xOffset, JR.lget(f, :totalStringWidth))
    end)
  end


  def jm_getTotalString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :totalString)})
    end)
  end


  def jm_getCountedPickedUpLayerInterfaceFactory(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :countedPickedUpLayerInterfaceFactory)})
    end)
  end


  def jm_setCountedPickedUpLayerInterfaceFactory(this, p_countedPickedUpLayerInterfaceFactory) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :countedPickedUpLayerInterfaceFactory, p_countedPickedUpLayerInterfaceFactory)
        JR.put(this, :countedPickedUpLayerInterfaceFactory, JR.lget(f, :countedPickedUpLayerInterfaceFactory))
    end)
  end
end


