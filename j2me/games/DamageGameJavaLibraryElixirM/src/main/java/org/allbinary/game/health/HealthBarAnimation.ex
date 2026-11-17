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
# package org.allbinary.game.health

defmodule HealthBarAnimation do
  def jsuper(), do: Animation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :basicColorFactory, nil)
    JR.put(this, :x2, 0)
    JR.put(this, :thickness, 0)
    JR.put(this, :location, 0)
    JR.put(this, :allbinaryLayer, nil)
        JR.put(this, :basicColorFactory, BasicColorFactory.jm_getInstance())
        JR.put(this, :x2, 0)
        JR.put(this, :thickness, 0)
        
        
    nil
  end


  def jinit(this, p_layerInterface, p_location) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :location, p_location)
      Animation.jinit(this)
      jinitfields(this)
        JR.put(this, :allbinaryLayer, JR.lget(f, :layerInterface))
        JR.put(this, :location, JR.lget(f, :location))
        JR.lset(f, :basicHudFactory, BasicHudFactory.jm_getInstance())
        if ((JR.get(this, :location) != JR.get(JR.lget(f, :basicHudFactory), :TOPLEFT)) && (JR.get(this, :location) != JR.get(JR.lget(f, :basicHudFactory), :BOTTOMLEFT))) do
            throw({:jexception, JR.exception("Exception", "Location Not Valid")})
        end
        if (JR.call(JR.lget(f, :layerInterface), :jm_getWidth, []) > 40) do
            JR.put(this, :thickness, 3)
        else
            if (JR.call(JR.lget(f, :layerInterface), :jm_getWidth, []) > 20) do
            JR.put(this, :thickness, 2)
        else
            JR.put(this, :thickness, 1)
        end
        end
    end)
  end

  def jnew(p_layerInterface, p_location) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface, p_location)
    this
  end


  def jm_onHealthChange(this, p_newX2) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newX2, p_newX2)
        JR.put(this, :x2, JR.lget(f, :newX2))
        JR.lset(f, :quarter, (Bitwise.bsr(JR.call(JR.get(this, :allbinaryLayer), :jm_getWidth, []), 2)))
        if (JR.get(this, :x2) > JR.int32(JR.lget(f, :quarter) * 3)) do
            JR.put(this, :basicColor, JR.get(JR.get(this, :basicColorFactory), :GREEN))
            JR.put(this, :colorP, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
        else
            if (JR.get(this, :x2) > JR.int32(JR.lget(f, :quarter) * 2)) do
            JR.put(this, :basicColor, JR.get(JR.get(this, :basicColorFactory), :YELLOW))
            JR.put(this, :colorP, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
        else
            if (JR.get(this, :x2) > JR.lget(f, :quarter)) do
            JR.put(this, :basicColor, JR.get(JR.get(this, :basicColorFactory), :ORANGE))
            JR.put(this, :colorP, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
        else
            JR.put(this, :basicColor, JR.get(JR.get(this, :basicColorFactory), :RED))
            JR.put(this, :colorP, JR.call(JR.get(this, :basicColor), :jm_intValue, []))
        end
        end
        end
    end)
  end


  def jm_getY(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :basicHudFactory, BasicHudFactory.jm_getInstance())
        if (JR.get(this, :location) == JR.get(JR.lget(f, :basicHudFactory), :TOPLEFT)) do
            throw({:jreturn, (JR.call(JR.call(JR.get(this, :allbinaryLayer), :jm_getViewPosition, []), :jm_getY, []) - 4)})
        else
            if (JR.get(this, :location) == JR.get(JR.lget(f, :basicHudFactory), :BOTTOMLEFT)) do
            throw({:jreturn, (JR.call(JR.call(JR.get(this, :allbinaryLayer), :jm_getViewPosition, []), :jm_getY2, []) + 4)})
        end
        end
        throw({:jreturn, -1})
    end)
  end
end


