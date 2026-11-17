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
# package org.allbinary.logic.util.cache

defmodule CachePolicyFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CachePolicyFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :NAME, nil)
    JR.put(this, :MAX_TIME_THOUSAND_MAX, nil)
    JR.put(this, :THIRTY_MINUTES_TEN_THOUSAND_MAX, nil)
    JR.put(this, :THIRTY_MINUTES_FIFTY_THOUSAND_MAX, nil)
    JR.put(this, :ONE_MINUTE_FIVE_MAX, nil)
    JR.put(this, :ONE_MINUTE_TEN_MAX, nil)
    JR.put(this, :ONE_MINUTE_ONE_HUNDRED_MAX, nil)
        JR.put(this, :NAME, "lru")
        JR.put(this, :MAX_TIME_THOUSAND_MAX, CachePolicy.jnew(JR.get(this, :NAME), J.Long.jstatic_MAX_VALUE(), 1000))
        JR.put(this, :THIRTY_MINUTES_TEN_THOUSAND_MAX, CachePolicy.jnew(JR.get(this, :NAME), JR.int32(JR.int32(1000 * 60) * 30), 10000))
        JR.put(this, :THIRTY_MINUTES_FIFTY_THOUSAND_MAX, CachePolicy.jnew(JR.get(this, :NAME), JR.int32(JR.int32(1000 * 60) * 30), 100000))
        JR.put(this, :ONE_MINUTE_FIVE_MAX, CachePolicy.jnew(JR.get(this, :NAME), JR.int32(JR.int32(1000 * 60) * 1), 5))
        JR.put(this, :ONE_MINUTE_TEN_MAX, CachePolicy.jnew(JR.get(this, :NAME), JR.int32(JR.int32(1000 * 60) * 1), 10))
        JR.put(this, :ONE_MINUTE_ONE_HUNDRED_MAX, CachePolicy.jnew(JR.get(this, :NAME), JR.int32(JR.int32(1000 * 60) * 1), 100))
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
        throw({:jreturn, CachePolicyFactory.jstatic_instance()})
    end)
  end
end


