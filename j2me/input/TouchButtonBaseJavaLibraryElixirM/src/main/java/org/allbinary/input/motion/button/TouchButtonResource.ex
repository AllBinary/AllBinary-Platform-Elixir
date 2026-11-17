# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

defmodule TouchButtonResource do
  def jsuper(), do: JObject

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :RESOURCE, nil)
    JR.put(this, :HINT, nil)
        
        
    nil
  end


  def jinit(this, p_resource, p_hint) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :resource, p_resource)
      JR.lset(f, :hint, p_hint)
      JObject.jinit(this)
      jinitfields(this)
        JR.put(this, :RESOURCE, JR.lget(f, :resource))
        JR.put(this, :HINT, JR.lget(f, :hint))
    end)
  end

  def jnew(p_resource, p_hint) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_resource, p_hint)
    this
  end
end


