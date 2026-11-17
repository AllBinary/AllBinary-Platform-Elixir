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

#GameInputNoPersistanceLibrary
defmodule PersistentInputMapping do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :enumerationUtil, nil)
    JR.put(this, :inputMapping, nil)
    JR.put(this, :inputMappingEventListenerInterface, nil)
    JR.put(this, :inputPersistance, nil)
    JR.put(this, :inputMappingEvent, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :enumerationUtil, EnumerationUtil.jm_getInstance())
        JR.put(this, :inputMapping, InputToGameKeyMapping.jnew())
        JR.put(this, :inputMappingEventListenerInterface, NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER())
        
        JR.put(this, :inputMappingEvent, InputMappingEvent.jnew(this))
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (PersistentInputMapping.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            PersistentInputMapping.jstatic_set_instance(PersistentInputMapping.jnew(JR.get(GamePersistanceStrings.jm_getInstance(), :SAVED_INPUT_CONFIGURATION_RECORD_ID)))
        end
        throw({:jreturn, PersistentInputMapping.jstatic_instance()})
    end)
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :inputPersistance, InputPersistance.jnew(JR.lget(f, :name)))
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
  end


  def jm_getTotalMapped(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.call(JR.call(this, :jm_getInputMapping, []), :jm_getHashtable, []), :jm_size, [])})
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


  def jm_setDefault(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(JR.call(this, :jm_getInputMapping, []), :jm_removeAll, [])
        JR.call(JR.call(this, :jm_getInputMapping, []), :jm_addMapping, [JR.call(this, :jm_getDefault, [])])
        JR.call(this, :jm_save, [JR.lget(f, :abeClientInformation)])
    end)
  end


  def jm_update(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(JR.get(this, :inputPersistance), :jm_deleteAll, [JR.lget(f, :abeClientInformation)])
        JR.call(this, :jm_save, [JR.lget(f, :abeClientInformation)])
    end)
  end


  def jm_save(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(JR.get(this, :inputPersistance), :jm_save, [JR.lget(f, :abeClientInformation), JR.call(JR.call(this, :jm_getInputMapping, []), :jm_getHashtable, [])])
        JR.call(JR.get(this, :inputMappingEvent), :jm_setInputToGameKeyMapping, [JR.call(this, :jm_getInputMapping, [])])
        if (JR.call(this, :jm_getInputMappingEventListenerInterface, []) != nil) do
            JR.call(JR.call(this, :jm_getInputMappingEventListenerInterface, []), :jm_onInputMappingEvent, [JR.get(this, :inputMappingEvent)])
        end
    end)
  end


  def jm_init(this, p_abeClientInformation) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :abeClientInformation, p_abeClientInformation)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :INIT)])
        try do
            JR.call(JR.get(this, :inputPersistance), :jm_loadAll, [JR.lget(f, :abeClientInformation)])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE(JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.get(JR.get(this, :commonStrings), :INIT), JR.lget(f, :e))
            JR.call(JR.get(this, :inputPersistance), :jm_deleteRecoreStore, [JR.lget(f, :abeClientInformation)])
            JR.call(this, :jm_setDefault, [JR.lget(f, :abeClientInformation)])
            JR.call(JR.get(this, :inputPersistance), :jm_loadAll, [JR.lget(f, :abeClientInformation)])
        end
        JR.lset(f, :list, JR.call(JR.get(this, :inputPersistance), :jm_getList, []))
        JR.lset(f, :totalMappedTo, 0)
        JR.lset(f, :size, JR.call(JR.lget(f, :list), :jm_size, []))
        JR.lset(f, :hashtable, nil)
        JR.lset(f, :enumeration, nil)
        JR.lset(f, :mappedToInput, nil)
        JR.lset(f, :gameActionInput, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :hashtable, JR.aget(JR.get(JR.lget(f, :list), :objectArray), JR.lget(f, :index)))
            JR.lset(f, :enumeration, JR.call(JR.lget(f, :hashtable), :jm_keys, []))
            JR.jwhile(fn -> JR.call(JR.get(this, :enumerationUtil), :jm_hasMoreElements, [JR.lget(f, :enumeration)]) end, fn ->
                JR.lset(f, :mappedToInput, JR.call(JR.get(this, :enumerationUtil), :jm_nextElement, [JR.lget(f, :enumeration)]))
                JR.lset(f, :gameActionInput, JR.call(JR.lget(f, :hashtable), :jm_get, [JR.lget(f, :mappedToInput)]))
                JR.lpostinc(f, :totalMappedTo, 1)
                JR.call(JR.call(this, :jm_getInputMapping, []), :jm_add, [JR.lget(f, :gameActionInput), JR.lget(f, :mappedToInput)])
            end)
        end)
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["End - Total Loaded Keys Mapped: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.call(this, :jm_getTotalMapped, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" to: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendint, [JR.lget(f, :totalMappedTo)])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.lget(f, :stringBuffer), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :INIT)])
    end)
  end


  def jm_setInputMappingEventListenerInterface(this, p_inputMappingEventListenerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :inputMappingEventListenerInterface, p_inputMappingEventListenerInterface)
        JR.put(this, :inputMappingEventListenerInterface, JR.lget(f, :inputMappingEventListenerInterface))
    end)
  end


  def jm_getInputMappingEventListenerInterface(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :inputMappingEventListenerInterface)})
    end)
  end


  def jm_getInputMapping(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :inputMapping)})
    end)
  end


  def jm_isDelete(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end


  def jm_isSystemInput(this, p_input) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :input, p_input)
        throw({:jexception, JR.exception("Exception", JR.get(JR.get(this, :commonStrings), :NOT_IMPLEMENTED))})
    end)
  end
end


