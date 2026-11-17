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

defmodule GameFeatureUtil do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> GameFeatureUtil.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :enumerationUtil, nil)
    JR.put(this, :ON_GAME_FEATURE_CHANGE, nil)
    JR.put(this, :GAME_FEATURE_CHANGED, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :enumerationUtil, EnumerationUtil.jm_getInstance())
        JR.put(this, :ON_GAME_FEATURE_CHANGE, "onGameFeatureChange")
        JR.put(this, :GAME_FEATURE_CHANGED, "Game Feature Changed: ")
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
        throw({:jreturn, GameFeatureUtil.jstatic_instance()})
    end)
  end


  def jm_setDefault(this, p_choiceGroup) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :choiceGroup, p_choiceGroup)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :METHOD_NAME, "setDefault")
        JR.lset(f, :SELECTED_ARRAY_RETURN, "selectedArray_return[")
        JR.lset(f, :SELECTED_SEP, "] = ")
        JR.lset(f, :selectedArray_return, JR.anew(JR.call(JR.lget(f, :choiceGroup), :jm_size, []), false))
        JR.lset(f, :total, JR.call(JR.lget(f, :choiceGroup), :jm_getSelectedFlags, [JR.lget(f, :selectedArray_return)]))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Multiple Total Choices: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :total)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :selectedArray_return))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :isSelected, JR.aget(JR.lget(f, :selectedArray_return), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_ARRAY_RETURN)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_SEP)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.lget(f, :isSelected)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.lset(f, :selectedChoiceLabel, JR.call(JR.lget(f, :choiceGroup), :jm_getString, [JR.lget(f, :index)]))
            JR.lset(f, :gameFeature, Feature.jm_getInstance(JR.lget(f, :selectedChoiceLabel)))
            if JR.call(JR.lget(f, :features), :jm_isDefault, [JR.lget(f, :gameFeature)]) do
                JR.call(JR.lget(f, :features), :jm_add, [JR.lget(f, :gameFeature)])
                JR.call(JR.lget(f, :choiceGroup), :jm_setSelectedIndex, [JR.lget(f, :index), true])
            else
                JR.call(JR.lget(f, :features), :jm_remove, [JR.lget(f, :gameFeature)])
                JR.call(JR.lget(f, :choiceGroup), :jm_setSelectedIndex, [JR.lget(f, :index), false])
            end
        end)
    end)
  end


  def jm_updateMultiple(this, p_choiceGroup) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :choiceGroup, p_choiceGroup)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :METHOD_NAME, "updateMultiple")
        JR.lset(f, :SELECTED_ARRAY_RETURN, "selectedArray_return[")
        JR.lset(f, :SELECTED_SEP, "] = ")
        JR.lset(f, :selectedArray_return, JR.anew(JR.call(JR.lget(f, :choiceGroup), :jm_size, []), false))
        JR.lset(f, :total, JR.call(JR.lget(f, :choiceGroup), :jm_getSelectedFlags, [JR.lget(f, :selectedArray_return)]))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Multiple Total Choices: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :total)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
        JR.lset(f, :features, Features.jm_getInstance())
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :selectedArray_return))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :isSelected, JR.aget(JR.lget(f, :selectedArray_return), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_ARRAY_RETURN)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_SEP)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.lget(f, :isSelected)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            JR.lset(f, :selectedChoiceLabel, JR.call(JR.lget(f, :choiceGroup), :jm_getString, [JR.lget(f, :index)]))
            JR.lset(f, :gameFeature, Feature.jm_getInstance(JR.lget(f, :selectedChoiceLabel)))
            if (!JR.lget(f, :isSelected) && JR.call(JR.lget(f, :features), :jm_isFeature, [JR.lget(f, :gameFeature)])) do
                JR.call(JR.lget(f, :features), :jm_remove, [JR.lget(f, :gameFeature)])
            else
                if (JR.lget(f, :isSelected) && !JR.call(JR.lget(f, :features), :jm_isFeature, [JR.lget(f, :gameFeature)])) do
                JR.call(JR.lget(f, :features), :jm_add, [JR.lget(f, :gameFeature)])
            end
            end
        end)
    end)
  end


  def jm_updateExclusiveForChoiceGroup(this, p_choiceGroup) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :choiceGroup, p_choiceGroup)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :METHOD_NAME, "updateExclusive")
        JR.lset(f, :SELECTED_ARRAY_RETURN, "selectedArray_return[")
        JR.lset(f, :SELECTED_SEP, "] = ")
        JR.lset(f, :selectedArray_return, JR.anew(JR.call(JR.lget(f, :choiceGroup), :jm_size, []), false))
        JR.lset(f, :total, JR.call(JR.lget(f, :choiceGroup), :jm_getSelectedFlags, [JR.lget(f, :selectedArray_return)]))
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Exclusive Total Choices: 1=="])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :total)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.alength(JR.lget(f, :selectedArray_return))) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :isSelected, JR.aget(JR.lget(f, :selectedArray_return), JR.lget(f, :index)))
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_ARRAY_RETURN)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :index)])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.lget(f, :SELECTED_SEP)])
            JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.lget(f, :isSelected)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.lget(f, :METHOD_NAME)])
            if JR.lget(f, :isSelected) do
                JR.lset(f, :selectedChoiceLabel, JR.call(JR.lget(f, :choiceGroup), :jm_getString, [JR.lget(f, :index)]))
                JR.call(this, :jm_updateExclusive, [JR.lget(f, :selectedChoiceLabel)])
            end
        end)
    end)
  end


  def jm_isExclusive(this, p_itemLabel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :itemLabel, p_itemLabel)
        JR.lset(f, :enumeration, JR.call(JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []), :jm_keys, []))
        JR.lset(f, :name, nil)
        JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
            JR.lset(f, :name, JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
            if (JR.call(JR.get(this, :tsUtil), :jm_compareTo, [JR.lget(f, :itemLabel), JR.lget(f, :name)]) == 0) do
                throw({:jreturn, true})
            end
        end)
        throw({:jreturn, false})
    end)
  end


  def jm_updateExclusive(this, p_selectedChoiceLabel) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :selectedChoiceLabel, p_selectedChoiceLabel)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :ITEM_LABEL)]), :jm_append, [JR.lget(f, :selectedChoiceLabel)]), :jm_toString, []), this, "updateExclusive"])
        JR.lset(f, :gameFeature, Feature.jm_getInstance(JR.lget(f, :selectedChoiceLabel)))
        JR.lset(f, :hashtable, JR.call(GameFeatureChoiceGroups.jm_getExclusiveInstance(), :jm_get, []))
        JR.lset(f, :objectArray, JR.call(HashtableUtil.jm_getInstance(), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
        JR.lset(f, :basicArrayList, nil)
        JR.lset(f, :anyType, nil)
        JR.lset(f, :size, JR.alength(JR.lget(f, :objectArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :anyType, JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index)))
            JR.lset(f, :basicArrayList, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :anyType)]))
            JR.call(this, :jm_updateExclusiveList, [JR.lget(f, :gameFeature), JR.lget(f, :basicArrayList)])
        end)
    end)
  end


  def jm_updateExclusiveList(this, p_gameFeature, p_list) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
      JR.lset(f, :list, p_list)
        if JR.call(JR.lget(f, :list), :jm_contains, [JR.lget(f, :gameFeature)]) do
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :addIndex, JR.call(JR.lget(f, :list), :jm_indexOf, [JR.lget(f, :gameFeature)]))
            JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                if (JR.lget(f, :addIndex) != JR.lget(f, :index)) do
                    JR.call(JR.lget(f, :features), :jm_remove, [JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index))])
                else
                    JR.call(JR.lget(f, :features), :jm_add, [JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index))])
                end
            end)
        end
    end)
  end
end


