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

defmodule ThirdPartyInApplicationPurchaseInterface do
  def jsuper(), do: JObject


  def jm_isPurchased(this, p_lockableFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lockableFeature, p_lockableFeature)
      throw({:jexception, JR.exception("AbstractMethodError", "isPurchased")})
    end)
  end


  def jm_onCreate(this, p_anyType, p_stateObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      JR.lset(f, :stateObject, p_stateObject)
      throw({:jexception, JR.exception("AbstractMethodError", "onCreate")})
    end)
  end


  def jm_onDestroy(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "onDestroy")})
    end)
  end


  def jm_onStart(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "onStart")})
    end)
  end


  def jm_onActivityResult(this, p_requestCode, p_resultCode, p_dataObject) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :requestCode, p_requestCode)
      JR.lset(f, :resultCode, p_resultCode)
      JR.lset(f, :dataObject, p_dataObject)
      throw({:jexception, JR.exception("AbstractMethodError", "onActivityResult")})
    end)
  end


  def jm_onSaveInstanceState(this, p_anyType) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :anyType, p_anyType)
      throw({:jexception, JR.exception("AbstractMethodError", "onSaveInstanceState")})
    end)
  end


  def jm_onStop(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "onStop")})
    end)
  end


  def jm_requestPurchase(this, p_lockableFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lockableFeature, p_lockableFeature)
      throw({:jexception, JR.exception("AbstractMethodError", "requestPurchase")})
    end)
  end


  def jm_requestReceipts(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "requestReceipts")})
    end)
  end


  def jm_add(this, p_lockableFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :lockableFeature, p_lockableFeature)
      throw({:jexception, JR.exception("AbstractMethodError", "add")})
    end)
  end


  def jm_getUserName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "getUserName")})
    end)
  end


  def jm_isEnabled(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      throw({:jexception, JR.exception("AbstractMethodError", "isEnabled")})
    end)
  end
end


