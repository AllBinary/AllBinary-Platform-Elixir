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
# package org.allbinary.game.layer.resources

defmodule BasicGameResources do
  def jsuper(), do: JObject
def jstatic_stringBuffer(), do: JR.static_get(__MODULE__, :stringBuffer, fn -> StringMaker.jnew() end)
  def jstatic_set_stringBuffer(value), do: JR.static_put(__MODULE__, :stringBuffer, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :RESOURCE, nil)
    JR.put(this, :RESOURCE_DESTROY, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :RESOURCE, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        JR.put(this, :RESOURCE_DESTROY, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
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


  def jm_init(this, p_ROOT, p_SIZE) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ROOT, p_ROOT)
      JR.lset(f, :SIZE, p_SIZE)
        try do
            JR.lset(f, :scale, JR.call(JR.call(JR.get(GameConfigurationCentral.jm_getInstance(), :SCALE), :jm_getValue, []), :jm_intValue, []))
            if ((JR.lget(f, :scale) > 1) && (JR.int32(JR.lget(f, :scale) - 1) < JR.alength(JR.lget(f, :SIZE)))) do
                JR.call(this, :jm_append, [JR.lget(f, :ROOT), JR.aget(JR.lget(f, :SIZE), JR.int32(JR.lget(f, :scale) - 1))])
            else
                throw({:jexception, JR.exception("Exception", JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Invalid Value: "]), :jm_appendint, [JR.lget(f, :scale)]), :jm_toString, []))})
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :INIT), JR.lget(f, :e)])
        end
    end)
  end


  def jm_append(this, p_ROOT, p_sizeString) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :ROOT, p_ROOT)
      JR.lset(f, :sizeString, p_sizeString)
        JR.lset(f, :DESTROY, "_destroy")
        JR.lset(f, :string, JR.call(this, :jm_getString, []))
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_delete, [0, JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_length, [])])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :ROOT)])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :string)])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :sizeString)])
        JR.put(this, :RESOURCE, JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_toString, []))
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_delete, [0, JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_length, [])])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :ROOT)])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :DESTROY)])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :string)])
        JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_append, [JR.lget(f, :sizeString)])
        JR.put(this, :RESOURCE_DESTROY, JR.call(BasicGameResources.jstatic_stringBuffer(), :jm_toString, []))
    end)
  end


  def jm_getString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(GameGraphicsResourceUtil.jm_getInstance(), :jm_getName, [])})
    end)
  end
end


