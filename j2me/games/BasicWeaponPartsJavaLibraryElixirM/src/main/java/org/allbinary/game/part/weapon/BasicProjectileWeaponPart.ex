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

defmodule BasicProjectileWeaponPart do
  def jsuper(), do: BasicWeaponPart

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :weaponLayerCircularStaticPool, nil)
        
    nil
  end


  def jm_createBasicProjectileWeaponPart(p_animationInterface, p_weaponLayerCircularStaticPool) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :weaponLayerCircularStaticPool, p_weaponLayerCircularStaticPool)
        throw({:jreturn, BasicProjectileWeaponPart.jnew(JR.lget(f, :animationInterface), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER(), JR.lget(f, :weaponLayerCircularStaticPool), WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable.jm_getInstance(), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP())})
    end)
  end


  def jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :weaponLayerCircularStaticPool, p_weaponLayerCircularStaticPool)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
        BasicWeaponPart.jinit(this, JR.lget(f, :animationInterface), JR.lget(f, :sourceLayerInterface), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface), JR.lget(f, :relativeRelationship))
        BasicProjectileWeaponPart.jinitfields(this)
        JR.put(this, :weaponLayerCircularStaticPool, JR.lget(f, :weaponLayerCircularStaticPool))
    end)
  end

  def jnew(p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponLayerCircularStaticPool, p_weaponProperties, p_scoreableInterface, p_relativeRelationship)
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
        JR.lset(f, :weaponLayer, JR.call(JR.get(this, :weaponLayerCircularStaticPool), :jm_getInstanceWeaponLayer, [JR.call(this, :jm_getOwnerLayerInterface, []), JR.call(JR.get(this, :relativeRelationship), :jm_getX, []), JR.call(JR.get(this, :relativeRelationship), :jm_getY, []), JR.call(JR.get(this, :relativeRelationship), :jm_getZ, []), JR.int32(JR.lget(f, :angle)), JR.int32(JR.lget(f, :otherAngle)), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface)]))
        JR.call(JR.lget(f, :allbinaryLayerManager), :jm_append, [JR.lget(f, :weaponLayer)])
    end)
  end
end


