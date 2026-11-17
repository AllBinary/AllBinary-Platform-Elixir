# Generated Code Do Not Modify
# package org.allbinary.configuration

defmodule ApplicationConfiguration do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT) end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :fullscreen, false)
    JR.put(this, :showTitleBar, false)
    JR.put(this, :progressBarView, false)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :fullscreen, true)
        JR.put(this, :showTitleBar, false)
        JR.put(this, :progressBarView, false)
    nil
  end


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        if (ApplicationConfiguration.jstatic_instance() == JR.get(NullUtil.jm_getInstance(), :NULL_OBJECT)) do
            ApplicationConfiguration.jstatic_set_instance(ApplicationConfiguration.jnew())
        end
        throw({:jreturn, ApplicationConfiguration.jstatic_instance()})
    end)
  end


  def jinit(this) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JObject.jinit(this)
      jinitfields(this)
        try do
            JR.call(this, :jm_read, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            JR.call(JR.get(this, :logUtil), :jm_put, [JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, JR.get(JR.lget(f, :commonStrings), :CONSTRUCTOR), JR.lget(f, :e)])
        end
    end)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_read(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.call(this, :jm_setFullscreen, [true])
        JR.call(this, :jm_setProgressBarView, [false])
        JR.call(this, :jm_setShowTitleBar, [false])
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Read Configuration: " <> JR.call(this, :jm_toString, []), this, "read"])
    end)
  end


  def jm_write(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        nil
    end)
  end


  def jm_update(this, p_gameFeature) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :gameFeature, p_gameFeature)
        if (JR.lget(f, :gameFeature) == JR.get(MainFeatureFactory.jm_getInstance(), :FULL_SCREEN)) do
            JR.lset(f, :features, Features.jm_getInstance())
            if JR.call(JR.lget(f, :features), :jm_isFeature, [JR.lget(f, :gameFeature)]) do
                if !JR.call(this, :jm_isFullscreen, []) do
                    JR.call(this, :jm_setFullscreen, [true])
                    JR.call(this, :jm_write, [])
                end
            else
                if JR.call(this, :jm_isFullscreen, []) do
                    JR.call(this, :jm_setFullscreen, [false])
                    JR.call(this, :jm_write, [])
                end
            end
        end
    end)
  end


  def jm_setFullscreen(this, p_fullscreen) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fullscreen, p_fullscreen)
        JR.put(this, :fullscreen, JR.lget(f, :fullscreen))
    end)
  end


  def jm_isFullscreen(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :fullscreen)})
    end)
  end


  def jm_setShowTitleBar(this, p_showTitleBar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :showTitleBar, p_showTitleBar)
        JR.put(this, :showTitleBar, JR.lget(f, :showTitleBar))
    end)
  end


  def jm_isShowTitleBar(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :showTitleBar)})
    end)
  end


  def jm_setProgressBarView(this, p_progressBarView) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :progressBarView, p_progressBarView)
        JR.put(this, :progressBarView, JR.lget(f, :progressBarView))
    end)
  end


  def jm_isProgressBarView(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.get(this, :progressBarView)})
    end)
  end


  def jm_toString(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :stringBuffer, StringMaker.jnew())
        JR.call(JR.lget(f, :stringBuffer), :jm_append, ["isFullscreen: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isFullscreen, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" isProgressBarView: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isProgressBarView, [])])
        JR.call(JR.lget(f, :stringBuffer), :jm_append, [" isShowTitleBar: "])
        JR.call(JR.lget(f, :stringBuffer), :jm_appendboolean, [JR.call(this, :jm_isShowTitleBar, [])])
        throw({:jreturn, JR.call(JR.lget(f, :stringBuffer), :jm_toString, [])})
    end)
  end
end


