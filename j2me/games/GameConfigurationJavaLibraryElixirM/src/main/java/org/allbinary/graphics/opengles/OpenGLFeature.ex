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
# package org.allbinary.graphics.opengles

defmodule OpenGLFeature do
  def jsuper(), do: Feature

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        Feature.jinit(this, JR.lget(f, :name))
        OpenGLFeature.jinitfields(this)
    end)
  end

  def jnew(p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_name)
    this
  end
end


