# Generated Code Do Not Modify
# package org.allbinary.layer

defmodule LayerManager do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :logUtil, nil)
    JR.put(this, :commonStrings, nil)
    JR.put(this, :systemWrapper, nil)
    JR.put(this, :tsUtil, nil)
    JR.put(this, :layerManagerLogging, nil)
    JR.put(this, :list, nil)
    JR.put(this, :anyType, nil)
        JR.put(this, :logUtil, LogUtil.jm_getInstance())
        JR.put(this, :commonStrings, CommonStrings.jm_getInstance())
        JR.put(this, :systemWrapper, ABSystemWrapper.jm_getInstance())
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        
        JR.put(this, :list, BasicArrayListD.jnew())
        JR.put(this, :anyType, SynchObject.jnew())
    nil
  end


  def jinit(this, p_layerManagerLogging) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :layerManagerLogging, p_layerManagerLogging)
      JObject.jinit(this)
      jinitfields(this)
        JR.call(JR.get(this, :logUtil), :jm_putF, [JR.get(JR.get(this, :commonStrings), :START), this, JR.get(JR.get(this, :commonStrings), :CONSTRUCTOR)])
        JR.put(this, :layerManagerLogging, JR.lget(f, :layerManagerLogging))
    end)
  end

  def jnew(p_layerManagerLogging) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_layerManagerLogging)
    this
  end


  def jm_contains(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_contains, [JR.lget(f, :layerInterface)])})
    end)
  end


  def jm_update(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.lset(f, :had, JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :layerInterface)]))
        if JR.lget(f, :had) do
            JR.lset(f, :nextLayerInterface, nil)
            JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
            JR.lset(f, :index, 0)
            JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
                JR.lset(f, :nextLayerInterface, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
                if (JR.call(JR.lget(f, :layerInterface), :jm_getZP, []) > JR.call(JR.lget(f, :nextLayerInterface), :jm_getZP, [])) do
                    JR.call(JR.get(this, :list), :jm_addAt, [JR.lget(f, :index), JR.lget(f, :layerInterface)])
                    throw({:jreturn, nil})
                end
            end)
            JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :layerInterface)])
        end
    end)
  end


  def jm_insert(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.lset(f, :nextLayerInterface, nil)
        JR.lset(f, :size, JR.call(JR.get(this, :list), :jm_size, []))
        JR.lset(f, :index, 0)
        JR.jfor(fn -> (JR.lget(f, :index) < JR.lget(f, :size)) end, fn -> JR.lpostinc(f, :index, 1) end, fn ->
            JR.lset(f, :nextLayerInterface, JR.call(JR.get(this, :list), :jm_get, [JR.lget(f, :index)]))
            if (JR.call(JR.lget(f, :layerInterface), :jm_getZP, []) > JR.call(JR.lget(f, :nextLayerInterface), :jm_getZP, [])) do
                JR.call(this, :jm_appendAt, [JR.lget(f, :layerInterface), JR.lget(f, :index)])
                throw({:jreturn, nil})
            end
        end)
        JR.call(this, :jm_append, [JR.lget(f, :layerInterface)])
    end)
  end


  def jm_append(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        JR.call(JR.get(this, :layerManagerLogging), :jm_append, [JR.lget(f, :layerInterface)])
        JR.call(JR.get(this, :list), :jm_add, [JR.lget(f, :layerInterface)])
    end)
  end


  def jm_appendAt(this, p_layerInterface, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
      JR.lset(f, :index, p_index)
        JR.call(JR.get(this, :layerManagerLogging), :jm_appendAt, [JR.lget(f, :layerInterface), JR.lget(f, :index)])
        JR.call(JR.get(this, :list), :jm_addAt, [JR.lget(f, :index), JR.lget(f, :layerInterface)])
    end)
  end


  def jm_remove(this, p_layerInterface) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :layerInterface, p_layerInterface)
        (
            JR.call(JR.get(this, :layerManagerLogging), :jm_remove, [JR.lget(f, :layerInterface)])
            JR.lset(f, :result, JR.call(JR.get(this, :list), :jm_remove, [JR.lget(f, :layerInterface)]))
            JR.call(JR.get(this, :layerManagerLogging), :jm_removeResult, [this, JR.lget(f, :layerInterface), JR.lget(f, :result)])
        )
    end)
  end


  def jm_getLayerAt(this, p_index) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :index, p_index)
        throw({:jreturn, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index))})
    end)
  end


  def jm_getSize(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, JR.call(JR.get(this, :list), :jm_size, [])})
    end)
  end


  def jm_cleanup(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        (
            JR.call(JR.get(this, :list), :jm_clear, [])
            JR.call(JR.get(this, :layerManagerLogging), :jm_clear, [])
            JR.call(JR.get(this, :tsUtil), :jm_gc, [])
            JR.call(JR.get(this, :tsUtil), :jm_gc, [])
        )
    end)
  end


  def jm_paint(this, p_g, p_x, p_y) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :g, p_g)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
        (
            JR.lset(f, :comp, nil)
            JR.lset(f, :index, JR.call(JR.get(this, :list), :jm_size, []))
            JR.jfor(fn -> (JR.lpreinc(f, :index, -1) >= 0) end, fn -> nil end, fn ->
                JR.lset(f, :comp, JR.aget(JR.get(JR.get(this, :list), :objectArray), JR.lget(f, :index)))
                if ((JR.lget(f, :comp) != nil) && JR.call(JR.lget(f, :comp), :jm_isVisible, [])) do
                    JR.call(JR.lget(f, :comp), :jm_paint, [JR.lget(f, :g)])
                end
            end)
        )
    end)
  end
end


