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
# package org.allbinary.game.midlet

defmodule SpecialDemoGameMidlet do
  def jsuper(), do: DemoGameMidlet

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_clientInformationFactory, p_licenseLoadingType, p_demoSetupFactory, p_licenseCheckRunnableFactory) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :clientInformationFactory, p_clientInformationFactory)
      JR.lset(f, :licenseLoadingType, p_licenseLoadingType)
      JR.lset(f, :demoSetupFactory, p_demoSetupFactory)
      JR.lset(f, :licenseCheckRunnableFactory, p_licenseCheckRunnableFactory)
        DemoGameMidlet.jinit(this, JR.lget(f, :clientInformationFactory))
        SpecialDemoGameMidlet.jinitfields(this)
    end)
  end

  def jnew(p_clientInformationFactory, p_licenseLoadingType, p_demoSetupFactory, p_licenseCheckRunnableFactory) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_clientInformationFactory, p_licenseLoadingType, p_demoSetupFactory, p_licenseCheckRunnableFactory)
    this
  end


  def jm_initView(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_preInit(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(LicenseServerInitFileUtil.jnew(), :jm_init, [])
    end)
  end
end


