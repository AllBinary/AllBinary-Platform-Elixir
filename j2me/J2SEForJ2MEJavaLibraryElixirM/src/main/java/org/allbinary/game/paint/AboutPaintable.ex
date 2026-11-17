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
# package org.allbinary.game.paint

#J2SEForJ2ME
defmodule AboutPaintable do
  def jsuper(), do: Paintable

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :displayInfoSingleton, nil)
    JR.put(this, :ABOUT, nil)
    JR.put(this, :info, nil)
    JR.put(this, :developers, nil)
    JR.put(this, :paintableArray, nil)
    JR.put(this, :myFontProcessor, nil)
    JR.put(this, :charHeight, 0)
    JR.put(this, :aboutBeginWidth, 0)
    JR.put(this, :infoBeginWidth, nil)
    JR.put(this, :developersBeginWidth, nil)
    JR.put(this, :anchor, 0)
        JR.put(this, :displayInfoSingleton, DisplayInfoSingleton.jm_getInstance())
        JR.put(this, :ABOUT, JR.get(CanvasStrings.jm_getInstance(), :ABOUT))
        
        
        JR.put(this, :paintableArray, JR.afrom([this]))
        JR.put(this, :myFontProcessor, UpdateMyFontProcessor.jnew(this))
        JR.put(this, :charHeight, 0)
        JR.put(this, :aboutBeginWidth, 0)
        
        
        JR.put(this, :anchor, Anchor.jstatic_TOP_LEFT())
    nil
  end


  def jm_getInstance(p_info, p_developers) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :info, p_info)
      JR.lset(f, :developers, p_developers)
        throw({:jreturn, AboutPaintable.jnew(JR.lget(f, :info), JR.lget(f, :developers))})
    end)
  end


  def jinit(this, p_info, p_developers) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :info, p_info)
      JR.lset(f, :developers, p_developers)
      Paintable.jinit(this)
      jinitfields(this)
        JR.put(this, :info, JR.lget(f, :info))
        JR.put(this, :infoBeginWidth, JR.anew(JR.alength(JR.get(this, :info)), 0))
        JR.put(this, :developers, JR.lget(f, :developers))
        JR.put(this, :developersBeginWidth, JR.anew(JR.alength(JR.get(this, :developers)), 0))
    end)
  end

  def jnew(p_info, p_developers) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_info, p_developers)
    this
  end


  def jm_updateMeasurement(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.lset(f, :font, JR.call(JR.lget(f, :graphics), :jm_getFont, []))
        JR.put(this, :charHeight, JR.call(JR.lget(f, :font), :jm_getHeight, []))
        JR.put(this, :aboutBeginWidth, (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.get(this, :ABOUT)]), 1)))
        JR.lset(f, :infoSize, JR.alength(JR.get(this, :info)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :infoSize)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :infoBeginWidth), JR.lget(f, :index), (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.aget(JR.get(this, :info), JR.lget(f, :index))]), 1)))
        end)
        JR.lset(f, :size, JR.alength(JR.get(this, :developers)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.aset(JR.get(this, :developersBeginWidth), JR.lget(f, :index), (Bitwise.bsr(JR.call(JR.lget(f, :font), :jm_stringWidth, [JR.aget(JR.get(this, :developers), JR.lget(f, :index))]), 1)))
        end)
        JR.put(this, :myFontProcessor, MyFontProcessor.jm_getInstance())
    end)
  end


  def jm_getPaintableArrayInstance(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :paintableArray)})
    end)
  end


  def jm_paint(this, p_graphics) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :graphics, p_graphics)
        JR.call(JR.get(this, :myFontProcessor), :jm_process, [JR.lget(f, :graphics)])
        JR.lset(f, :halfWidth, JR.call(JR.get(this, :displayInfoSingleton), :jm_getLastHalfWidth, []))
        JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.get(this, :ABOUT), JR.int32(JR.lget(f, :halfWidth) - JR.get(this, :aboutBeginWidth)), JR.int32(2 * JR.get(this, :charHeight)), JR.get(this, :anchor)])
        JR.lset(f, :infoSize, JR.alength(JR.get(this, :info)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :infoSize)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.aget(JR.get(this, :info), JR.lget(f, :index)), JR.int32(JR.lget(f, :halfWidth) - JR.aget(JR.get(this, :infoBeginWidth), JR.lget(f, :index))), JR.int32((JR.int32(4 + JR.lget(f, :index))) * JR.get(this, :charHeight)), JR.get(this, :anchor)])
        end)
        JR.lset(f, :size, JR.alength(JR.get(this, :developers)))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.call(JR.lget(f, :graphics), :jm_drawString, [JR.aget(JR.get(this, :developers), JR.lget(f, :index)), JR.int32(JR.lget(f, :halfWidth) - JR.aget(JR.get(this, :developersBeginWidth), JR.lget(f, :index))), JR.int32((JR.int32(JR.int32(5 + JR.lget(f, :infoSize)) + JR.lget(f, :index))) * JR.get(this, :charHeight)), JR.get(this, :anchor)])
        end)
    end)
  end
end


