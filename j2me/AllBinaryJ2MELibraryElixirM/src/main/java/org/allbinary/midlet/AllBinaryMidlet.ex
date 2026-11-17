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
# package org.allbinary.midlet

defmodule AllBinaryMidlet do
  def jsuper(), do: MIDlet
def jstatic_NULL_ALLBINARY_MIDLET(), do: JR.static_get(__MODULE__, :NULL_ALLBINARY_MIDLET, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_NULL_ALLBINARY_MIDLET(value), do: JR.static_put(__MODULE__, :NULL_ALLBINARY_MIDLET, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :SET_DISPLAY, nil)
    JR.put(this, :SETTING_, nil)
    JR.put(this, :_DISPLAY_, nil)
    JR.put(this, :SETTING_NO_TITLE, nil)
    JR.put(this, :hashtable, nil)
    JR.put(this, :midletDestroyed, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :SET_DISPLAY, "setDisplay")
        JR.put(this, :SETTING_, "Setting: ")
        JR.put(this, :_DISPLAY_, " Display: ")
        JR.put(this, :SETTING_NO_TITLE, "Setting: No Title, Display: ")
        JR.put(this, :hashtable, JR.call(StdUtil.jm_getInstance(), :jm_createHashtable, []))
        JR.put(this, :midletDestroyed, false)
    nil
  end


  def jm_getNullInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            AllBinaryMidlet.jstatic_set_NULL_ALLBINARY_MIDLET(AllBinaryMidlet.jnew())
        end
        throw({:jreturn, AllBinaryMidlet.jstatic_NULL_ALLBINARY_MIDLET()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      MIDlet.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR), this, "AllBinaryMidlet::AllBinaryMidlet"])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setDisplay(this, p_newDisplay) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :newDisplay, p_newDisplay)
        JR.lset(f, :title, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING))
        if (JR.lget(f, :newDisplay) != NullCanvas.jstatic_NULL_CANVAS()) do
            JR.lset(f, :title, JR.call(JR.lget(f, :newDisplay), :jm_getTitle, []))
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :SETTING_)]), :jm_append, [JR.lget(f, :title)]), :jm_append, [JR.get(this, :_DISPLAY_)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :newDisplay)])]), :jm_toString, []), this, JR.get(this, :SET_DISPLAY)])
        end
        JR.lset(f, :display, JR.call(this, :jm_getDisplay, []))
        JR.call(JR.lget(f, :display), :jm_setCurrent, [JR.lget(f, :newDisplay)])
    end)
  end


  def jm_getDisplay(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, Display.jm_getDisplay(this)})
    end)
  end


  def jm_getCurrentDisplayable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(Display.jm_getDisplay(this), :jm_getCurrent, [])})
    end)
  end


  def jm_setDestroyed(this, p_destroyed) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :destroyed, p_destroyed)
        JR.put(this, :midletDestroyed, JR.lget(f, :destroyed))
    end)
  end


  def jm_isDestroyed(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :midletDestroyed)})
    end)
  end


  def jm_startApp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_pauseApp(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        ForcedLogUtil.jm_log(JR.get(EventStrings.jm_getInstance(), :PERFORMANCE_MESSAGE), this)
    end)
  end


  def jm_destroyAppInRunnable(this, p_unconditional, p_isProgress) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unconditional, p_unconditional)
      JR.lset(f, :isProgress, p_isProgress)
        nil
    end)
  end


  def jm_destroyApp(this, p_unconditional) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :unconditional, p_unconditional)
        JR.lset(f, :METHOD_NAME, "AllBinaryMidlet::destroyApp")
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.lget(f, :METHOD_NAME)])
            PreLogUtil.jm_put(Memory.jm_getInfo(), this, JR.lget(f, :METHOD_NAME))
            JR.call(this, :jm_setDestroyed, [true])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.get(this, :commonStrings), :EXCEPTION), this, JR.lget(f, :METHOD_NAME), JR.lget(f, :e)])
        end
    end)
  end


  def jm_setStartStateHashtable(this, p_hashtable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :hashtable, p_hashtable)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.lget(f, :hashtable)])]), :jm_toString, []), this, "setStartStateHashtable"])
        JR.put(this, :hashtable, JR.lget(f, :hashtable))
    end)
  end


  def jm_getStartStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(CommonLabels.jm_getInstance(), :START_LABEL)]), :jm_append, [JR.call(StringUtil.jm_getInstance(), :jm_toString, [JR.get(this, :hashtable)])]), :jm_toString, []), this, "getStartStateHashtable"])
        throw({:jreturn, JR.get(this, :hashtable)})
    end)
  end


  def jm_getCurrentStateHashtable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, "getStateHashtable"])
        throw({:jreturn, JR.get(StdUtil.jm_getInstance(), :NULL_TABLE)})
    end)
  end


  def jm_commandAction(this, p_command, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :command, p_command)
      JR.lset(f, :displayable, p_displayable)
        nil
    end)
  end
end


