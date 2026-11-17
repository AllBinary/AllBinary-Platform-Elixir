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
# package org.allbinary.game.part.weapon

defmodule ArcedMultiBeamWeaponPart do
  def jsuper(), do: BasicWeaponPart

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :weaponLayerCircularStaticPool, nil)
    JR.put(this, :total, 0)
    JR.put(this, :TOTAL_ANGLE, 0)
        
        
        JR.put(this, :TOTAL_ANGLE, JR.int32(JR.get(AngleFactory.jm_getInstance(), :TOTAL_ANGLE)))
    nil
  end


  def jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_total, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :weaponLayerCircularStaticPool, p_weaponLayerCircularStaticPool)
      JR.lset(f, :total, p_total)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
        BasicWeaponPart.jinit(this, JR.lget(f, :animationInterface), JR.lget(f, :sourceLayerInterface), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface), JR.lget(f, :relativeRelationship))
        ArcedMultiBeamWeaponPart.jinitfields(this)
        JR.put(this, :total, JR.lget(f, :total))
        JR.put(this, :weaponLayerCircularStaticPool, JR.lget(f, :weaponLayerCircularStaticPool))
    end)
  end

  def jnew(p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_total, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_total, p_weaponProperties, p_scoreableInterface, p_relativeRelationship)
    this
  end


  def jm_processScore(this, p_allbinaryLayerManager, p_angle, p_otherAngle, p_weaponProperties, p_scoreableInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
        JR.lset(f, :increment, JR.int16((div((JR.int32(JR.get(this, :total) - 1)), JR.get(this, :TOTAL_ANGLE)))))
        JR.lset(f, :minAngle, JR.int16((JR.int32(JR.int32(JR.lget(f, :angle)) - (Bitwise.bsr((JR.int32(JR.int32(JR.lget(f, :increment)) * JR.get(this, :total))), 1))))))
        JR.lset(f, :next, 0)
        JR.lset(f, :weaponLayer, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :total)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :weaponLayer, JR.call(JR.get(this, :weaponLayerCircularStaticPool), :jm_getInstanceWeaponLayer, [JR.call(this, :jm_getOwnerLayerInterface, []), JR.call(JR.get(this, :relativeRelationship), :jm_getX, []), JR.call(JR.get(this, :relativeRelationship), :jm_getY, []), 0, (JR.int32(JR.lget(f, :minAngle) + JR.lget(f, :increment))), JR.int32(JR.lget(f, :otherAngle)), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface)]))
            JR.call(JR.lget(f, :allbinaryLayerManager), :jm_append, [JR.lget(f, :weaponLayer)])
            JR.lset(f, :next, JR.int32(JR.lget(f, :next) + JR.int32(JR.lget(f, :increment))))
        end)
    end)
  end
end


