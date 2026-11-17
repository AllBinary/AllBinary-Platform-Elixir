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
# package org.allbinary.math

defmodule PositionStrings do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> PositionStrings.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :X, nil)
    JR.put(this, :Y, nil)
    JR.put(this, :X_LABEL, nil)
    JR.put(this, :Y_LABEL, nil)
    JR.put(this, :Z_LABEL, nil)
    JR.put(this, :DX_LABEL, nil)
    JR.put(this, :DY_LABEL, nil)
    JR.put(this, :DZ_LABEL, nil)
        JR.put(this, :X, "x")
        JR.put(this, :Y, "y")
        JR.put(this, :X_LABEL, "x: ")
        JR.put(this, :Y_LABEL, "y: ")
        JR.put(this, :Z_LABEL, "z: ")
        JR.put(this, :DX_LABEL, "dx: ")
        JR.put(this, :DY_LABEL, "dy: ")
        JR.put(this, :DZ_LABEL, "dz: ")
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
        throw({:jreturn, PositionStrings.jstatic_instance()})
    end)
  end
end


