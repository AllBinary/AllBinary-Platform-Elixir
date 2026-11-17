# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

defmodule TempExplosionWeaponLayer do
  def jsuper(), do: SimpleWeaponLayer

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :weaponProperties, nil)
    JR.put(this, :timeDelayHelper, nil)
        JR.put(this, :weaponProperties, WeaponProperties.jnew(-1, -1, 0, 1000, JR.int16(0)))
        JR.put(this, :timeDelayHelper, TimeDelayHelper.jnew(0))
    nil
  end


  def jinit(this, p_name, p_movement, p_animationInterface, p_rectangle, p_viewPosition, p_timeDelay) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :movement, p_movement)
      JR.lset(f, :animationInterface, p_animationInterface)
      JR.lset(f, :rectangle, p_rectangle)
      JR.lset(f, :viewPosition, p_viewPosition)
      JR.lset(f, :timeDelay, p_timeDelay)
        SimpleWeaponLayer.jinit(this, JR.lget(f, :name), RemoteInfo.jstatic_REMOTE_INFO(), -1, JR.lget(f, :movement), JR.lget(f, :animationInterface), SimpleWeaponLayer.jm_createDestroyed(), JR.lget(f, :rectangle), JR.lget(f, :viewPosition))
        TempExplosionWeaponLayer.jinitfields(this)
        JR.put(JR.get(this, :timeDelayHelper), :delay, JR.lget(f, :timeDelay))
    end)
  end

  def jnew(p_name, p_movement, p_animationInterface, p_rectangle, p_viewPosition, p_timeDelay) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_movement, p_animationInterface, p_rectangle, p_viewPosition, p_timeDelay)
    this
  end


  def jm_processTick(this, p_allBinaryLayerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryLayerManager, p_allBinaryLayerManager)
        if JR.call(JR.get(this, :timeDelayHelper), :jm_isTime, [JR.get(GameTickTimeDelayHelperFactory.jm_getInstance(), :startTime)]) do
            JR.call(JR.call(this, :jm_getCollidableInferface, []), :jm_collide, [this, this])
            JR.put(this, :totalDamage, (JR.call(this, :jm_getInitDamage, []) + 1))
        end
        SimpleWeaponLayer.jm_processTick(this, JR.lget(f, :allBinaryLayerManager))
    end)
  end
end


