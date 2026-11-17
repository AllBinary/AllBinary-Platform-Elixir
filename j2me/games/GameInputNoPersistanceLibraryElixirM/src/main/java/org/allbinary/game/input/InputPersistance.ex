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
# package org.allbinary.game.input

#GameInputNoPersistanceLibrary
defmodule InputPersistance do
  def jsuper(), do: BasicPersitance

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :hashtableUtil, nil)
        JR.put(this, :hashtableUtil, HashtableUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        BasicPersitance.jinit(this, JR.lget(f, :name))
        InputPersistance.jinitfields(this)
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
  end


  def jm_loadAll(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
        JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
        JR.lset(f, :hashtable, nil)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
        JR.lset(f, :id, 0)
        JR.jwhile(fn -> JR.call(JR.lget(f, :recordEnum), :jm_hasNextElement, []) end, fn ->
            JR.lset(f, :id, JR.call(JR.lget(f, :recordEnum), :jm_nextRecordId, []))
            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :LOADING_ID)]), :jm_appendint, [JR.lget(f, :id)]), :jm_toString, []), this, JR.get(JR.get(this, :persistanceStrings), :LOAD_ALL)])
            JR.lset(f, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
            JR.call(JR.get(this, :valueList), :jm_add, [JR.lget(f, :hashtable)])
            JR.call(JR.get(this, :idList), :jm_add, [JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.lget(f, :id)])])
        end)
        JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
    end)
  end


  def jm_save(this, p_abeClientInformation, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :hashtable, p_hashtable)
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :NOT_SAVING)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :SAVE))
        JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
        JR.lset(f, :gameActionInput, nil)
        JR.lset(f, :list, nil)
        JR.lset(f, :input, nil)
        JR.lset(f, :inputObjectArray, JR.call(JR.get(this, :hashtableUtil), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
        JR.lset(f, :size, JR.alength(JR.lget(f, :inputObjectArray)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :gameActionInput, JR.aget(JR.lget(f, :inputObjectArray), JR.lget(f, :index)))
            JR.lset(f, :list, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.aget(JR.lget(f, :inputObjectArray), JR.lget(f, :index))]))
            JR.lset(f, :index2, 0)
            JR.jfor(fn -> (JR.lget(f, :index2) < JR.call(JR.lget(f, :list), :jm_size, [])) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                JR.lset(f, :input, JR.call(JR.lget(f, :list), :jm_get, [JR.lget(f, :index2)]))
            end)
        end)
        JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
    end)
  end
end


