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
# package org.allbinary.game.ag.ai.scroller

defmodule FlockingAI do
  def jsuper(), do: BasicAI

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :allowedDistance, 0)
        
    nil
  end


  def jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
      JR.lset(f, :gameInput, p_gameInput)
        BasicAI.jinit(this, JR.lget(f, :ownerLayerInterface), JR.lget(f, :gameInput))
        FlockingAI.jinitfields(this)
        JR.lset(f, :allowedDistance, JR.call(JR.lget(f, :hashtable), :jm_get, [BasePatrolAI.jstatic_MAX_DISTANCE()]))
        JR.put(this, :allowedDistance, JR.call(JR.lget(f, :allowedDistance), :jm_intValue, []))
    end)
  end

  def jnew(p_hashtable, p_ownerLayerInterface, p_gameInput) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_hashtable, p_ownerLayerInterface, p_gameInput)
    this
  end


  def jm_processAI(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        JR.lset(f, :maxDistance, 0)
        JR.lset(f, :farAllbinaryLayer, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
        JR.lset(f, :groupLayerManagerListener, GroupLayerManagerListener.jm_getInstance())
        JR.lset(f, :list, JR.call(JR.lget(f, :groupLayerManagerListener), :jm_getList, [JR.get(BasicGroupFactory.jm_getInstance(), :ENEMY)]))
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :allBinaryLayer, nil)
        JR.lset(f, :ownerLayerInterface, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :allBinaryLayer, JR.call(JR.lget(f, :list), :jm_get, [JR.lget(f, :index)]))
            if (JR.call(JR.lget(f, :allBinaryLayer), :jm_getType, []) != WeaponLayer.jm_getStaticType()) do
                JR.lset(f, :distance, JR.call(this, :jm_getXYDistance, [JR.lget(f, :allBinaryLayer)]))
                if (JR.lget(f, :distance) > JR.lget(f, :maxDistance)) do
                    JR.lset(f, :maxDistance, JR.lget(f, :distance))
                    JR.lset(f, :farAllbinaryLayer, JR.lget(f, :allBinaryLayer))
                    if (JR.lget(f, :distance) > JR.get(this, :allowedDistance)) do
                        throw(:jbreak)
                    end
                end
            end
        end)
        if (JR.lget(f, :maxDistance) > JR.get(this, :allowedDistance)) do
            if (JR.lget(f, :farAllbinaryLayer) != AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER()) do
                JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
                if (JR.call(JR.lget(f, :farAllbinaryLayer), :jm_getXP, []) < JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, [])) do
                    JR.call(this, :jm_processKeyAI, [Canvas.jstatic_LEFT()])
                else
                    if (JR.call(JR.lget(f, :farAllbinaryLayer), :jm_getXP, []) > JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, [])) do
                    JR.call(this, :jm_processKeyAI, [Canvas.jstatic_RIGHT()])
                else
                    if (JR.call(JR.lget(f, :farAllbinaryLayer), :jm_getYP, []) > JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, [])) do
                    JR.call(this, :jm_processKeyAI, [Canvas.jstatic_UP()])
                else
                    if (JR.call(JR.lget(f, :farAllbinaryLayer), :jm_getYP, []) < JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, [])) do
                    JR.call(this, :jm_processKeyAI, [Canvas.jstatic_DOWN()])
                end
                end
                end
                end
            end
        end
    end)
  end


  def jm_getXYDistance(this, p_allBinaryLayer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayer, p_allBinaryLayer)
        JR.lset(f, :ownerLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :xTotalDistance, (((JR.call(JR.lget(f, :allBinaryLayer), :jm_getXP, []) + JR.call(JR.lget(f, :allBinaryLayer), :jm_getHalfWidth, []))) - ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getXP, []) + JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHalfWidth, [])))))
        JR.lset(f, :yTotalDistance, (((JR.call(JR.lget(f, :allBinaryLayer), :jm_getYP, []) + JR.call(JR.lget(f, :allBinaryLayer), :jm_getHalfHeight, []))) - ((JR.call(JR.lget(f, :ownerLayerInterface), :jm_getYP, []) + JR.call(JR.lget(f, :ownerLayerInterface), :jm_getHalfHeight, [])))))
        JR.lset(f, :mathUtil, MathUtil.jm_getInstance())
        JR.lset(f, :totalDistance, (JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.lget(f, :xTotalDistance)]) + JR.call(JR.lget(f, :mathUtil), :jm_abs, [JR.lget(f, :yTotalDistance)])))
        throw({:jreturn, JR.lget(f, :totalDistance)})
    end)
  end
end


