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

defmodule BasicUserRole do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :m_int_RoleId, 0)
    JR.put(this, :role, nil)
    JR.put(this, :displayValue, nil)
    JR.put(this, :sessionTimeout, 0)
    JR.put(this, :sessionInactivityTimeout, 0)
        
        
        
        
        
    nil
  end


  def jinit(this, p_aRole, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :aRole, p_aRole)
      JR.lset(f, :a_int_RoleId, p_a_int_RoleId)
      JR.lset(f, :aSessionTimeout, p_aSessionTimeout)
      JR.lset(f, :aSessionInactivityTimeout, p_aSessionInactivityTimeout)
        BasicUserRole.jinit(this, JR.lget(f, :aRole), JR.lget(f, :aRole), JR.lget(f, :a_int_RoleId), JR.lget(f, :aSessionTimeout), JR.lget(f, :aSessionInactivityTimeout))
    end)
  end

  def jnew(p_aRole, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_aRole, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout)
    this
  end


  def jinit(this, p_aRole, p_aDisplayValue, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :aRole, p_aRole)
      JR.lset(f, :aDisplayValue, p_aDisplayValue)
      JR.lset(f, :a_int_RoleId, p_a_int_RoleId)
      JR.lset(f, :aSessionTimeout, p_aSessionTimeout)
      JR.lset(f, :aSessionInactivityTimeout, p_aSessionInactivityTimeout)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :m_int_RoleId, JR.lget(f, :a_int_RoleId))
        JR.put(this, :role, JR.lget(f, :aRole))
        JR.put(this, :displayValue, JR.lget(f, :aDisplayValue))
        JR.put(this, :sessionTimeout, JR.lget(f, :aSessionTimeout))
        JR.put(this, :sessionInactivityTimeout, JR.lget(f, :aSessionInactivityTimeout))
        JR.call(JR.get(BasicUserRoles.jm_getInstance(), :roleVector), :jm_add, [this])
    end)
  end

  def jnew(p_aRole, p_aDisplayValue, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_aRole, p_aDisplayValue, p_a_int_RoleId, p_aSessionTimeout, p_aSessionInactivityTimeout)
    this
  end


  def jm_getRoleId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :m_int_RoleId)})
    end)
  end


  def jm_getRole(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :role)})
    end)
  end


  def jm_getSessionTimeout(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sessionTimeout)})
    end)
  end


  def jm_getSessionInactivityTimeout(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :sessionInactivityTimeout)})
    end)
  end


  def jm_equals(this, p_basicUserRole) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :basicUserRole, p_basicUserRole)
        if (JR.call(this, :jm_getRoleId, []) == JR.call(JR.lget(f, :basicUserRole), :jm_getRoleId, [])) do
            throw({:jreturn, true})
        end
        throw({:jreturn, false})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(this, :jm_getRole, [])})
    end)
  end
end


