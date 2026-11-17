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
# package org.allbinary.layer

defmodule LayerManagerLogging do
  def jsuper(), do: LayerManagerLoggingBase
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> LayerManagerLogging.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)
def jstatic_removeFailed(), do: JR.static_get(__MODULE__, :removeFailed, fn -> false end)
  def jstatic_set_removeFailed(value), do: JR.static_put(__MODULE__, :removeFailed, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :stringBuilder, nil)
    JR.put(this, :APPEND, nil)
    JR.put(this, :APPEND_, nil)
    JR.put(this, :_AT_, nil)
    JR.put(this, :ATTEMPT_REMOVE_, nil)
    JR.put(this, :REMOVE_, nil)
    JR.put(this, :REMOVE, nil)
    JR.put(this, :DID_NOT_REMOVE, nil)
    JR.put(this, :CLEAR, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :stringBuilder, StringMaker.jnew())
        JR.put(this, :APPEND, "append")
        JR.put(this, :APPEND_, " append: ")
        JR.put(this, :_AT_, " at: ")
        JR.put(this, :ATTEMPT_REMOVE_, " Remove Attempt: ")
        JR.put(this, :REMOVE_, " Remove: ")
        JR.put(this, :REMOVE, "remove")
        JR.put(this, :DID_NOT_REMOVE, " Did not remove: ")
        JR.put(this, :CLEAR, " Clear List")
    nil
  end

  def jinit(this) do
    LayerManagerLoggingBase.jinit(this)
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
        throw({:jreturn, LayerManagerLogging.jstatic_instance()})
    end)
  end


  def jm_append(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :APPEND_)]), :jm_append, [JR.call(JR.lget(f, :layerInterface), :jm_getName, [])]), :jm_toString, []), this, JR.get(this, :APPEND)])
    end)
  end


  def jm_appendAt(this, p_layerInterface, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :APPEND_)]), :jm_append, [JR.call(JR.lget(f, :layerInterface), :jm_getName, [])]), :jm_append, [JR.get(this, :_AT_)]), :jm_appendint, [JR.lget(f, :index)]), :jm_toString, []), this, JR.get(this, :APPEND)])
    end)
  end


  def jm_remove(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        if (JR.lget(f, :layerInterface) == nil) do
            JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :ATTEMPT_REMOVE_)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :layerInterface)])]), :jm_toString, []), this, JR.get(this, :REMOVE)])
        else
            JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :ATTEMPT_REMOVE_)]), :jm_append, [JR.call(JR.lget(f, :layerInterface), :jm_getName, [])]), :jm_toString, []), this, JR.get(this, :REMOVE)])
        end
    end)
  end


  def jm_removeResult(this, p_layerManager, p_layerInterface, p_result) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :result, p_result)
        if (JR.lget(f, :layerInterface) == nil) do
            JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :REMOVE_)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :layerInterface)])]), :jm_toString, []), this, JR.get(this, :REMOVE)])
        else
            if JR.lget(f, :result) do
            if LayerManagerLogging.jstatic_removeFailed() do
                JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
                JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :REMOVE_)]), :jm_append, [JR.call(JR.lget(f, :layerInterface), :jm_getName, [])]), :jm_toString, []), this, JR.get(this, :REMOVE)])
            end
        else
            JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :DID_NOT_REMOVE)]), :jm_append, [JR.call(JR.lget(f, :layerInterface), :jm_getName, [])]), :jm_toString, []), this, JR.get(this, :REMOVE)])
            LayerManagerLogging.jstatic_set_removeFailed(true)
        end
        end
    end)
  end


  def jm_log(this, p_layerManager) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManager, p_layerManager)
        JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
        JR.lset(f, :size, JR.call(JR.lget(f, :layerManager), :jm_getSize, []))
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        JR.call(JR.call(JR.get(this, :stringBuilder), :jm_append, [J.Integer.jm_toHexString(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [JR.lget(f, :layerManager)]))]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COLON_SEP)])
        JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.lget(f, :size)]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COLON_SEP)])
        JR.lset(f, :allBinaryLayer, nil)
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :allBinaryLayer, (JR.call(JR.lget(f, :layerManager), :jm_getLayerAt, [JR.lget(f, :index)])))
            JR.call(JR.call(JR.get(this, :stringBuilder), :jm_append, [JR.call(JR.lget(f, :allBinaryLayer), :jm_getName, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COMMA)])
        end)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.get(this, :stringBuilder), :jm_toString, []), this, JR.get(this, :REMOVE)])
    end)
  end


  def jm_clear(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :stringBuilder), :jm_delete, [0, JR.call(JR.get(this, :stringBuilder), :jm_length, [])])
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.get(this, :stringBuilder), :jm_appendint, [JR.int32(JR.call(TsUtil.jm_getInstance(), :jm_hashCode, [this]))]), :jm_append, [JR.get(this, :CLEAR)]), :jm_toString, []), this, JR.get(this, :CLEAR)])
    end)
  end
end


