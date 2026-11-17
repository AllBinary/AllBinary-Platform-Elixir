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
# package org.allbinary.game.paint

defmodule GameScrollMenuPaintable do
  def jsuper(), do: BasicGameDemoPaintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface, p_basicColor) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :mainDemoStatePaintable, p_mainDemoStatePaintable)
      JR.lset(f, :ownershipPaintable, p_ownershipPaintable)
      JR.lset(f, :helpPaintableInterface, p_helpPaintableInterface)
      JR.lset(f, :basicColor, p_basicColor)
        BasicGameDemoPaintable.jinit(this, JR.lget(f, :mainDemoStatePaintable), JR.lget(f, :ownershipPaintable), JR.lget(f, :helpPaintableInterface))
        GameScrollMenuPaintable.jinitfields(this)
        JR.call(this, :jm_setColor, [JR.lget(f, :basicColor)])
        JR.call(ColorChangeEventHandler.jm_getInstance(), :jm_addListenerInterface, [this])
    end)
  end

  def jnew(p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface, p_basicColor) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_mainDemoStatePaintable, p_ownershipPaintable, p_helpPaintableInterface, p_basicColor)
    this
  end


  def jm_setState(this, p_state) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :state, p_state)
        JR.call(this, :jm_setCurrentStatePaintable, [JR.call(this, :jm_getMainDemoStatePaintable, [])])
    end)
  end


  def jm_onEvent(this, p_eventObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :eventObject, p_eventObject)
        nil
    end)
  end


  def jm_setColor(this, p_basicColor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicColor, p_basicColor)
        JR.lset(f, :mainGameDemoStatePaintable, JR.call(this, :jm_getMainDemoStatePaintable, []))
        JR.lset(f, :formPaintable, JR.call(JR.lget(f, :mainGameDemoStatePaintable), :jm_getMenuPaintableInterface, []))
        JR.lset(f, :scrollSelectionForm, JR.call(JR.lget(f, :formPaintable), :jm_getForm, []))
        JR.call(JR.call(JR.lget(f, :mainGameDemoStatePaintable), :jm_getOwnershipPaintableInterface, []), :jm_setBasicColorP, [JR.lget(f, :basicColor)])
        JR.call(JR.lget(f, :scrollSelectionForm), :jm_setButtonBasicColor, [JR.lget(f, :basicColor)])
        JR.lset(f, :item, nil)
        JR.lset(f, :stringComponent, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :scrollSelectionForm), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :item, JR.call(JR.lget(f, :scrollSelectionForm), :jm_get, [JR.lget(f, :index)]))
            JR.lset(f, :stringComponent, JR.call(JR.lget(f, :item), :jm_getLabelStringComponent, []))
            if (JR.lget(f, :stringComponent) != nil) do
                JR.call(JR.lget(f, :stringComponent), :jm_setForegroundBasicColor, [JR.lget(f, :basicColor)])
            end
        end)
    end)
  end
end


