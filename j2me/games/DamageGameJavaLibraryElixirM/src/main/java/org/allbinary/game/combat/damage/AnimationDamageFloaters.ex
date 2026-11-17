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

defmodule AnimationDamageFloaters do
  def jsuper(), do: DamageFloaters

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :layerInterface, nil)
    JR.put(this, :animationInterfaceArray, nil)
    JR.put(this, :circularIndexUtil, nil)
    JR.put(this, :dx, 0)
    JR.put(this, :dy, 0)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
        
        
        
        
    nil
  end


  def jinit(this, p_layerInterface, p_animationInterfaceArray, p_dx, p_dy) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :animationInterfaceArray, p_animationInterfaceArray)
      JR.lset(f, :dx, p_dx)
      JR.lset(f, :dy, p_dy)
      DamageFloaters.jinit(this)
      jinitfields(this)
        JR.put(this, :animationInterfaceArray, JR.lget(f, :animationInterfaceArray))
        JR.lset(f, :index, JR.int32(JR.alength(JR.get(this, :animationInterfaceArray)) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_setFrame, [(JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)), :jm_getSize, []) - 1)])
        end)
        JR.put(this, :layerInterface, JR.lget(f, :layerInterface))
        JR.put(this, :circularIndexUtil, CircularIndexUtil.jm_createInstance(JR.alength(JR.get(this, :animationInterfaceArray))))
        JR.put(this, :dx, JR.lget(f, :dx))
        JR.put(this, :dy, JR.lget(f, :dy))
    end)
  end

  def jnew(p_layerInterface, p_animationInterfaceArray, p_dx, p_dy) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerInterface, p_animationInterfaceArray, p_dx, p_dy)
    this
  end


  def jm_add(this, p_damage) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
        JR.lset(f, :i, JR.call(JR.get(this, :circularIndexUtil), :jm_getIndex, []))
        JR.call(JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :i)), :jm_setFrame, [0])
        JR.call(JR.get(this, :circularIndexUtil), :jm_next, [])
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        try do
            JR.lset(f, :viewPosition, JR.call(JR.get(this, :layerInterface), :jm_getViewPosition, []))
            JR.lset(f, :x, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
            JR.lset(f, :y, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.get(this, :animationInterfaceArray))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :animationInterface, JR.aget(JR.get(this, :animationInterfaceArray), JR.lget(f, :index)))
                if (JR.call(JR.lget(f, :animationInterface), :jm_getFrame, []) < (JR.call(JR.lget(f, :animationInterface), :jm_getAnimationSize, []) - 1)) do
                    JR.lset(f, :delta, (JR.call(JR.lget(f, :animationInterface), :jm_getFrame, []) * 20))
                    JR.call(JR.lget(f, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.int32(JR.lget(f, :x) + JR.get(this, :dx)), JR.int32(JR.int32(JR.lget(f, :y) - JR.lget(f, :delta)) + JR.get(this, :dy))])
                    JR.call(JR.lget(f, :animationInterface), :jm_nextFrame, [])
                end
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.lset(f, :canvasStrings, CanvasStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :canvasStrings), :PAINT), JR.lget(f, :e)])
        end
    end)
  end
end


