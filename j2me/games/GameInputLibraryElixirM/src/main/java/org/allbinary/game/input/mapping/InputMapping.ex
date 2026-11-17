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
# package org.allbinary.game.input.mapping

defmodule InputMapping do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :mappedList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.put(this, :mappedList, BasicArrayListD.jnew())
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getTotalMapped(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :hashtable), :jm_size, [])})
    end)
  end


  def jm_isDefaultNew(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, false})
    end)
  end


  def jm_getDefault(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, InputToGameKeyMapping.jm_getNullInstance()})
    end)
  end


  def jm_removeAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :hashtable), :jm_clear, [])
        JR.call(JR.get(this, :mappedList), :jm_clear, [])
    end)
  end


  def jm_remove(this, p_input, p_mappedToInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :mappedToInput, p_mappedToInput)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :stringUtil, StringUtil.jm_getInstance())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :input)])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" == "])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :mappedToInput)])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "InputMapping::remove"])
        JR.lset(f, :list, JR.call(this, :jm_getMappedInput, [JR.lget(f, :input)]))
        if JR.call(JR.lget(f, :list), :jm_contains, [JR.lget(f, :mappedToInput)]) do
            JR.call(JR.lget(f, :list), :jm_remove, [JR.lget(f, :mappedToInput)])
            JR.call(JR.get(this, :mappedList), :jm_remove, [JR.lget(f, :mappedToInput)])
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Removed: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :input)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" == "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :mappedToInput)])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "InputMapping::remove"])
        else
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, ["Not Deleted: "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :input)])])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [" == "])
            JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.call(JR.lget(f, :stringUtil), :jm_toString, [JR.lget(f, :mappedToInput)])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, "InputMapping::remove"])
        end
    end)
  end


  def jm_addMapping(this, p_inputToGameKeyMapping) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputToGameKeyMapping, p_inputToGameKeyMapping)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_add(this, p_input, p_mappedToInput) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
      JR.lset(f, :mappedToInput, p_mappedToInput)
        JR.lset(f, :list, JR.call(this, :jm_getMappedInput, [JR.lget(f, :input)]))
        if !JR.call(JR.lget(f, :list), :jm_contains, [JR.lget(f, :mappedToInput)]) do
            JR.call(JR.lget(f, :list), :jm_add, [JR.lget(f, :mappedToInput)])
            JR.call(JR.get(this, :mappedList), :jm_add, [JR.lget(f, :mappedToInput)])
        end
    end)
  end


  def jm_isMapped(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jreturn, JR.call(JR.get(this, :mappedList), :jm_contains, [JR.lget(f, :input)])})
    end)
  end


  def jm_getMappedInput(this, p_id) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
        JR.lset(f, :mappingInputCanBeNullList, JR.call(JR.get(this, :hashtable), :jm_get, [JR.lget(f, :id)]))
        if (JR.lget(f, :mappingInputCanBeNullList) == nil) do
            JR.lset(f, :list, BasicArrayListD.jnew())
            JR.call(JR.get(this, :hashtable), :jm_put, [JR.lget(f, :id), JR.lget(f, :list)])
            throw({:jreturn, JR.lget(f, :list)})
        end
        throw({:jreturn, JR.lget(f, :mappingInputCanBeNullList)})
    end)
  end


  def jm_getHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end
end


