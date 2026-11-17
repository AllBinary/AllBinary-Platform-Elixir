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
# package org.allbinary.android.input.motion

defmodule AllAnalogControllerVisitor do
  def jsuper(), do: AnalogControllerVisitor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    AnalogControllerVisitor.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_process(this, p_allbinaryLayerManager, p_analogLocationInputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :analogLocationInputProcessor, p_analogLocationInputProcessor)
        JR.lset(f, :analogLocationInputList, JR.call(AnalogLocationInputFactory.jm_getInstance(), :jm_getList, []))
        JR.lset(f, :analogLocationInput, nil)
        JR.lset(f, :index, JR.int32(JR.call(JR.lget(f, :analogLocationInputList), :jm_size, []) - 1))
        JR.jfor(fn -> (JR.lget(f, :index) >= 0) end, fn -> JR.lpostinc(f, :index, -1) end, fn ->
            JR.lset(f, :analogLocationInput, JR.call(JR.lget(f, :analogLocationInputList), :jm_get, [JR.lget(f, :index)]))
            JR.call(JR.lget(f, :analogLocationInputProcessor), :jm_process, [JR.lget(f, :allbinaryLayerManager), JR.lget(f, :analogLocationInput)])
        end)
    end)
  end
end


