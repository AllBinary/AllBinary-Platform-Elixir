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
# package org.allbinary.game.score

defmodule HighScoreNamePersistanceSingleton do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> HighScoreNamePersistanceSingleton.jnew() end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :platformRecordIdUtil, nil)
    JR.put(this, :RECORD_ID, nil)
    JR.put(this, :name, nil)
    JR.put(this, :nameBasicArrayList, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :platformRecordIdUtil, PlatformRecordIdUtil.jm_getInstance())
        JR.put(this, :RECORD_ID, "_SN")
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :nameBasicArrayList, BasicArrayListD.jnew())
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
        throw({:jreturn, HighScoreNamePersistanceSingleton.jstatic_SINGLETON()})
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.put(this, :name, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
    end)
  end


  def jm_deleteAll(this, p_abeClientInformation, p_gameInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
        JR.lset(f, :size, JR.call(JR.get(this, :nameBasicArrayList), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :integer, JR.aget(JR.get(JR.get(this, :nameBasicArrayList), :objectArray), JR.lget(f, :index)))
            JR.call(this, :jm_delete, [JR.lget(f, :abeClientInformation), JR.lget(f, :gameInfo), JR.call(JR.lget(f, :integer), :jm_intValue, [])])
        end)
        JR.call(this, :jm_clear, [])
    end)
  end


  def jm_getRecordId(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        throw({:jreturn, JR.call(JR.get(this, :platformRecordIdUtil), :jm_getRecordId, [JR.lget(f, :abeClientInformation), JR.get(this, :RECORD_ID)])})
    end)
  end


  def jm_delete(this, p_abeClientInformation, p_gameInfo, p_deleteId) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :deleteId, p_deleteId)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Deleting: "]), :jm_appendint, [JR.lget(f, :deleteId)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :delete)])
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.call(JR.lget(f, :recordStore), :jm_deleteRecord, [JR.lget(f, :deleteId)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            if (JR.lget(f, :recordStore) != nil) do
                PreLogUtil.jm_put("Closing RecordStore", this, JR.get(JR.get(this, :commonStrings), :delete))
                JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
            end
        end
    end)
  end


  def jm_getIds(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :nameBasicArrayList)})
    end)
  end


  def jm_load(this, p_abeClientInformation, p_gameInfo) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            if (JR.get(this, :name) == JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)) do
                JR.lset(f, :LOADING_ID, "Loading id: ")
                JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
                JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
                JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
                JR.lset(f, :recordAsBytes, nil)
                JR.lset(f, :byteArrayInputStream, nil)
                JR.lset(f, :inputStream, nil)
                JR.jwhile(fn -> JR.call(JR.lget(f, :recordEnum), :jm_hasNextElement, []) end, fn ->
                    JR.lset(f, :id, JR.call(JR.lget(f, :recordEnum), :jm_nextRecordId, []))
                    JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.lget(f, :LOADING_ID)]), :jm_appendint, [JR.lget(f, :id)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :LOAD)])
                    JR.lset(f, :recordAsBytes, JR.call(JR.get(this, :tsUtil), :jm_getRecord, [JR.lget(f, :recordStore), JR.lget(f, :id)]))
                    JR.lset(f, :byteArrayInputStream, ByteArrayInputStream.jnew(JR.lget(f, :recordAsBytes)))
                    JR.lset(f, :inputStream, DataInputStream.jnew(JR.lget(f, :byteArrayInputStream)))
                    JR.jwhile(fn -> (JR.call(JR.lget(f, :inputStream), :jm_available, []) > 0) end, fn ->
                        JR.put(this, :name, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                    end)
                    JR.call(JR.get(this, :nameBasicArrayList), :jm_add, [JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.lget(f, :id)])])
                end)
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(this, :jm_save, [JR.lget(f, :abeClientInformation), JR.lget(f, :gameInfo), JR.get(this, :name)])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(JR.get(this, :commonStrings), :EXCEPTION_LABEL)]), :jm_append, [JR.call(ExceptionUtil.jm_getInstance(), :jm_getStackTrace, [JR.lget(f, :e)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :LOAD)])
        after
            try do
                if (JR.lget(f, :recordStore) != nil) do
                    PreLogUtil.jm_put("Closing RecordStore", this, JR.get(JR.get(this, :commonStrings), :LOAD))
                    JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :LOAD), JR.lget(f, :e)])
            end
        end
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_save(this, p_abeClientInformation, p_gameInfo, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :name, p_name)
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Saving: "]), :jm_append, [JR.lget(f, :name)]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :SAVE)])
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.lset(f, :byteArrayOutputStream, J.ByteArrayOutputStream.jnew())
            JR.lset(f, :outputStream, DataOutputStream.jnew(JR.lget(f, :byteArrayOutputStream)))
            JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.lget(f, :name)])
            JR.lset(f, :savedGameBytes, JR.call(JR.lget(f, :byteArrayOutputStream), :jm_toByteArray, []))
            JR.call(JR.lget(f, :recordStore), :jm_addRecord, [JR.lget(f, :savedGameBytes), 0, JR.alength(JR.lget(f, :savedGameBytes))])
            JR.put(this, :name, JR.lget(f, :name))
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :SAVE), JR.lget(f, :e)])
        after
            try do
                if (JR.lget(f, :recordStore) != nil) do
                    PreLogUtil.jm_put("Closing RecordStore", this, JR.get(JR.get(this, :commonStrings), :SAVE))
                    JR.call(JR.lget(f, :recordStore), :jm_closeRecordStore, [])
                end
            catch
                {:jexception, jexception} ->
                    JR.lset(f, :e, jexception)
                JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :SAVE), JR.lget(f, :e)])
            end
        end
    end)
  end
end


