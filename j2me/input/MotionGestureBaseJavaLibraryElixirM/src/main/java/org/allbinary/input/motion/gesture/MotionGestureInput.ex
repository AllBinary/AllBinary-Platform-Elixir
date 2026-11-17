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
# package org.allbinary.input.motion.gesture

defmodule MotionGestureInput do
  def jsuper(), do: Input

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this, p_id, p_name) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :id, p_id)
      JR.lset(f, :name, p_name)
        Input.jinit(this, JR.lget(f, :id), JR.lget(f, :name))
        MotionGestureInput.jinitfields(this)
        JR.lset(f, :inputFactory, InputFactory.jm_getInstance())
        JR.call(JR.lget(f, :inputFactory), :jm_add, [JR.call(this, :jm_getId, []), this])
    end)
  end

  def jnew(p_id, p_name) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_id, p_name)
    this
  end
end


