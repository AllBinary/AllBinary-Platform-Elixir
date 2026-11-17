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
# package org.allbinary.game.layer.weapon

defmodule WeaponLayer do
  def jsuper(), do: MultiPlayerGameLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :animationInterface, nil)
    JR.put(this, :initAnimationInterface, nil)
    JR.put(this, :destroyedAnimationInterface, nil)
    JR.put(this, :sourceLayerInterface, nil)
    JR.put(this, :totalDamage, 0)
    JR.put(this, :initDamage, 0)
    JR.put(this, :destroyed, false)
    JR.put(this, :scoreableInterface, nil)
    JR.put(this, :movement, nil)
    JR.put(this, :weaponProperties, nil)
    JR.put(this, :multiPlayerType, 0)
    JR.put(this, :collidableWeaponBehavior, nil)
        JR.put(this, :animationInterface, JR.call(NullAnimationFactory.jm_getFactoryInstance(), :jm_getInstance, [0]))
        
        
        JR.put(this, :sourceLayerInterface, AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())
        JR.put(this, :totalDamage, 0)
        JR.put(this, :initDamage, 0)
        JR.put(this, :destroyed, true)
        JR.put(this, :scoreableInterface, NoScoreable.jm_getInstance())
        
        JR.put(this, :weaponProperties, WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES())
        
        JR.put(this, :collidableWeaponBehavior, CollidableWeaponBehavior.jm_getNullInstance())
    nil
  end


  def jinit(this, p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :remoteInfo, p_remoteInfo)
      JR.lset(f, :multiPlayerType, p_multiPlayerType)
      JR.lset(f, :movement, p_movement)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :destroyedAnimationInterface, p_destroyedAnimationInterface)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
        MultiPlayerGameLayer.jinit(this, JR.lget(f, :remoteInfo), JR.get(BasicGroupFactory.jm_getInstance(), :NONE_ARRAY), JR.lget(f, :name), JR.lget(f, :rectangle), JR.lget(f, :viewPosition))
        WeaponLayer.jinitfields(this)
        JR.put(this, :initAnimationInterface, JR.lget(f, :animationInterface))
        JR.call(this, :jm_setAnimationInterface, [JR.lget(f, :animationInterface)])
        JR.put(this, :destroyedAnimationInterface, JR.lget(f, :destroyedAnimationInterface))
        JR.put(this, :movement, JR.lget(f, :movement))
        JR.put(this, :multiPlayerType, JR.lget(f, :multiPlayerType))
    end)
  end

  def jnew(p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_remoteInfo, p_multiPlayerType, p_movement, p_animationInterface, p_destroyedAnimationInterface, p_rectangle, p_viewPosition)
    this
  end


  def jm_setCollidableInferface(this, p_collidableInferface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :collidableInferface, p_collidableInferface)
        MultiPlayerGameLayer.jm_setCollidableInferface(this, JR.lget(f, :collidableInferface))
        JR.put(this, :collidableWeaponBehavior, JR.call(this, :jm_getCollidableInferface, []))
    end)
  end


  def jm_initXYZ(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        JR.put(this, :x, JR.lget(f, :x))
        JR.put(this, :y, JR.lget(f, :y))
        JR.put(this, :z, JR.lget(f, :z))
    end)
  end


  def jm_init(this, p_sourceLayerInterface, p_angle, p_otherAngle, p_weaponProperties, p_scoreable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :otherAngle, p_otherAngle)
      JR.lset(f, :weaponProperties, p_weaponProperties)
      JR.lset(f, :scoreable, p_scoreable)
        JR.call(this, :jm_setWeaponPropertiesP, [JR.lget(f, :weaponProperties)])
        JR.call(this, :jm_setReadyForExplosion, [false])
        JR.call(this, :jm_setAnimationInterface, [JR.call(this, :jm_getInitAnimationInterfaceP, [])])
        JR.call(this, :jm_setOwnerLayerInterface, [JR.lget(f, :sourceLayerInterface)])
        JR.call(JR.get(this, :collidableWeaponBehavior), :jm_init, [JR.lget(f, :sourceLayerInterface)])
        JR.call(this, :jm_setGroupInterfaces, [])
        if (JR.lget(f, :scoreable) != nil) do
            JR.put(this, :scoreableInterface, JR.lget(f, :scoreable))
        end
        JR.put(this, :totalDamage, 0)
        JR.put(this, :initDamage, JR.call(JR.lget(f, :weaponProperties), :jm_getDamage, []))
        JR.call(this, :jm_setDestroyed, [false])
        JR.call(JR.get(this, :movement), :jm_init, [JR.call(JR.lget(f, :weaponProperties), :jm_getSpeed, []), JR.lget(f, :angle), JR.lget(f, :otherAngle)])
    end)
  end


  def jm_setGroupInterfaces(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :basicGroupFactory, BasicGroupFactory.jm_getInstance())
        if (JR.aget(JR.call(JR.get(this, :sourceLayerInterface), :jm_getGroupInterface, []), 0) == JR.get(JR.lget(f, :basicGroupFactory), :ENEMY)) do
            JR.call(this, :jm_setGroupInterface, [JR.get(JR.lget(f, :basicGroupFactory), :ENEMY_ARRAY)])
        else
            JR.call(this, :jm_setGroupInterface, [JR.call(JR.get(this, :sourceLayerInterface), :jm_getGroupInterface, [])])
        end
    end)
  end


  def jm_processTick(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if (JR.call(this, :jm_isExhausted, []) && !JR.call(this, :jm_isDestroyed, [])) do
            if JR.call(this, :jm_isReadyForExplosion, []) do
                JR.lset(f, :indexedAnimationInterface, JR.call(this, :jm_getAnimationInterface, []))
                JR.lset(f, :currentFrame, JR.call(JR.lget(f, :indexedAnimationInterface), :jm_getFrame, []))
                if (JR.lget(f, :currentFrame) < (JR.call(JR.lget(f, :indexedAnimationInterface), :jm_getAnimationSize, []) - 1)) do
                    JR.call(JR.lget(f, :indexedAnimationInterface), :jm_nextFrame, [])
                else
                    JR.call(this, :jm_setDestroyed, [true])
                end
            else
                JR.lset(f, :collidableWeaponBehavior, JR.call(this, :jm_getCollidableInferface, []))
                if JR.call(JR.lget(f, :collidableWeaponBehavior), :jm_isCollided, []) do
                    JR.call(this, :jm_setAnimationInterface, [JR.get(this, :destroyedAnimationInterface)])
                    JR.call(JR.call(this, :jm_getMovement, []), :jm_stop, [])
                    JR.call(this, :jm_setReadyForExplosion, [true])
                else
                    JR.call(this, :jm_setDestroyed, [true])
                end
            end
        end
        JR.call(JR.get(this, :movement), :jm_process, [this])
        JR.put(this, :totalDamage, JR.int32(JR.get(this, :totalDamage) + JR.call(JR.get(this, :weaponProperties), :jm_getDissipation, [])))
    end)
  end


  def jm_isDestroyed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :destroyed)})
    end)
  end


  def jm_damage(this, p_damage, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damage, p_damage)
      JR.lset(f, :damageType, p_damageType)
        JR.put(this, :totalDamage, JR.int32(JR.get(this, :totalDamage) + JR.int32(JR.lget(f, :damage) * JR.lget(f, :damage))))
    end)
  end


  def jm_givePoints(this, p_total) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :total, p_total)
        JR.call(JR.get(this, :scoreableInterface), :jm_addPoints, [(JR.call(GameConfigurationUtil.jm_getInstance(), :jm_getCompetitionValue, []) * JR.lget(f, :total))])
    end)
  end


  def jm_isExhausted(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        if ((JR.get(this, :totalDamage) > JR.call(this, :jm_getInitDamage, [])) || (JR.get(this, :totalDamage) < 0)) do
            throw({:jreturn, true})
        else
            throw({:jreturn, false})
        end
    end)
  end


  def jm_getDamage(this, p_damageType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :damageType, p_damageType)
        if !JR.call(this, :jm_isExhausted, []) do
            JR.lset(f, :total, JR.int32(JR.call(this, :jm_getInitDamage, []) - JR.get(this, :totalDamage)))
            JR.call(this, :jm_givePoints, [JR.lget(f, :total)])
            throw({:jreturn, JR.lget(f, :total)})
        end
        throw({:jreturn, 0})
    end)
  end


  def jm_setDestroyed(this, p_destroyed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyed, p_destroyed)
        JR.put(this, :destroyed, JR.lget(f, :destroyed))
        if JR.call(this, :jm_isDestroyed, []) do
            JR.put(this, :scoreableInterface, NoScoreable.jm_getInstance())
            JR.call(DestroyedLayerProcessor.jm_getInstance(), :jm_add, [this])
        end
    end)
  end


  def jm_getInitDamage(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initDamage)})
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


  def jm_getAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :animationInterface)})
    end)
  end


  def jm_getInitAnimationInterfaceP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :initAnimationInterface)})
    end)
  end


  def jm_setInitAnimationInterfaceP(this, p_initAnimationInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :initAnimationInterface, p_initAnimationInterface)
        JR.put(this, :initAnimationInterface, JR.lget(f, :initAnimationInterface))
    end)
  end


  def jm_getDestroyedAnimationInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :destroyedAnimationInterface)})
    end)
  end


  def jm_getOwnerLayerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sourceLayerInterface)})
    end)
  end


  def jm_setOwnerLayerInterface(this, p_sourceLayerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sourceLayerInterface, p_sourceLayerInterface)
        JR.put(this, :sourceLayerInterface, JR.lget(f, :sourceLayerInterface))
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(this, :jm_getViewPosition, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintXY, [JR.lget(f, :graphics), (JR.call(JR.lget(f, :viewPosition), :jm_getX, []) - JR.call(this, :jm_getHalfWidth, [])), (JR.call(JR.lget(f, :viewPosition), :jm_getY, []) - JR.call(this, :jm_getHalfHeight, []))])
    end)
  end


  def jm_paintThreed(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :viewPosition, JR.call(this, :jm_getViewPosition, []))
        JR.call(JR.get(this, :animationInterface), :jm_paintThreedXYZ, [JR.lget(f, :graphics), (JR.call(JR.lget(f, :viewPosition), :jm_getX, []) - JR.call(this, :jm_getHalfWidth, [])), (JR.call(JR.lget(f, :viewPosition), :jm_getY, []) - JR.call(this, :jm_getHalfHeight, [])), (JR.call(JR.lget(f, :viewPosition), :jm_getZ, []) - JR.call(this, :jm_getHalfDepth, []))])
    end)
  end


  def jm_getMovement(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :movement)})
    end)
  end


  def jm_setMovement(this, p_movement) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :movement, p_movement)
        JR.put(this, :movement, JR.lget(f, :movement))
    end)
  end


  def jm_getType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, WeaponLayer.jm_getStaticType()})
    end)
  end


  def jm_getStaticType() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_getMultiPlayerType(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :multiPlayerType)})
    end)
  end


  def jm_setWeaponPropertiesP(this, p_weaponProperties) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :weaponProperties, p_weaponProperties)
        JR.put(this, :weaponProperties, JR.lget(f, :weaponProperties))
    end)
  end


  def jm_getWeaponPropertiesP(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :weaponProperties)})
    end)
  end


  def jm_implmentsTickableInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, true})
    end)
  end


  def jm_set(this, p_gl) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gl, p_gl)
        JR.call(JR.get(this, :initAnimationInterface), :jm_set, [JR.lget(f, :gl)])
    end)
  end
end


