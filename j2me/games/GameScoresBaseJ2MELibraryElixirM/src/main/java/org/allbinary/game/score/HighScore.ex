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
# package org.allbinary.game.score

defmodule HighScore do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :id, 0)
    JR.put(this, :name, nil)
    JR.put(this, :gameInfo, nil)
    JR.put(this, :score, 0)
    JR.put(this, :scoreString, nil)
        
        
        
        
        
    nil
  end


  def jinit(this, p_id, p_name, p_gameInfo, p_score) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :name, p_name)
      JR.lset(f, :gameInfo, p_gameInfo)
      JR.lset(f, :score, p_score)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :id, JR.lget(f, :id))
        JR.put(this, :name, JR.lget(f, :name))
        JR.put(this, :gameInfo, JR.lget(f, :gameInfo))
        JR.put(this, :score, JR.lget(f, :score))
        JR.put(this, :scoreString, JR.str(JR.get(this, :score)))
    end)
  end

  def jnew(p_id, p_name, p_gameInfo, p_score) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id, p_name, p_gameInfo, p_score)
    this
  end


  def jm_getId(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :id)})
    end)
  end


  def jm_getName(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :name)})
    end)
  end


  def jm_getScore(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :score)})
    end)
  end


  def jm_getAsBytes(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :byteArrayOutputStream, J.ByteArrayOutputStream.jnew())
        JR.lset(f, :outputStream, DataOutputStream.jnew(JR.lget(f, :byteArrayOutputStream)))
        JR.call(JR.lget(f, :outputStream), :jm_writeUTF, [JR.call(this, :jm_getName, [])])
        JR.call(JR.lget(f, :outputStream), :jm_writeLong, [JR.call(this, :jm_getScore, [])])
        throw({:jreturn, JR.call(JR.lget(f, :byteArrayOutputStream), :jm_toByteArray, [])})
    end)
  end


  def jm_getGameInfo(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :gameInfo)})
    end)
  end


  def jm_getScoreString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :scoreString)})
    end)
  end


  def jm_setName(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        JR.put(this, :name, JR.lget(f, :name))
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
        throw({:jreturn, JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :name)]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :COLON)]), :jm_appendlong, [JR.get(this, :score)]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :FORWARD_SLASH)]), :jm_append, [JR.get(this, :scoreString)]), :jm_toString, [])})
    end)
  end
end


