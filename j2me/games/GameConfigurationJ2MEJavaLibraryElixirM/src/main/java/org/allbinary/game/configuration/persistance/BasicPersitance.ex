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
# package org.allbinary.game.configuration.persistance

defmodule BasicPersitance do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :persistanceStrings, nil)
    JR.put(this, :platformRecordIdUtil, nil)
    JR.put(this, :recordId, nil)
    JR.put(this, :valueList, nil)
    JR.put(this, :idList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :persistanceStrings, PersistanceStrings.jm_getInstance())
        JR.put(this, :platformRecordIdUtil, PlatformRecordIdUtil.jm_getInstance())
        
        JR.put(this, :valueList, BasicArrayListD.jnew())
        JR.put(this, :idList, BasicArrayListD.jnew())
    nil
  end


  def jinit(this, p_recordId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :recordId, p_recordId)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :recordId, JR.lget(f, :recordId))
    end)
  end

  def jnew(p_recordId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_recordId)
    this
  end


  def jm_deleteRecoreStore(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        RecordStore.jm_deleteRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]))
    end)
  end


  def jm_deleteAll(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.lset(f, :size, JR.call(JR.get(this, :idList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :integer, JR.aget(JR.get(JR.get(this, :idList), :objectArray), JR.lget(f, :index)))
            JR.call(this, :jm_delete, [JR.lget(f, :abeClientInformation), JR.call(JR.lget(f, :integer), :jm_intValue, [])])
        end)
        JR.call(this, :jm_clear, [])
    end)
  end


  def jm_delete(this, p_abeClientInformation, p_deleteId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :deleteId, p_deleteId)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :DELETING_WITH_ID)]), :jm_appendint, [JR.lget(f, :deleteId)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :delete)])
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.call(JR.lget(f, :recordStore), :jm_deleteRecord, [JR.lget(f, :deleteId)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            if (JR.lget(f, :recordStore) != nil) do
                PreLogUtil.jm_put(JR.get(JR.get(this, :persistanceStrings), :CLOSING_RECORDSTORE), this, JR.get(JR.get(this, :commonStrings), :delete))
                JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
            end
        end
    end)
  end


  def jm_getRecordId(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        throw({:jreturn, JR.call(JR.get(this, :platformRecordIdUtil), :jm_getRecordId, [JR.lget(f, :abeClientInformation), JR.get(this, :recordId)])})
    end)
  end


  def jm_getList(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :valueList)})
    end)
  end


  def jm_getIds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :idList)})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :valueList), :jm_clear, [])
        JR.call(JR.get(this, :idList), :jm_clear, [])
    end)
  end
end


