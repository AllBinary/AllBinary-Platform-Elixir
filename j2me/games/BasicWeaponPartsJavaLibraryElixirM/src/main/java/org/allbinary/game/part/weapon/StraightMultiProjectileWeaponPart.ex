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

defmodule StraightMultiProjectileWeaponPart do
  def jsuper(), do: BasicWeaponPart

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :weaponLayerCircularStaticPool, nil)
    JR.put(this, :total, 0)
    JR.put(this, :noDecimalTrigTable, nil)
        
        
        JR.put(this, :noDecimalTrigTable, NoDecimalTrigTable.jm_getInstance())
    nil
  end


  def jm_createStraightMultiProjectileWeaponPart(p_animationInterface, p_weaponLayerCircularStaticPool) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :weaponLayerCircularStaticPool, p_weaponLayerCircularStaticPool)
        throw({:jreturn, StraightMultiProjectileWeaponPart.jnew(JR.lget(f, :animationInterface), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER(), JR.lget(f, :weaponLayerCircularStaticPool), 2, WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable.jm_getInstance(), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP())})
    end)
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
        StraightMultiProjectileWeaponPart.jinitfields(this)
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
        JR.lset(f, :sourceLayerInterface, JR.call(this, :jm_getOwnerLayerInterface, []))
        JR.lset(f, :reducedWidth, (((JR.call(JR.lget(f, :sourceLayerInterface), :jm_getWidth, []) * 8) / 10)))
        JR.lset(f, :halfWidth, (Bitwise.bsr(JR.lget(f, :reducedWidth), 1)))
        JR.lset(f, :x, JR.call(JR.get(this, :relativeRelationship), :jm_getX, []))
        JR.lset(f, :y, JR.call(JR.get(this, :relativeRelationship), :jm_getY, []))
        JR.lset(f, :sine, 0)
        JR.lset(f, :beamX, 0)
        JR.lset(f, :cosine, 0)
        JR.lset(f, :beamY, 0)
        JR.lset(f, :weaponLayer, nil)
        JR.lset(f, :increment, div(JR.lget(f, :reducedWidth), (JR.int32(JR.get(this, :total) - 1))))
        JR.lset(f, :next, -JR.lget(f, :halfWidth))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.get(this, :total)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :sine, ((JR.lget(f, :next) * JR.call(JR.get(this, :noDecimalTrigTable), :jm_sin, [JR.int32(JR.lget(f, :angle))]))))
            JR.lset(f, :beamX, JR.int32(((JR.lget(f, :sine) / JR.get(JR.get(this, :noDecimalTrigTable), :SCALE)))))
            JR.lset(f, :cosine, ((JR.lget(f, :next) * JR.call(JR.get(this, :noDecimalTrigTable), :jm_cos, [JR.int32(JR.lget(f, :angle))]))))
            JR.lset(f, :beamY, -JR.int32(((JR.lget(f, :cosine) / JR.get(JR.get(this, :noDecimalTrigTable), :SCALE)))))
            JR.lset(f, :weaponLayer, JR.call(JR.get(this, :weaponLayerCircularStaticPool), :jm_getInstanceWeaponLayer, [JR.lget(f, :sourceLayerInterface), JR.int32(JR.lget(f, :x) + JR.lget(f, :beamX)), JR.int32(JR.lget(f, :y) + JR.lget(f, :beamY)), 0, JR.int32(JR.lget(f, :angle)), JR.int32(JR.lget(f, :otherAngle)), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface)]))
            JR.call(JR.lget(f, :allbinaryLayerManager), :jm_append, [JR.lget(f, :weaponLayer)])
            JR.lset(f, :next, JR.int32(JR.lget(f, :next) + JR.lget(f, :increment)))
        end)
    end)
  end
end


