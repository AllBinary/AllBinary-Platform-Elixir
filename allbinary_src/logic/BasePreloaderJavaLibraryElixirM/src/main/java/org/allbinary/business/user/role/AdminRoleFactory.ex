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

defmodule AdminRoleFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> AdminRoleFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :adminRoles, nil)
    JR.put(this, :storeAdminRoles, nil)
    JR.put(this, :storeManagementRoles, nil)
    JR.put(this, :productManagementRoles, nil)
    JR.put(this, :reviewManagementRoles, nil)
    JR.put(this, :customerManagementRoles, nil)
    JR.put(this, :workflowManagementRoles, nil)
    JR.put(this, :orderManagementRoles, nil)
    JR.put(this, :adjusterManagementRoles, nil)
    JR.put(this, :shippingManagementRoles, nil)
    JR.put(this, :webManagementRoles, nil)
        JR.put(this, :adminRoles, BasicArrayListD.jnew())
        JR.put(this, :storeAdminRoles, BasicArrayListD.jnew())
        JR.put(this, :storeManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :productManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :reviewManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :customerManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :workflowManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :orderManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :adjusterManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :shippingManagementRoles, BasicArrayListD.jnew())
        JR.put(this, :webManagementRoles, BasicArrayListD.jnew())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, AdminRoleFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.lset(f, :basicUserRoleFactory, BasicUserRoleFactory.jm_getInstance())
        JR.call(JR.get(this, :adminRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :storeAdminRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :storeAdminRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :CUSTOMERMANAGER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADJUSTER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :PRODUCTMANAGER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :REVIEWER)])
        JR.call(JR.get(this, :storeManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :SHIPPING)])
        JR.call(JR.get(this, :productManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :productManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :productManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :PRODUCTMANAGER)])
        JR.call(JR.get(this, :reviewManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :reviewManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :reviewManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :REVIEWER)])
        JR.call(JR.get(this, :customerManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :customerManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :customerManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :CUSTOMERMANAGER)])
        JR.call(JR.get(this, :workflowManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :workflowManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :workflowManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :WORKFLOWEDITOR)])
        JR.call(JR.get(this, :orderManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :orderManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :adjusterManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :adjusterManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :adjusterManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADJUSTER)])
        JR.call(JR.get(this, :shippingManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :shippingManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :shippingManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :SHIPPING)])
        JR.call(JR.get(this, :webManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :ADMINISTRATOR)])
        JR.call(JR.get(this, :webManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :STOREMANAGER)])
        JR.call(JR.get(this, :webManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :WEBMANAGER)])
        JR.call(JR.get(this, :webManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :WORKFLOWEDITOR)])
        JR.call(JR.get(this, :webManagementRoles), :jm_add, [JR.get(JR.lget(f, :basicUserRoleFactory), :VIEWEDITOR)])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getProductManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :productManagementRoles)})
    end)
  end


  def jm_getAdminRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :adminRoles)})
    end)
  end


  def jm_getStoreAdminRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :storeAdminRoles)})
    end)
  end


  def jm_getStoreManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :storeManagementRoles)})
    end)
  end


  def jm_getReviewManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :reviewManagementRoles)})
    end)
  end


  def jm_getCustomerManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :customerManagementRoles)})
    end)
  end


  def jm_getWorkflowManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :workflowManagementRoles)})
    end)
  end


  def jm_getWebManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :webManagementRoles)})
    end)
  end


  def jm_getShippingManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :shippingManagementRoles)})
    end)
  end


  def jm_getAdjusterManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :adjusterManagementRoles)})
    end)
  end


  def jm_getOrderManagementRoles(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :orderManagementRoles)})
    end)
  end
end


