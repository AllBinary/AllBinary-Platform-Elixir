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

defmodule KeyValuePersistance do
  def jsuper(), do: BasicPersitance

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tsUtil, nil)
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
    nil
  end


  def jinit(this, p_recordId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :recordId, p_recordId)
        BasicPersitance.jinit(this, JR.lget(f, :recordId))
        KeyValuePersistance.jinitfields(this)
    end)
  end

  def jnew(p_recordId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_recordId)
    this
  end


  def jm_loadAll(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(this, :jm_loadAllSize, [JR.lget(f, :abeClientInformation), 1])
    end)
  end


  def jm_loadAllSize(this, p_abeClientInformation, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :size, p_size)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
            JR.lset(f, :hashtable, nil)
            JR.lset(f, :name, nil)
            JR.lset(f, :value, nil)
            JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.lset(f, :recordAsBytes, nil)
            JR.lset(f, :byteArrayInputStream, nil)
            JR.lset(f, :inputStream, nil)
            JR.jwhile(fn -> JR.call(JR.lget(f, :recordEnum), :jm_hasNextElement, []) end, fn ->
                JR.lset(f, :id, JR.call(JR.lget(f, :recordEnum), :jm_nextRecordId, []))
                JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :LOADING_ID)]), :jm_appendint, [JR.lget(f, :id)]), :jm_toString, []), this, JR.get(JR.get(this, :persistanceStrings), :LOAD_ALL)])
                JR.lset(f, :recordAsBytes, JR.call(JR.get(this, :tsUtil), :jm_getRecord, [JR.lget(f, :recordStore), JR.lget(f, :id)]))
                if (JR.lget(f, :recordAsBytes) != nil) do
                    JR.lset(f, :byteArrayInputStream, ByteArrayInputStream.jnew(JR.lget(f, :recordAsBytes)))
                    JR.lset(f, :inputStream, DataInputStream.jnew(JR.lget(f, :byteArrayInputStream)))
                    JR.lset(f, :hashtable, ABHashtable.jnew())
                    JR.lset(f, :index, 0)
                    JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                        JR.lset(f, :name, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                        JR.call(JR.lget(f, :inputStream), :jm_readUTF, [])
                        JR.lset(f, :value, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.lget(f, :name), JR.lget(f, :value)])
                    end)
                    JR.call(JR.get(this, :valueList), :jm_add, [JR.lget(f, :hashtable)])
                    JR.call(JR.get(this, :idList), :jm_add, [JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.lget(f, :id)])])
                end
            end)
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            if (JR.lget(f, :recordStore) != nil) do
                PreLogUtil.jm_put(JR.get(JR.get(this, :persistanceStrings), :CLOSING_RECORDSTORE), this, JR.get(JR.get(this, :persistanceStrings), :LOAD_ALL))
                JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
            end
        end
    end)
  end


  def jm_save(this, p_abeClientInformation, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :hashtable, p_hashtable)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :SAVING)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :SAVE)])
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.lset(f, :byteArrayOutputStream, J.ByteArrayOutputStream.jnew())
            JR.lset(f, :outputStream, DataOutputStream.jnew(JR.lget(f, :byteArrayOutputStream)))
            JR.lset(f, :value, nil)
            JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
            JR.lset(f, :objectArray, JR.call(HashtableUtil.jm_getInstance(), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
            JR.lset(f, :anyType, nil)
            JR.lset(f, :size, JR.alength(JR.lget(f, :objectArray)))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index))])
                JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
                JR.lset(f, :anyType, JR.aget(JR.lget(f, :objectArray), JR.lget(f, :index)))
                JR.lset(f, :value, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :anyType)]))
                JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.lget(f, :value)])
            end)
            JR.lset(f, :tsUtil, TsUtil.jm_getInstance())
            JR.lset(f, :savedGameBytes, JR.call(JR.lget(f, :tsUtil), :jm_getByteArray, [JR.call(JR.lget(f, :byteArrayOutputStream), :jm_toString, [])]))
            JR.call(JR.lget(f, :recordStore), :jm_addRecord, [JR.lget(f, :savedGameBytes), 0, JR.alength(JR.lget(f, :savedGameBytes))])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            if (JR.lget(f, :recordStore) != nil) do
                PreLogUtil.jm_put(JR.get(JR.get(this, :persistanceStrings), :CLOSING_RECORDSTORE), this, JR.get(JR.get(this, :commonStrings), :SAVE))
                JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
            end
        end
    end)
  end


  def jm_get(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        JR.lset(f, :hashtable, JR.aget(JR.get(JR.get(this, :valueList), :objectArray), JR.lget(f, :index)))
        throw({:jreturn, JR.lget(f, :hashtable)})
    end)
  end
end


