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
# package org.allbinary.game.ag.vector

defmodule MineVectorData do
  def jsuper(), do: JObject
def jstatic_points(), do: JR.static_get(__MODULE__, :points, fn -> JR.afrom([JR.afrom([JR.afrom([10, 5]), JR.afrom([2, 6]), JR.afrom([1000, 1000]), JR.afrom([2, 2]), JR.afrom([10, 9]), JR.afrom([1000, 1000]), JR.afrom([10, 2]), JR.afrom([2, 9]), JR.afrom([1000, 1000]), JR.afrom([2, 5]), JR.afrom([10, 6]), JR.afrom([1000, 1000]), JR.afrom([7, 9]), JR.afrom([5, 2]), JR.afrom([1000, 1000]), JR.afrom([7, 2]), JR.afrom([5, 9]), JR.afrom([1000, 1000])])]) end)
  def jstatic_set_points(value), do: JR.static_put(__MODULE__, :points, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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
end


