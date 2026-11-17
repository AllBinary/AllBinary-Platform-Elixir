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
# package org.allbinary.game.input

defmodule GameInputProcessorUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
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


  def jm_init(p_inputProcessorArray) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :inputProcessorArray, p_inputProcessorArray)
        JR.lset(f, :noInputProcessor, GameInputProcessor.jm_getInstance())
        JR.lset(f, :total, JR.get(InputFactory.jm_getInstance(), :MAX))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :total)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :inputProcessorCanBeNull, JR.aget(JR.lget(f, :inputProcessorArray), JR.lget(f, :index)))
            if (JR.lget(f, :inputProcessorCanBeNull) == nil) do
                JR.aset(JR.lget(f, :inputProcessorArray), JR.lget(f, :index), JR.lget(f, :noInputProcessor))
            end
        end)
    end)
  end
end


