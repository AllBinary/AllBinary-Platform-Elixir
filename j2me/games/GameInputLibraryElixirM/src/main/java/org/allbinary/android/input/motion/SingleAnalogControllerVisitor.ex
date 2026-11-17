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

defmodule SingleAnalogControllerVisitor do
  def jsuper(), do: AnalogControllerVisitor

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :playerInputId, 0)
        
    nil
  end


  def jinit(this, p_playerInputId) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :playerInputId, p_playerInputId)
      AnalogControllerVisitor.jinit(this)
      jinitfields(this)
        JR.put(this, :playerInputId, JR.lget(f, :playerInputId))
    end)
  end

  def jnew(p_playerInputId) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_playerInputId)
    this
  end


  def jm_process(this, p_allbinaryLayerManager, p_analogLocationInputProcessor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :allbinaryLayerManager, p_allbinaryLayerManager)
      JR.lset(f, :analogLocationInputProcessor, p_analogLocationInputProcessor)
        JR.lset(f, :analogLocationInput, JR.call(AnalogLocationInputFactory.jm_getInstance(), :jm_getInstanceForPlayer, [JR.get(this, :playerInputId)]))
        JR.call(JR.lget(f, :analogLocationInputProcessor), :jm_process, [JR.lget(f, :allbinaryLayerManager), JR.lget(f, :analogLocationInput)])
    end)
  end
end


