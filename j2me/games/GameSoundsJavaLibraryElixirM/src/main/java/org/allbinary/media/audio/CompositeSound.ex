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
# package org.allbinary.media.audio

defmodule CompositeSound do
  def jsuper(), do: Sound

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_resource) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
        Sound.jinit(this, JR.lget(f, :resource))
        CompositeSound.jinitfields(this)
    end)
  end

  def jnew(p_resource) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_resource)
    this
  end


  def jm_init(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setPlayerP, [PlayerComposite.jnew(AllBinaryMediaManager.jm_createPlayer(JR.call(this, :jm_getResource, [])), 570)])
    end)
  end
end


