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
# package org.allbinary.game.ag.layer.weapon.mine

defmodule MineWeaponResources do
  def jsuper(), do: BasicGameResources
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :DROP_TEXT_RESOURCE, nil)
    JR.put(this, :DROP_RESOURCE, nil)
    JR.put(this, :DROP_ICON_RESOURCE, nil)
        JR.put(this, :DROP_TEXT_RESOURCE, "/mine_drop_text_20_by_20.png")
        JR.put(this, :DROP_RESOURCE, "/mine_drop_20_by_20.png")
        JR.put(this, :DROP_ICON_RESOURCE, "/mine_drop_icon_20_by_20.png")
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (MineWeaponResources.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            MineWeaponResources.jstatic_set_instance(MineWeaponResources.jnew())
        end
        throw({:jreturn, MineWeaponResources.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      BasicGameResources.jinit(this)
      jinitfields(this)
        JR.lset(f, :ROOT, "/mine")
        JR.lset(f, :SMALL, "_20_by_20.png")
        JR.lset(f, :MEDIUM, JR.lget(f, :SMALL))
        JR.lset(f, :SIZE_FOUR, JR.lget(f, :SMALL))
        JR.lset(f, :SIZE_FIVE, JR.lget(f, :SMALL))
        JR.lset(f, :SIZE_SIX, JR.lget(f, :SMALL))
        JR.lset(f, :SIZE, JR.afrom([JR.lget(f, :SMALL), JR.lget(f, :MEDIUM), JR.lget(f, :SIZE_FOUR), JR.lget(f, :SIZE_FIVE), JR.lget(f, :SIZE_SIX)]))
        BasicGameResources.jm_init(this, JR.lget(f, :ROOT), JR.lget(f, :SIZE))
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end
end


