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

defmodule BasicWeaponPart do
  def jsuper(), do: JObject
def jstatic_NULL_BASIC_WEAPON_PART(), do: JR.static_get(__MODULE__, :NULL_BASIC_WEAPON_PART, fn -> BasicWeaponPart.jm_createBasicWeaponPart(JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0])) end)
  def jstatic_set_NULL_BASIC_WEAPON_PART(value), do: JR.static_put(__MODULE__, :NULL_BASIC_WEAPON_PART, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
    JR.put(this, :ownerLayerInterface, nil)
    JR.put(this, :weaponProperties, nil)
    JR.put(this, :scoreableInterface, nil)
    JR.put(this, :relativeRelationship, nil)
        JR.put(this, :animationInterface, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        JR.put(this, :ownerLayerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
        JR.put(this, :weaponProperties, WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES())
        JR.put(this, :scoreableInterface, NoScoreable.jm_getInstance())
        JR.put(this, :relativeRelationship, RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP())
    nil
  end


  def jm_createBasicWeaponPart(p_animationInterface) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
        throw({:jreturn, BasicWeaponPart.jnew(JR.lget(f, :animationInterface), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER(), WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable.jm_getInstance(), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP())})
    end)
  end


  def jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(this, :jm_init, [JR.lget(f, :sourceLayerInterface), JR.lget(f, :weaponProperties), JR.lget(f, :scoreableInterface), JR.lget(f, :relativeRelationship)])
        JR.call(this, :jm_setAnimationInterface, [JR.lget(f, :animationInterface)])
    end)
  end

  def jnew(p_animationInterface, p_sourceLayerInterface, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_animationInterface, p_sourceLayerInterface, p_weaponProperties, p_scoreableInterface, p_relativeRelationship)
    this
  end


  def jm_init(this, p_sourceLayerInterface, p_weaponProperties, p_scoreableInterface, p_relativeRelationship) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreableInterface, p_scoreableInterface)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
        JR.call(this, :jm_setOwnerLayerInterface, [JR.lget(f, :sourceLayerInterface)])
        JR.call(this, :jm_setWeaponProperties, [JR.lget(f, :weaponProperties)])
        JR.put(this, :scoreableInterface, JR.lget(f, :scoreableInterface))
        JR.put(this, :relativeRelationship, JR.lget(f, :relativeRelationship))
    end)
  end


  def jm_process(this, p_allbinaryLayerManager, p_angle, p_otherAngle) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
        JR.call(this, :jm_processScore, [JR.lget(f, :allbinaryLayerManager), JR.lget(f, :angle), JR.lget(f, :otherAngle), JR.call(this, :jm_getWeaponProperties, []), JR.get(this, :scoreableInterface)])
    end)
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
        throw({:jexception, JR.exception("Exception", JR.get(CommonStrings.jm_getInstance(), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_getOwnerLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :ownerLayerInterface)})
    end)
  end


  def jm_setOwnerLayerInterface(this, p_ownerLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ownerLayerInterface, p_ownerLayerInterface)
        JR.put(this, :ownerLayerInterface, JR.lget(f, :ownerLayerInterface))
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


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(JR.call(this, :jm_getOwnerLayerInterface, []), :jm_getViewPosition, []))
        JR.lset(f, :viewX, JR.call(JR.lget(f, :viewPosition), :jm_getX, []))
        JR.lset(f, :viewY, JR.call(JR.lget(f, :viewPosition), :jm_getY, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), JR.lget(f, :viewX), JR.lget(f, :viewY)])
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


  def jm_getWeaponProperties(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :weaponProperties)})
    end)
  end


  def jm_setWeaponProperties(this, p_weaponProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :weaponProperties, p_weaponProperties)
        JR.put(this, :weaponProperties, JR.lget(f, :weaponProperties))
    end)
  end
end


