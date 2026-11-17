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
# package org.allbinary.game.displayable.canvas

defmodule GameCanvasPauseRunnable do
  def jsuper(), do: GameRunnable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :allBinaryGameCanvas, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        
    nil
  end


  def jinit(this, p_allBinaryGameCanvas) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :allBinaryGameCanvas, p_allBinaryGameCanvas)
      GameRunnable.jinit(this)
      jinitfields(this)
        JR.put(this, :allBinaryGameCanvas, JR.lget(f, :allBinaryGameCanvas))
    end)
  end

  def jnew(p_allBinaryGameCanvas) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_allBinaryGameCanvas)
    this
  end


  def jm_run(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_processLoopSleep(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        try do
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :isOpenGL, JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)]))
            if JR.lget(f, :isOpenGL) do
                JR.call(JR.get(this, :allBinaryGameCanvas), :jm_processSleep, [])
            end
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :RUN), JR.lget(f, :e)])
        end
    end)
  end
end


