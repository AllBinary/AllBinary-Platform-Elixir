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
# package org.allbinary.graphics

defmodule RectangleFactory do
  def jsuper(), do: JObject
def jstatic_SINGLETON(), do: JR.static_get(__MODULE__, :SINGLETON, fn -> Rectangle.jnew(JR.get(PointFactory.jm_getInstance(), :ZERO_ZERO), 0, 0) end)
  def jstatic_set_SINGLETON(value), do: JR.static_put(__MODULE__, :SINGLETON, value)
def jstatic_ARRAY_OF_ARRAYS(), do: JR.static_get(__MODULE__, :ARRAY_OF_ARRAYS, fn -> JR.anew_of(0, fn -> JR.anew(0, nil) end) end)
  def jstatic_set_ARRAY_OF_ARRAYS(value), do: JR.static_put(__MODULE__, :ARRAY_OF_ARRAYS, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
end


