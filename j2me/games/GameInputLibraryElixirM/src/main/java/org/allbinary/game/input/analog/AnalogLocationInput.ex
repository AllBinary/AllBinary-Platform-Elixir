# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

defmodule AnalogLocationInput do
  def jsuper(), do: JObject
def jstatic_NULL_ANALOG_LOCATION_INPUT(), do: JR.static_get(__MODULE__, :NULL_ANALOG_LOCATION_INPUT, fn -> AnalogLocationInput.jnew(-1) end)
  def jstatic_set_NULL_ANALOG_LOCATION_INPUT(value), do: JR.static_put(__MODULE__, :NULL_ANALOG_LOCATION_INPUT, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :playerId, 0)
    JR.put(this, :customGPoint, nil)
    JR.put(this, :rz, 0)
    JR.put(this, :rightTrigger, 0)
    JR.put(this, :leftTrigger, 0)
        
        
        JR.put(this, :rz, 0)
        JR.put(this, :rightTrigger, 0)
        JR.put(this, :leftTrigger, 0)
    nil
  end


  def jinit(this, p_playerId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :playerId, p_playerId)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :playerId, JR.lget(f, :playerId))
        JR.put(this, :customGPoint, CustomGPoint.jnew(0, 0, 0))
    end)
  end

  def jnew(p_playerId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_playerId)
    this
  end


  def jm_getPlayerId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :playerId)})
    end)
  end


  def jm_getCustomGPoint(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :customGPoint)})
    end)
  end


  def jm_getRz(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rz)})
    end)
  end


  def jm_setRz(this, p_rz) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rz, p_rz)
        JR.put(this, :rz, JR.lget(f, :rz))
    end)
  end


  def jm_getRightTrigger(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :rightTrigger)})
    end)
  end


  def jm_setRightTrigger(this, p_rightTrigger) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :rightTrigger, p_rightTrigger)
        JR.put(this, :rightTrigger, JR.lget(f, :rightTrigger))
    end)
  end


  def jm_getLeftTrigger(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :leftTrigger)})
    end)
  end


  def jm_setLeftTrigger(this, p_leftTrigger) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :leftTrigger, p_leftTrigger)
        JR.put(this, :leftTrigger, JR.lget(f, :leftTrigger))
    end)
  end
end


