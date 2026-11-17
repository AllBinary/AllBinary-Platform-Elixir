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

defmodule CommonButtons do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CommonButtons.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :STANDARD_BUTTON_SIZE, 0)
    JR.put(this, :NORMAL_BUTTON, nil)
    JR.put(this, :LARGE_BUTTON, nil)
        
        
        
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CommonButtons.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :displayInfo, DisplayInfoSingleton.jm_getInstance())
        JR.lset(f, :commonButtonSize, 128)
        JR.jwhile(fn -> (JR.lget(f, :commonButtonSize) > 64) end, fn ->
            JR.lset(f, :totalColumns, (JR.call(JR.lget(f, :displayInfo), :jm_getLastWidth, []) / JR.lget(f, :commonButtonSize)))
            JR.lset(f, :totalRows, (JR.call(JR.lget(f, :displayInfo), :jm_getLastHeight, []) / JR.lget(f, :commonButtonSize)))
            JR.lset(f, :max, JR.lget(f, :totalColumns))
            if (JR.lget(f, :totalRows) > JR.lget(f, :max)) do
                JR.lset(f, :max, JR.lget(f, :totalRows))
            end
            if (JR.lget(f, :max) > 9) do
                throw(:jbreak)
            end
            JR.lset(f, :commonButtonSize, Bitwise.bsr(JR.lget(f, :commonButtonSize), 1))
        end)
        JR.put(this, :STANDARD_BUTTON_SIZE, JR.lget(f, :commonButtonSize))
        JR.put(this, :NORMAL_BUTTON, Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), JR.get(this, :STANDARD_BUTTON_SIZE), JR.get(this, :STANDARD_BUTTON_SIZE)))
        JR.put(this, :LARGE_BUTTON, Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), JR.int32(Bitwise.bsl(JR.get(this, :STANDARD_BUTTON_SIZE), 1)), JR.int32(Bitwise.bsl(JR.get(this, :STANDARD_BUTTON_SIZE), 1))))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


