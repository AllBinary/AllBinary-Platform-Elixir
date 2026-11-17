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
# package org.allbinary.game.configuration.feature

defmodule GameFeatureItemCommandListener do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :gameOptionsForm, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_gameOptionsForm) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :gameOptionsForm, p_gameOptionsForm)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :gameOptionsForm, JR.lget(f, :gameOptionsForm))
    end)
  end

  def jnew(p_gameOptionsForm) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_gameOptionsForm)
    this
  end


  def jm_commandAction(this, p_command, p_item) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
      JR.lset(f, :item, p_item)
        try do
            JR.lset(f, :itemLabel, JR.call(JR.lget(f, :item), :jm_getLabel, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :ITEM_LABEL)]), :jm_append, [JR.lget(f, :itemLabel)]), :jm_toString, []), this, JR.get(MidletStrings.jm_getInstance(), :COMMAND_ACTION)])
            if JR.instance_of(JR.lget(f, :item), GameConfigurationGauge) do
                JR.call(GameConfigurationUtil.jm_getInstance(), :jm_change, [JR.get(this, :gameOptionsForm), JR.lget(f, :item)])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(MidletStrings.jm_getInstance(), :COMMAND_ACTION), JR.lget(f, :e)])
        end
    end)
  end
end


