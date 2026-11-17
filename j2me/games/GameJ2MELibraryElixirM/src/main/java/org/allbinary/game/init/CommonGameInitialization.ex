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
# package org.allbinary.game.init

defmodule CommonGameInitialization do
  def jsuper(), do: BaseGameInitialization

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
    nil
  end


  def jinit(this, p_resourceInitializationArray, p_portion) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resourceInitializationArray, p_resourceInitializationArray)
      JR.lset(f, :portion, p_portion)
        BaseGameInitialization.jinit(this, JR.lget(f, :resourceInitializationArray), JR.lget(f, :portion))
        CommonGameInitialization.jinitfields(this)
    end)
  end

  def jnew(p_resourceInitializationArray, p_portion) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_resourceInitializationArray, p_portion)
    this
  end


  def jm_init(this, p_abeClientInformation, p_commandListener, p_level) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :commandListener, p_commandListener)
      JR.lset(f, :level, p_level)
        BaseGameInitialization.jm_init(this, JR.lget(f, :abeClientInformation), JR.lget(f, :commandListener), JR.lget(f, :level))
        JR.lset(f, :resourceLoadingLevelFactory, ResourceLoadingLevelFactory.jm_getInstance())
        if (!JR.call(this, :jm_isGameInitialized, []) && (JR.lget(f, :level) == JR.call(JR.get(JR.lget(f, :resourceLoadingLevelFactory), :LOAD_ALL), :jm_getLevel, []))) do
            JR.call(this, :jm_setGameInitialized, [true])
            JR.lset(f, :progressCanvas, ProgressCanvasFactory.jm_getInstance())
            JR.call(SmallIntegerSingletonFactory.jm_getInstance(), :jm_init, [])
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Integers"])
            JR.call(PointFactory.jm_getInstance(), :jm_init, [])
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Points"])
            AngleFactory.jm_getInstance()
            JR.call(JR.lget(f, :progressCanvas), :jm_addNormalPortion, [50, "Angles"])
            JR.call(this, :jm_initGame, [])
            JR.call(JR.aget(JR.get(this, :resourceInitializationArray), JR.get(this, :GAME_RESOURCES)), :jm_init, [])
        end
        BaseGameInitialization.jm_resourceInitialization(this, JR.lget(f, :level))
    end)
  end


  def jm_initGame(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end
end


