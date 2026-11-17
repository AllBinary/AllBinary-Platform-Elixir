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

defmodule GameFeatureFormUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameFeatureFormUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :meUtil, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :meUtil, MIDPUtil.jm_getInstance())
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, GameFeatureFormUtil.jstatic_instance()})
    end)
  end


  def jm_getChoiceGroup(this, p_hashtable, p_name, p_option) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :name, p_name)
      JR.lset(f, :option, p_option)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :choiceGroup, ChoiceGroup.jnew(JR.lget(f, :name), JR.lget(f, :option), JR.call(StringUtil.jm_getInstance(), :jm_getArrayInstance, []), NullImage.jstatic_NULL_IMAGE_ARRAY()))
        JR.lset(f, :list, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :name)]))
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :ADD_CHOICE, ": Adding Choice: ")
        JR.lset(f, :GET_CHOICE_GROUP, "getChoiceGroup")
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameFeature, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :name)]), :jm_append, [JR.lget(f, :ADD_CHOICE)]), :jm_append, [JR.call(JR.lget(f, :gameFeature), :jm_toString, [])]), :jm_toString, []), this, JR.lget(f, :GET_CHOICE_GROUP)])
            JR.call(JR.lget(f, :choiceGroup), :jm_append, [JR.call(JR.lget(f, :gameFeature), :jm_toString, []), NullImage.jstatic_NULL_IMAGE()])
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.lget(f, :gameFeature)]) do
                JR.call(JR.lget(f, :choiceGroup), :jm_setSelectedIndex, [JR.lget(f, :index), true])
            end
        end)
        throw({:jreturn, JR.lget(f, :choiceGroup)})
    end)
  end


  def jm_addChoiceGroup(this, p_form, p_hashtable, p_option) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :form, p_form)
      JR.lset(f, :hashtable, p_hashtable)
      JR.lset(f, :option, p_option)
        JR.lset(f, :stringMaker, StringMaker.jnew())
        JR.lset(f, :ADDING_CHOICE_GROUP, "Adding Choice Group: ")
        JR.lset(f, :ADD_CHOICE_GROUP, "addChoiceGroup")
        JR.lset(f, :size, JR.call(JR.lget(f, :hashtable), :jm_size, []))
        JR.lset(f, :objectArray, JR.call(HashtableUtil.jm_getInstance(), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
        JR.lset(f, :name, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :name, JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringMaker), :jm_delete, [0, JR.call(JR.lget(f, :stringMaker), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.lget(f, :ADDING_CHOICE_GROUP)]), :jm_append, [JR.lget(f, :name)]), :jm_toString, []), this, JR.lget(f, :ADD_CHOICE_GROUP)])
            JR.call(JR.get(this, :meUtil), :jm_appendItem, [JR.lget(f, :form), JR.call(this, :jm_getChoiceGroup, [JR.lget(f, :hashtable), JR.lget(f, :name), JR.lget(f, :option)])])
        end)
    end)
  end


  def jm_setDefault(this, p_form) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :form, p_form)
        JR.lset(f, :size, JR.call(JR.lget(f, :form), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :item, JR.call(JR.lget(f, :form), :jm_get, [JR.lget(f, :index)]))
            if JR.instance_of(JR.lget(f, :item), GameConfigurationGauge) do
                JR.call(GameConfigurationUtil.jm_getInstance(), :jm_setDefault, [JR.lget(f, :item)])
            else
                if JR.instance_of(JR.lget(f, :item), ChoiceGroup) do
                JR.call(GameFeatureUtil.jm_getInstance(), :jm_setDefault, [JR.lget(f, :item)])
            end
            end
        end)
    end)
  end
end


