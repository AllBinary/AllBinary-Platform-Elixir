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

defmodule CurrentDisplayableFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> CurrentDisplayableFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :commonStrings, nil)
    JR.put(this, :canvasStrings, nil)
    JR.put(this, :stringUtil, nil)
    JR.put(this, :SET_DISPLAYABLE, nil)
    JR.put(this, :SET_RUNNABLE, nil)
    JR.put(this, :CLEAR_RUNNABLE, nil)
    JR.put(this, :SET_USED_RUNNABLE, nil)
    JR.put(this, :RUNNABLE, nil)
    JR.put(this, :RUNNABLE_WAS_ALREADY_IN_USE, nil)
    JR.put(this, :DEFAULT_CHILD_NAME_LIST, nil)
    JR.put(this, :displayable, nil)
    JR.put(this, :openGlReadydisplayable, nil)
    JR.put(this, :runnable, nil)
    JR.put(this, :usedRunnable, nil)
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :canvasStrings, CanvasStrings.jm_getInstance())
        JR.put(this, :stringUtil, StringUtil.jm_getInstance())
        JR.put(this, :SET_DISPLAYABLE, "setDisplayable")
        JR.put(this, :SET_RUNNABLE, "setRunnable")
        JR.put(this, :CLEAR_RUNNABLE, "clearRunnable")
        JR.put(this, :SET_USED_RUNNABLE, "setUsedRunnable")
        JR.put(this, :RUNNABLE, "Runnable: ")
        JR.put(this, :RUNNABLE_WAS_ALREADY_IN_USE, "Runnable was already in use: ")
        JR.put(this, :DEFAULT_CHILD_NAME_LIST, BasicArrayListD.jnew())
        JR.put(this, :displayable, NullDisplayable.jm_getInstance())
        JR.put(this, :openGlReadydisplayable, NullDisplayable.jm_getInstance())
        JR.put(this, :runnable, NullWaitGameRunnable.jm_getInstance())
        JR.put(this, :usedRunnable, NullWaitGameRunnable.jm_getInstance())
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, CurrentDisplayableFactory.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :DEFAULT_CHILD_NAME_LIST), :jm_add, [JR.get(JR.get(this, :canvasStrings), :ABOUT)])
        JR.call(JR.get(this, :DEFAULT_CHILD_NAME_LIST), :jm_add, [JR.get(JR.get(this, :canvasStrings), :OPTIONS)])
        JR.call(JR.get(this, :DEFAULT_CHILD_NAME_LIST), :jm_add, [GameInputMappingCanvas.jstatic_NAME()])
        JR.call(JR.get(this, :DEFAULT_CHILD_NAME_LIST), :jm_add, [GameInputMappingInstructionsCanvas.jstatic_NAME()])
        JR.call(JR.get(this, :DEFAULT_CHILD_NAME_LIST), :jm_add, [HighScoresCanvas.jstatic_NAME()])
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_setMyCanvas(this, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
        if JR.instance_of(JR.get(this, :displayable), MyCanvas) do
            if JR.call(JR.lget(f, :displayable), :jm_hasChild, [JR.get(this, :displayable)]) do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, ["Child Displayable is already set for: "]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :displayable)])]), :jm_toString, []), this, JR.get(this, :SET_DISPLAYABLE))
                throw({:jreturn, nil})
            end
        end
        JR.call(this, :jm_setDisplayable, [JR.lget(f, :displayable)])
    end)
  end


  def jm_setDisplayable(this, p_displayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :displayable, p_displayable)
        JR.put(this, :displayable, JR.lget(f, :displayable))
        JR.call(this, :jm_setOpenGlReadydisplayable, [JR.lget(f, :displayable)])
    end)
  end


  def jm_setOpenGlReadydisplayable(this, p_openGlReadydisplayable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :openGlReadydisplayable, p_openGlReadydisplayable)
        JR.put(this, :openGlReadydisplayable, JR.lget(f, :openGlReadydisplayable))
        JR.call(this, :jm_update, [])
    end)
  end


  def jm_getOpenGlReadydisplayable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :openGlReadydisplayable)})
    end)
  end


  def jm_setRunnable(this, p_runnable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :runnable, p_runnable)
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :runnable)])]), :jm_toString, []), this, JR.get(this, :SET_RUNNABLE))
        JR.put(this, :runnable, JR.lget(f, :runnable))
        if (JR.get(this, :usedRunnable) != JR.get(this, :runnable)) do
            JR.call(this, :jm_update, [])
        else
            PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :RUNNABLE_WAS_ALREADY_IN_USE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :runnable)])]), :jm_toString, []), this, JR.get(this, :SET_RUNNABLE))
        end
    end)
  end


  def jm_clearRunnable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [NullRunnable.jm_getInstance()])]), :jm_toString, []), this, JR.get(this, :CLEAR_RUNNABLE))
        JR.call(this, :jm_setUsedRunnable, [NullWaitGameRunnable.jm_getInstance()])
    end)
  end


  def jm_update(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.lset(f, :commonSeps, CommonSeps.jm_getInstance())
            JR.lset(f, :features, Features.jm_getInstance())
            JR.lset(f, :stringMaker, StringMaker.jnew())
            JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :openGlReadydisplayable)])])
            if (SWTUtil.jstatic_isSWT() && !JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)])) do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [SWTUtil.jstatic_SWT()]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [NullRunnable.jm_getInstance()])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE))
                JR.call(this, :jm_setUsedRunnable, [NullWaitGameRunnable.jm_getInstance()])
            else
                if J2MEUtil.jm_isHTML() do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.get(GraphicsStrings.jm_getInstance(), :HTML)]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :runnable)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE))
                JR.call(this, :jm_setUsedRunnable, [JR.get(this, :runnable)])
            else
                if ((JR.instance_of(JR.get(this, :openGlReadydisplayable), DemoCanvas) || JR.instance_of(JR.get(this, :openGlReadydisplayable), AllBinaryGameCanvas)) || JR.call(JR.lget(f, :features), :jm_isDefault, [JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL)])) do
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.call(JR.get(OpenGLFeatureFactory.jm_getInstance(), :OPENGL), :jm_toString, [])]), :jm_append, [JR.get(JR.lget(f, :commonSeps), :SPACE)]), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :runnable)])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE))
                JR.call(this, :jm_setUsedRunnable, [JR.get(this, :runnable)])
            else
                PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.lget(f, :stringMaker), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [NullRunnable.jm_getInstance()])]), :jm_toString, []), this, JR.get(JR.get(this, :commonStrings), :UPDATE))
                JR.call(this, :jm_setUsedRunnable, [NullWaitGameRunnable.jm_getInstance()])
            end
            end
            end
        )
    end)
  end


  def jm_getDisplayable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :displayable)})
    end)
  end


  def jm_getUsedRunnable(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :usedRunnable)})
    end)
  end


  def jm_setUsedRunnable(this, p_usedRunnable) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :usedRunnable, p_usedRunnable)
        PreLogUtil.jm_put(JR.call(JR.call(JR.call(JR.call(JR.call(StringMaker.jnew(), :jm_append, [JR.get(this, :RUNNABLE)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.get(this, :runnable)])]), :jm_append, [JR.get(CommonSeps.jm_getInstance(), :COLON_SEP)]), :jm_append, [JR.call(JR.get(this, :stringUtil), :jm_toString, [JR.lget(f, :usedRunnable)])]), :jm_toString, []), this, JR.get(this, :SET_USED_RUNNABLE))
        JR.put(this, :usedRunnable, JR.lget(f, :usedRunnable))
    end)
  end
end


