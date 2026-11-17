# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

defmodule ChoiceGroupImageFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> ChoiceGroupImageFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :multiOff, nil)
    JR.put(this, :multiOn, nil)
    JR.put(this, :radioOff, nil)
    JR.put(this, :radioOn, nil)
    JR.put(this, :midpUtil, nil)
    JR.put(this, :imgMultiOffO, nil)
    JR.put(this, :imgMultiOnO, nil)
    JR.put(this, :imgRadioOffO, nil)
    JR.put(this, :imgRadioOnO, nil)
    JR.put(this, :imgMultiOff, nil)
    JR.put(this, :imgMultiOn, nil)
    JR.put(this, :imgRadioOff, nil)
    JR.put(this, :imgRadioOn, nil)
    JR.put(this, :imageArray, nil)
        JR.put(this, :multiOff, JR.afrom([JR.int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, JR.int8(-12), JR.int8(-117), 0, 0, 0, 6, 80, 76, 84, 69, JR.int8(-1), JR.int8(-1), JR.int8(-1), JR.int8(-69), JR.int8(-69), JR.int8(-69), JR.int8(-57), 75, JR.int8(-33), JR.int8(-8), 0, 0, 0, 30, 73, 68, 65, 84, 120, JR.int8(-38), 99, 96, 96, 96, 96, 12, 101, JR.int8(-8), JR.int8(-51), JR.int8(-32), JR.int8(-64), 32, JR.int8(-64), JR.int8(-60), JR.int8(-64), JR.int8(-64), JR.int8(-128), 11, 51, JR.int8(-122), 50, JR.int8(-4), 6, 0, 63, 116, 3, 1, 53, JR.int8(-108), 39, JR.int8(-26), 0, 0, 0, 0, 73, 69, 78, 68, JR.int8(-82), 66, 96, JR.int8(-126)]))
        JR.put(this, :multiOn, JR.afrom([JR.int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 10, 0, 0, 0, 11, 2, 3, 0, 0, 0, 59, 0, JR.int8(-12), JR.int8(-117), 0, 0, 0, 12, 80, 76, 84, 69, JR.int8(-1), JR.int8(-1), JR.int8(-1), JR.int8(-69), JR.int8(-69), JR.int8(-69), 106, 106, 106, 2, 2, 2, 106, JR.int8(-103), 14, JR.int8(-47), 0, 0, 0, 53, 73, 68, 65, 84, 120, JR.int8(-38), 99, 96, 96, 124, JR.int8(-64), JR.int8(-16), JR.int8(-1), JR.int8(-77), 3, JR.int8(-45), 65, JR.int8(-111), 15, 76, 12, 108, 12, 76, 12, JR.int8(-4), 12, 76, 12, 18, 12, 76, JR.int8(-68), 127, 24, JR.int8(-104), 126, 45, 96, 96, JR.int8(-7), JR.int8(-11), JR.int8(-109), JR.int8(-127), JR.int8(-23), JR.int8(-65), 3, 3, JR.int8(-29), 127, JR.int8(-122), JR.int8(-113), 0, 5, 37, 12, JR.int8(-34), 1, JR.int8(-99), JR.int8(-83), 100, 0, 0, 0, 0, 73, 69, 78, 68, JR.int8(-82), 66, 96, JR.int8(-126)]))
        JR.put(this, :radioOff, JR.afrom([JR.int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, JR.int8(-44), JR.int8(-62), JR.int8(-97), JR.int8(-75), 0, 0, 0, 9, 80, 76, 84, 69, JR.int8(-1), JR.int8(-1), JR.int8(-1), JR.int8(-69), JR.int8(-69), JR.int8(-69), 106, 106, 106, JR.int8(-44), 13, JR.int8(-1), JR.int8(-24), 0, 0, 0, 42, 73, 68, 65, 84, 120, JR.int8(-38), 99, 96, 90, JR.int8(-59), JR.int8(-64), 32, JR.int8(-63), 48, JR.int8(-127), 65, JR.int8(-127), 65, JR.int8(-127), 41, JR.int8(-127), JR.int8(-31), 5, 19, 3, 3, 3, 50, 102, 80, 96, 80, 96, JR.int8(-6), JR.int8(-63), 80, JR.int8(-64), JR.int8(-64), JR.int8(-76), JR.int8(-118), 1, 0, 113, 24, 5, 61, 73, JR.int8(-68), JR.int8(-100), 98, 0, 0, 0, 0, 73, 69, 78, 68, JR.int8(-82), 66, 96, JR.int8(-126)]))
        JR.put(this, :radioOn, JR.afrom([JR.int8(-119), 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 11, 0, 0, 0, 11, 2, 3, 0, 0, 0, JR.int8(-44), JR.int8(-62), JR.int8(-97), JR.int8(-75), 0, 0, 0, 12, 80, 76, 84, 69, JR.int8(-1), JR.int8(-1), JR.int8(-1), JR.int8(-69), JR.int8(-69), JR.int8(-69), 106, 106, 106, 2, 2, 2, 106, JR.int8(-103), 14, JR.int8(-47), 0, 0, 0, 50, 73, 68, 65, 84, 120, JR.int8(-38), 5, JR.int8(-63), 65, 13, 0, 32, 12, 4, JR.int8(-63), JR.int8(-19), JR.int8(-11), JR.int8(-117), 1, 18, 68, JR.int8(-100), 10, 52, 19, 94, 72, 64, 17, 101, JR.int8(-122), 44, JR.int8(-44), JR.int8(-29), 98, JR.int8(-52), 89, 77, JR.int8(-102), 40, 2, 85, JR.int8(-95), JR.int8(-73), JR.int8(-63), JR.int8(-104), JR.int8(-63), 37, JR.int8(-117), 15, JR.int8(-40), 119, 10, 41, 78, 26, JR.int8(-79), 59, 0, 0, 0, 0, 73, 69, 78, 68, JR.int8(-82), 66, 96, JR.int8(-126)]))
        JR.put(this, :midpUtil, MIDPUtil.jm_getInstance())
        JR.put(this, :imgMultiOffO, JR.call(JR.get(this, :midpUtil), :jm_createImageFromByteArray, [JR.get(this, :multiOff), 0, JR.alength(JR.get(this, :multiOff))]))
        JR.put(this, :imgMultiOnO, JR.call(JR.get(this, :midpUtil), :jm_createImageFromByteArray, [JR.get(this, :multiOn), 0, JR.alength(JR.get(this, :multiOn))]))
        JR.put(this, :imgRadioOffO, JR.call(JR.get(this, :midpUtil), :jm_createImageFromByteArray, [JR.get(this, :radioOff), 0, JR.alength(JR.get(this, :radioOff))]))
        JR.put(this, :imgRadioOnO, JR.call(JR.get(this, :midpUtil), :jm_createImageFromByteArray, [JR.get(this, :radioOn), 0, JR.alength(JR.get(this, :radioOn))]))
        JR.put(this, :imgMultiOff, JR.get(this, :imgMultiOffO))
        JR.put(this, :imgMultiOn, JR.get(this, :imgMultiOnO))
        JR.put(this, :imgRadioOff, JR.get(this, :imgRadioOffO))
        JR.put(this, :imgRadioOn, JR.get(this, :imgRadioOnO))
        JR.put(this, :imageArray, JR.afrom([JR.get(this, :imgMultiOff), JR.get(this, :imgMultiOn), JR.get(this, :imgRadioOff), JR.get(this, :imgRadioOn)]))
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
        throw({:jreturn, ChoiceGroupImageFactory.jstatic_instance()})
    end)
  end


  def jm_getImageArray(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :imageArray)})
    end)
  end


  def jm_init(this, p_imageArray) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :imageArray, p_imageArray)
        JR.put(this, :imgMultiOff, JR.aget(JR.lget(f, :imageArray), 0))
        JR.aset(JR.get(this, :imageArray), 0, JR.get(this, :imgMultiOff))
        JR.put(this, :imgMultiOn, JR.aget(JR.lget(f, :imageArray), 1))
        JR.aset(JR.get(this, :imageArray), 1, JR.get(this, :imgMultiOn))
        JR.put(this, :imgRadioOff, JR.aget(JR.lget(f, :imageArray), 2))
        JR.aset(JR.get(this, :imageArray), 2, JR.get(this, :imgRadioOff))
        JR.put(this, :imgRadioOn, JR.aget(JR.lget(f, :imageArray), 3))
        JR.aset(JR.get(this, :imageArray), 3, JR.get(this, :imgRadioOn))
    end)
  end
end


