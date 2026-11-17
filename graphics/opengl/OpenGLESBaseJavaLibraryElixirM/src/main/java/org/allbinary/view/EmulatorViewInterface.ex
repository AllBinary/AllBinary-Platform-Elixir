# Generated Code Do Not Modify
# package org.allbinary.view

defmodule EmulatorViewInterface do
  def jsuper(), do: JObject


  def jm_setMidlet(this, p_midlet) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midlet, p_midlet)
      throw({:jexception, JR.exception("AbstractMethodError", "setMidlet")})
    end)
  end


  def jm_onEmulatorInitComplete(this, p_midletActivity) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :midletActivity, p_midletActivity)
      throw({:jexception, JR.exception("AbstractMethodError", "onEmulatorInitComplete")})
    end)
  end


  def jm_onSetDisplayable(this, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
      throw({:jexception, JR.exception("AbstractMethodError", "onSetDisplayable")})
    end)
  end
end


