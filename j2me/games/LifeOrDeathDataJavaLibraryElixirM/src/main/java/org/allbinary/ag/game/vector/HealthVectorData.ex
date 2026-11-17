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
# package org.allbinary.ag.game.vector

defmodule HealthVectorData do
  def jsuper(), do: JObject
def jstatic_points(), do: JR.static_get(__MODULE__, :points, fn -> JR.afrom([JR.afrom([JR.afrom([2, 1]), JR.afrom([3, 2]), JR.afrom([3, 2]), JR.afrom([4, 1]), JR.afrom([4, 1]), JR.afrom([5, 1]), JR.afrom([5, 1]), JR.afrom([6, 2]), JR.afrom([6, 2]), JR.afrom([6, 3]), JR.afrom([6, 3]), JR.afrom([3, 6]), JR.afrom([3, 6]), JR.afrom([0, 3]), JR.afrom([0, 3]), JR.afrom([0, 2]), JR.afrom([0, 2]), JR.afrom([1, 1]), JR.afrom([1, 1]), JR.afrom([2, 1]), JR.afrom([1000, 1000])])]) end)
  def jstatic_set_points(value), do: JR.static_put(__MODULE__, :points, value)

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


