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

#GameInputPersistanceLibrary
defmodule InputPersistance do
  def jsuper(), do: BasicPersitance

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tsUtil, nil)
    JR.put(this, :hashtableUtil, nil)
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
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
        JR.lset(f, :recordStore, NullRecordStore.jstatic_NULL_RECORD_STORE())
        try do
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.lset(f, :recordEnum, JR.call(JR.lget(f, :recordStore), :jm_enumerateRecords, [NullRecordFilter.jstatic_NULL_RECORD_FILTER(), NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR(), true]))
            JR.lset(f, :gameActionInputId, 0)
            JR.lset(f, :inputId, 0)
            JR.lset(f, :gameActionInput, nil)
            JR.lset(f, :input, nil)
            JR.lset(f, :hashtable, nil)
            JR.lset(f, :gameKeyFactory, GameKeyMappingFactory.jm_getInstance())
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
            JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
            JR.lset(f, :stdUtil, StdUtil.jm_getInstance())
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
                    JR.lset(f, :hashtable, JR.call(JR.lget(f, :stdUtil), :jm_createHashtable, []))
                    JR.lset(f, :value, 0)
                    JR.jwhile(fn -> (JR.call(JR.lget(f, :inputStream), :jm_available, []) > 0) end, fn ->
                        JR.lset(f, :gameActionInputIdAsString, JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))
                        JR.lset(f, :value, String.to_integer(String.trim(JR.lget(f, :gameActionInputIdAsString))))
                        JR.lset(f, :gameActionInputId, JR.lget(f, :value))
                        JR.call(JR.lget(f, :inputStream), :jm_readUTF, [])
                        JR.lset(f, :value, String.to_integer(String.trim(JR.call(JR.lget(f, :inputStream), :jm_readUTF, []))))
                        JR.lset(f, :inputId, JR.lget(f, :value))
                        JR.lset(f, :gameActionInput, JR.call(JR.lget(f, :gameKeyFactory), :jm_getGameKey, [JR.int32(JR.lget(f, :gameActionInputId))]))
                        JR.lset(f, :input, JR.call(JR.lget(f, :inputFactory), :jm_getInstanceById, [JR.int32(JR.lget(f, :inputId))]))
                        if ((JR.lget(f, :input) == JR.get(JR.lget(f, :inputFactory), :NO_INPUT)) || (JR.lget(f, :gameActionInput) == nil)) do
                            JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
                            if (JR.lget(f, :input) == JR.get(JR.lget(f, :inputFactory), :NO_INPUT)) do
                                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :ERROR_LOADING_ID)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.lget(f, :inputId)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :GAME_ACTION_INPUT)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.lget(f, :gameActionInputId)])
                                PreLogUtil.jm_put(JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :persistanceStrings), :LOAD_ALL))
                            end
                            if (JR.lget(f, :gameActionInput) == nil) do
                                JR.call(JR.lget(f, :stringBuffer), :jm_delete, [0, JR.call(JR.lget(f, :stringBuffer), :jm_length, [])])
                                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :ERROR_LOADING)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.lget(f, :gameActionInputId)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :ID)])
                                JR.call(JR.lget(f, :stringBuffer), :jm_appendlong, [JR.lget(f, :inputId)])
                                PreLogUtil.jm_put(JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :persistanceStrings), :LOAD_ALL))
                            end
                        else
                            nil
                        end
                        JR.call(JR.lget(f, :hashtable), :jm_put, [JR.lget(f, :input), JR.lget(f, :gameActionInput)])
                    end)
                    JR.call(JR.get(this, :valueList), :jm_add, [JR.lget(f, :hashtable)])
                    JR.call(JR.get(this, :idList), :jm_add, [JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.lget(f, :id)])])
                else
                    nil
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
            JR.lset(f, :stringBuffer, StringMaker.jnew())
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.lget(f, :stringBuffer), :jm_append, [JR.get(JR.get(this, :persistanceStrings), :SAVING)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :SAVE))
            JR.lset(f, :recordStore, RecordStore.jm_openRecordStore(JR.call(this, :jm_getRecordId, [JR.lget(f, :abeClientInformation)]), true))
            JR.lset(f, :byteArrayOutputStream, J.ByteArrayOutputStream.jnew())
            JR.lset(f, :outputStream, DataOutputStream.jnew(JR.lget(f, :byteArrayOutputStream)))
            JR.lset(f, :gameActionInput, nil)
            JR.lset(f, :list, nil)
            JR.lset(f, :input, nil)
            JR.lset(f, :savedGameBytes, nil)
            JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
            JR.lset(f, :smallIntegerSingletonFactory, SmallIntegerSingletonFactory.jm_getInstance())
            JR.lset(f, :inputObjectArray, JR.call(JR.get(this, :hashtableUtil), :jm_getKeysAsArray, [JR.lget(f, :hashtable)]))
            JR.lset(f, :size, JR.alength(JR.lget(f, :inputObjectArray)))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :gameActionInput, JR.aget(JR.lget(f, :inputObjectArray), JR.lget(f, :index)))
                JR.lset(f, :list, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.aget(JR.lget(f, :inputObjectArray), JR.lget(f, :index))]))
                JR.lset(f, :index2, 0)
                JR.jfor(fn -> (JR.lget(f, :index2) < JR.call(JR.lget(f, :list), :jm_size, [])) end, fn -> JR.lpostinc(f, :index2, 1) end, fn ->
                    JR.lset(f, :gameActionInputIdAsString, JR.call(JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.call(JR.lget(f, :gameActionInput), :jm_getId, [])]), :jm_toString, []))
                    JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.lget(f, :gameActionInputIdAsString)])
                    JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.get(JR.lget(f, :commonSeps), :EQUALS)])
                    JR.lset(f, :input, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index2)))
                    JR.lset(f, :inputIdAsString, JR.call(JR.call(JR.lget(f, :smallIntegerSingletonFactory), :jm_getAt, [JR.call(JR.lget(f, :input), :jm_getId, [])]), :jm_toString, []))
                    JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.lget(f, :inputIdAsString)])
                end)
            end)
            JR.lset(f, :savedGameBytes, JR.call(JR.lget(f, :byteArrayOutputStream), :jm_toByteArray, []))
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
end


