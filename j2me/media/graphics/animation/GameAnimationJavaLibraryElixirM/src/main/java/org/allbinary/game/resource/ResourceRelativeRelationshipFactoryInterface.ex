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
# package org.allbinary.game.resource

defmodule ResourceRelativeRelationshipFactoryInterface do
  def jsuper(), do: JObject


  def jm_getResourceRelativeRelationshipList(this, p_resource) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      throw({:jexception, JR.exception("AbstractMethodError", "getResourceRelativeRelationshipList")})
    end)
  end


  def jm_addResourceRelativeRelationship(this, p_resource, p_relativeRelationship) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :relativeRelationship, p_relativeRelationship)
      throw({:jexception, JR.exception("AbstractMethodError", "addResourceRelativeRelationship")})
    end)
  end
end


