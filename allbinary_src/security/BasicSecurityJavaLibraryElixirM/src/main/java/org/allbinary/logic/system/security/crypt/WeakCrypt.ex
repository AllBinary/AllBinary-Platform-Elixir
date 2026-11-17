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
# package org.allbinary.logic.system.security.crypt

defmodule WeakCrypt do
  def jsuper(), do: JObject
def jstatic_keys(), do: JR.static_get(__MODULE__, :keys, fn -> JR.afrom(["qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833"]) end)
  def jstatic_set_keys(value), do: JR.static_put(__MODULE__, :keys, value)
def jstatic_KEYMAX(), do: JR.static_get(__MODULE__, :KEYMAX, fn -> JR.alength(WeakCrypt.jstatic_keys()) end)
  def jstatic_set_KEYMAX(value), do: JR.static_put(__MODULE__, :KEYMAX, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :tsUtil, nil)
    JR.put(this, :abCrypt, nil)
        JR.put(this, :tsUtil, TsUtil.jm_getInstance())
        JR.put(this, :abCrypt, AbCrypt.jnew(JR.get(KeySpecFactory.jm_getInstance(), :DES)))
    nil
  end


  def jinit(this, p_key) do
    JR.method(fn ->
      f = JR.frame()
      _ = f
      JR.lset(f, :key, p_key)
      JObject.jinit(this)
      jinitfields(this)
        try do
            JR.call(JR.get(this, :abCrypt), :jm_init, [JR.aget(WeakCrypt.jstatic_keys(), JR.lget(f, :key))])
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            JR.lset(f, :commonStrings, CommonStrings.jm_getInstance())
            PreLogUtil.jm_putOE(JR.get(JR.lget(f, :commonStrings), :EXCEPTION), this, "SuperCrypt(key)", JR.lget(f, :e))
        end
    end)
  end

  def jnew(p_key) do
    this = JR.alloc(__MODULE__)
    jinit(this, p_key)
    this
  end


  def jm_encrypt(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        try do
            JR.lset(f, :crypted, JR.call(JR.get(this, :abCrypt), :jm_encrypt, [JR.call(JR.get(this, :tsUtil), :jm_getByteArray, [JR.lget(f, :value)])]))
            throw({:jreturn, DatabaseEncoder.jm_encode(JR.lget(f, :crypted))})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("Encrypt Failed", this, "encrypt", JR.lget(f, :e))
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end


  def jm_decrypt(this, p_value) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
        try do
            JR.lset(f, :decrypted, JR.call(JR.get(this, :abCrypt), :jm_decrypt, [DatabaseEncoder.jm_decode(JR.lget(f, :value))]))
            throw({:jreturn, JR.lget(f, :decrypted)})
        catch
            {:jexception, jexception} ->
                JR.lset(f, :e, jexception)
            PreLogUtil.jm_putOE("decrypt Failed", this, "decrypt", JR.lget(f, :e))
            throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
        end
    end)
  end
end


