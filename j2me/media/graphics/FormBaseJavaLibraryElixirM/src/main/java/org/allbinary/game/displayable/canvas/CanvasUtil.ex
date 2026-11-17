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

defmodule CanvasUtil do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        nil
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_getKeyName(p_key) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
        JR.lset(f, :commonPhoneStrings, CommonPhoneStrings.jm_getInstance())
        if (JR.lget(f, :key) == Canvas.jstatic_UP()) do
            throw({:jreturn, JR.get(JR.lget(f, :commonPhoneStrings), :UP)})
        else
            if (JR.lget(f, :key) == Canvas.jstatic_DOWN()) do
            throw({:jreturn, JR.get(JR.lget(f, :commonPhoneStrings), :DOWN)})
        else
            if (JR.lget(f, :key) == Canvas.jstatic_RIGHT()) do
            throw({:jreturn, JR.get(JR.lget(f, :commonPhoneStrings), :RIGHT)})
        else
            if (JR.lget(f, :key) == Canvas.jstatic_LEFT()) do
            throw({:jreturn, JR.get(JR.lget(f, :commonPhoneStrings), :LEFT)})
        else
            if (JR.lget(f, :key) == Canvas.jstatic_FIRE()) do
            throw({:jreturn, JR.get(JR.lget(f, :commonPhoneStrings), :FIRE)})
        end
        end
        end
        end
        end
        throw({:jreturn, "UNKNOWN KEY"})
    end)
  end
end


