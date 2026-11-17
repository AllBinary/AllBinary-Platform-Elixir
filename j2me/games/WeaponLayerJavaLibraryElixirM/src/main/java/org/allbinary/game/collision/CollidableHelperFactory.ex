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
# package org.allbinary.game.collision

defmodule CollidableHelperFactory do
  def jsuper(), do: JObject

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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if JR.call(Features.jm_getInstance(), :jm_isFeature, [JR.get(GameFeatureFactory.jm_getInstance(), :COLLISIONS_WITH_SOURCE)]) do
            throw({:jreturn, CollisionHelper.jnew(AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())})
        else
            throw({:jreturn, SourceCollisionHelper.jnew(AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER())})
        end
    end)
  end
end


