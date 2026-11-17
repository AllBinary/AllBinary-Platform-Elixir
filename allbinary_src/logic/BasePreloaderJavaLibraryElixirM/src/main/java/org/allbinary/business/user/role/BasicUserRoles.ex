# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

defmodule BasicUserRoles do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicUserRoles.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :roleVector, nil)
        JR.put(this, :roleVector, BasicArrayListD.jnew())
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
        throw({:jreturn, BasicUserRoles.jstatic_instance()})
    end)
  end


  def jm_getRole(this, p_role) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :role, p_role)
        JR.lset(f, :roleVector, JR.call(this, :jm_getAll, []))
        JR.lset(f, :size, JR.call(JR.lget(f, :roleVector), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :userRole, JR.call(JR.lget(f, :roleVector), :jm_get, [JR.lget(f, :index)]))
            if (JR.call(JR.lget(f, :role), :jm_compareTo, [JR.call(JR.lget(f, :userRole), :jm_toString, [])]) == 0) do
                throw({:jreturn, JR.lget(f, :userRole)})
            end
        end)
        throw({:jexception, JR.exception("Exception", "Unable to get role - Unknown Role")})
    end)
  end


  def jm_getAll(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :roleVector)})
    end)
  end
end


