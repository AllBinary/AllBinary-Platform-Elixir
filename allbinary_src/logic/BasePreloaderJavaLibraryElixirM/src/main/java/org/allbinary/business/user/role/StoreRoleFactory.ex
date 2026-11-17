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
# package org.allbinary.business.user.role

defmodule StoreRoleFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> StoreRoleFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :roles, nil)
    JR.put(this, :subscriberRoles, nil)
    JR.put(this, :wholesaleRoles, nil)
        JR.put(this, :roles, BasicArrayListD.jnew())
        JR.put(this, :subscriberRoles, BasicArrayListD.jnew())
        JR.put(this, :wholesaleRoles, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, StoreRoleFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :basicUserRoleFactory, BasicUserRoleFactory.jm_getInstance())
        JR.call(JR.get(this, :roles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :CUSTOMER)])
        JR.call(JR.get(this, :roles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :SUBSCRIBERCUSTOMER)])
        JR.call(JR.get(this, :roles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :WHOLESALECUSTOMER)])
        JR.call(JR.get(this, :subscriberRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :SUBSCRIBERCUSTOMER)])
        JR.call(JR.get(this, :wholesaleRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :WHOLESALECUSTOMER)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :roles)})
    end)
  end


  def jm_getSubscriberRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :subscriberRoles)})
    end)
  end


  def jm_getWholesaleRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :wholesaleRoles)})
    end)
  end
end


