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
    JR.put(this, :FILE, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :fullscreen, true)
        JR.put(this, :showTitleBar, false)
        JR.put(this, :progressBarView, false)
        JR.put(this, :FILE, "ReloadConfiguration.dat")
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
            if JR.call(FileFactory.jm_getInstance(), :jm_isFile, [JR.get(this, :FILE)]) do
                JR.call(this, :jm_read, [])
            else
                JR.call(this, :jm_write, [])
            end
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
        JR.lset(f, :fileInputStreamFactory, FileStreamFactory.jm_getInstance())
        JR.lset(f, :fileInputStream, JR.call(JR.lget(f, :fileInputStreamFactory), :jm_getFileInputStreamInstance, [JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(this, :FILE)]))
        JR.lset(f, :dataInputStream, AbDataInputStream.jnew(JR.lget(f, :fileInputStream)))
        JR.lset(f, :fullScreen, JR.call(JR.lget(f, :dataInputStream), :jm_readInt, []))
        if (JR.lget(f, :fullScreen) == 0) do
            JR.call(this, :jm_setFullscreen, [false])
        else
            if (JR.lget(f, :fullScreen) == 1) do
            JR.call(this, :jm_setFullscreen, [true])
        else
            throw({:jexception, JR.exception("Exception", "Invalid FullScreen ActivityConfiguration")})
        end
        end
        JR.lset(f, :progressBarView, JR.call(JR.lget(f, :dataInputStream), :jm_readInt, []))
        if (JR.lget(f, :progressBarView) == 0) do
            JR.call(this, :jm_setProgressBarView, [false])
        else
            if (JR.lget(f, :progressBarView) == 1) do
            JR.call(this, :jm_setProgressBarView, [true])
        else
            throw({:jexception, JR.exception("Exception", "Invalid ProgressBarView ActivityConfiguration")})
        end
        end
        JR.lset(f, :showTitleBar, JR.call(JR.lget(f, :dataInputStream), :jm_readInt, []))
        if (JR.lget(f, :showTitleBar) == 0) do
            JR.call(this, :jm_setShowTitleBar, [false])
        else
            if (JR.lget(f, :showTitleBar) == 1) do
            JR.call(this, :jm_setShowTitleBar, [true])
        else
            throw({:jexception, JR.exception("Exception", "Invalid ShowTitleBar ActivityConfiguration")})
        end
        end
        JR.call(JR.get(this, :logUtil), :jm_putF, ["Read Configuration: " <> JR.call(this, :jm_toString, []), this, "read"])
    end)
  end


  def jm_write(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        JR.lset(f, :closeable, NullCloseable.jstatic_NULL_CLOSEABLE())
        try do
            JR.call(JR.get(this, :logUtil), :jm_putF, ["Write Configuration: " <> JR.call(this, :jm_toString, []), this, "write"])
            JR.lset(f, :fileInputStreamFactory, FileStreamFactory.jm_getInstance())
            JR.lset(f, :fileOutputStream, JR.call(JR.lget(f, :fileInputStreamFactory), :jm_getFileOutputStreamInstance, [JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING), JR.get(this, :FILE)]))
            JR.lset(f, :dataOutputStream, AbDataOutputStream.jnew(JR.lget(f, :fileOutputStream)))
            JR.lset(f, :closeable, JR.lget(f, :dataOutputStream))
            if JR.call(this, :jm_isFullscreen, []) do
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [1])
            else
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [0])
            end
            if JR.call(this, :jm_isProgressBarView, []) do
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [1])
            else
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [0])
            end
            if JR.call(this, :jm_isShowTitleBar, []) do
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [1])
            else
                JR.call(JR.lget(f, :dataOutputStream), :jm_writeInt, [0])
            end
            JR.call(JR.lget(f, :dataOutputStream), :jm_flush, [])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            throw({:jexception, JR.lget(f, :e)})
        after
            JR.call(StreamUtil.jm_getInstance(), :jm_close, [JR.lget(f, :closeable)])
        end
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


