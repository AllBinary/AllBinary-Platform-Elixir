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
# package org.allbinary.logic.system.security.licensing

defmodule StoreAppClientInformation do
  def jsuper(), do: AbeClientInformation

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :longArrayIdentifier, nil)
        
    nil
  end


  def jinit(this, p_name, p_version, p_specialName, p_shortName, p_longArrayIdentifier) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
      JR.lset(f, :version, p_version)
      JR.lset(f, :specialName, p_specialName)
      JR.lset(f, :shortName, p_shortName)
      JR.lset(f, :longArrayIdentifier, p_longArrayIdentifier)
        AbeClientInformation.jinit(this, JR.lget(f, :name), JR.lget(f, :version), JR.lget(f, :specialName), JR.lget(f, :shortName))
        StoreAppClientInformation.jinitfields(this)
        JR.put(this, :longArrayIdentifier, JR.lget(f, :longArrayIdentifier))
    end)
  end

  def jnew(p_name, p_version, p_specialName, p_shortName, p_longArrayIdentifier) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name, p_version, p_specialName, p_shortName, p_longArrayIdentifier)
    this
  end


  def jm_getLongArrayIdentifier(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :longArrayIdentifier)})
    end)
  end
end


