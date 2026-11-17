# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.device

defmodule NullGL10 do
  def jsuper(), do: JObject
def jstatic_NULL_GL10(), do: JR.static_get(__MODULE__, :NULL_GL10, fn -> NullGL10.jnew() end)
  def jstatic_set_NULL_GL10(value), do: JR.static_put(__MODULE__, :NULL_GL10, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    nil
  end

  def jinit(this) do
    JObject.jinit(this)
    jinitfields(this)
  end

  def jnew() do
    this = JR.alloc(__MODULE__)
    jinit(this)
    this
  end


  def jm_glActiveTexture(this, p_texture) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :texture, p_texture)
        throw({:jreturn, nil})
    end)
  end


  def jm_glAlphaFunc(this, p_func, p_ref) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :func, p_func)
      JR.lset(f, :ref, p_ref)
        throw({:jreturn, nil})
    end)
  end


  def jm_glBindTexture(this, p_target, p_texture) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :texture, p_texture)
        throw({:jreturn, nil})
    end)
  end


  def jm_glBlendFunc(this, p_sfactor, p_dfactor) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :sfactor, p_sfactor)
      JR.lset(f, :dfactor, p_dfactor)
        throw({:jreturn, nil})
    end)
  end


  def jm_glClear(this, p_mask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mask, p_mask)
        throw({:jreturn, nil})
    end)
  end


  def jm_glClearColor(this, p_red, p_green, p_blue, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :red, p_red)
      JR.lset(f, :green, p_green)
      JR.lset(f, :blue, p_blue)
      JR.lset(f, :alpha, p_alpha)
        throw({:jreturn, nil})
    end)
  end


  def jm_glClearDepthf(this, p_depth) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :depth, p_depth)
        throw({:jreturn, nil})
    end)
  end


  def jm_glClearStencil(this, p_s) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :s, p_s)
        throw({:jreturn, nil})
    end)
  end


  def jm_glClientActiveTexture(this, p_texture) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :texture, p_texture)
        throw({:jreturn, nil})
    end)
  end


  def jm_glColor4f(this, p_red, p_green, p_blue, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :red, p_red)
      JR.lset(f, :green, p_green)
      JR.lset(f, :blue, p_blue)
      JR.lset(f, :alpha, p_alpha)
        throw({:jreturn, nil})
    end)
  end


  def jm_glColorMask(this, p_red, p_green, p_blue, p_alpha) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :red, p_red)
      JR.lset(f, :green, p_green)
      JR.lset(f, :blue, p_blue)
      JR.lset(f, :alpha, p_alpha)
        throw({:jreturn, nil})
    end)
  end


  def jm_glColorPointer(this, p_size, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
        throw({:jreturn, nil})
    end)
  end


  def jm_glCompressedTexImage2D(this, p_target, p_level, p_internalformat, p_width, p_height, p_border, p_imageSize, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :internalformat, p_internalformat)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :border, p_border)
      JR.lset(f, :imageSize, p_imageSize)
      JR.lset(f, :data, p_data)
        throw({:jreturn, nil})
    end)
  end


  def jm_glCompressedTexSubImage2D(this, p_target, p_level, p_xoffset, p_yoffset, p_width, p_height, p_format, p_imageSize, p_data) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :xoffset, p_xoffset)
      JR.lset(f, :yoffset, p_yoffset)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :format, p_format)
      JR.lset(f, :imageSize, p_imageSize)
      JR.lset(f, :data, p_data)
        throw({:jreturn, nil})
    end)
  end


  def jm_glCopyTexImage2D(this, p_target, p_level, p_internalformat, p_x, p_y, p_width, p_height, p_border) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :internalformat, p_internalformat)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :border, p_border)
        throw({:jreturn, nil})
    end)
  end


  def jm_glCopyTexSubImage2D(this, p_target, p_level, p_xoffset, p_yoffset, p_x, p_y, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :xoffset, p_xoffset)
      JR.lset(f, :yoffset, p_yoffset)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, nil})
    end)
  end


  def jm_glCullFace(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDeleteTextures(this, p_n, p_textures, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :n, p_n)
      JR.lset(f, :textures, p_textures)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDeleteTextures(this, p_n, p_textures) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :n, p_n)
      JR.lset(f, :textures, p_textures)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDepthFunc(this, p_func) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :func, p_func)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDepthMask(this, p_flag) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :flag, p_flag)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDepthRangef(this, p_zNear, p_zFar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :zNear, p_zNear)
      JR.lset(f, :zFar, p_zFar)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDisable(this, p_cap) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cap, p_cap)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDisableClientState(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDrawArrays(this, p_mode, p_first, p_count) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
      JR.lset(f, :first, p_first)
      JR.lset(f, :count, p_count)
        throw({:jreturn, nil})
    end)
  end


  def jm_glDrawElements(this, p_mode, p_count, p_type, p_indices) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
      JR.lset(f, :count, p_count)
      JR.lset(f, :type, p_type)
      JR.lset(f, :indices, p_indices)
        throw({:jreturn, nil})
    end)
  end


  def jm_glEnable(this, p_cap) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :cap, p_cap)
        throw({:jreturn, nil})
    end)
  end


  def jm_glEnableClientState(this, p_array) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :array, p_array)
        throw({:jreturn, nil})
    end)
  end


  def jm_glFinish(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glFlush(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glFogf(this, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glFogfv(this, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glFogfv(this, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glFrontFace(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glFrustumf(this, p_left, p_right, p_bottom, p_top, p_zNear, p_zFar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :left, p_left)
      JR.lset(f, :right, p_right)
      JR.lset(f, :bottom, p_bottom)
      JR.lset(f, :top, p_top)
      JR.lset(f, :zNear, p_zNear)
      JR.lset(f, :zFar, p_zFar)
        throw({:jreturn, nil})
    end)
  end


  def jm_glGenTextures(this, p_n, p_textures, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :n, p_n)
      JR.lset(f, :textures, p_textures)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glGenTextures(this, p_n, p_textures) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :n, p_n)
      JR.lset(f, :textures, p_textures)
        throw({:jreturn, nil})
    end)
  end


  def jm_glGetError(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, 0})
    end)
  end


  def jm_glGetIntegerv(this, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glGetIntegerv(this, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glGetString(this, p_name) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :name, p_name)
        throw({:jreturn, JR.get(StringUtil.jm_getInstance(), :EMPTY_STRING)})
    end)
  end


  def jm_glHint(this, p_target, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :mode, p_mode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightModelf(this, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightModelfv(this, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightModelfv(this, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightf(this, p_light, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :light, p_light)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightfv(this, p_light, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :light, p_light)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLightfv(this, p_light, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :light, p_light)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLineWidth(this, p_width) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :width, p_width)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLoadIdentity(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glLoadMatrixf(this, p_m, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :m, p_m)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLoadMatrixf(this, p_m) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :m, p_m)
        throw({:jreturn, nil})
    end)
  end


  def jm_glLogicOp(this, p_opcode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :opcode, p_opcode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMaterialf(this, p_face, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :face, p_face)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMaterialfv(this, p_face, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :face, p_face)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMaterialfv(this, p_face, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :face, p_face)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMatrixMode(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMultMatrixf(this, p_m, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :m, p_m)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMultMatrixf(this, p_m) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :m, p_m)
        throw({:jreturn, nil})
    end)
  end


  def jm_glMultiTexCoord4f(this, p_target, p_s, p_t, p_r, p_q) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :s, p_s)
      JR.lset(f, :t, p_t)
      JR.lset(f, :r, p_r)
      JR.lset(f, :q, p_q)
        throw({:jreturn, nil})
    end)
  end


  def jm_glNormal3f(this, p_nx, p_ny, p_nz) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :nx, p_nx)
      JR.lset(f, :ny, p_ny)
      JR.lset(f, :nz, p_nz)
        throw({:jreturn, nil})
    end)
  end


  def jm_glNormalPointer(this, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
        throw({:jreturn, nil})
    end)
  end


  def jm_glOrthof(this, p_left, p_right, p_bottom, p_top, p_zNear, p_zFar) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :left, p_left)
      JR.lset(f, :right, p_right)
      JR.lset(f, :bottom, p_bottom)
      JR.lset(f, :top, p_top)
      JR.lset(f, :zNear, p_zNear)
      JR.lset(f, :zFar, p_zFar)
        throw({:jreturn, nil})
    end)
  end


  def jm_glPixelStorei(this, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glPointSize(this, p_size) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
        throw({:jreturn, nil})
    end)
  end


  def jm_glPolygonOffset(this, p_factor, p_units) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :factor, p_factor)
      JR.lset(f, :units, p_units)
        throw({:jreturn, nil})
    end)
  end


  def jm_glPopMatrix(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glPushMatrix(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glReadPixels(this, p_x, p_y, p_width, p_height, p_format, p_type, p_pixels) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :format, p_format)
      JR.lset(f, :type, p_type)
      JR.lset(f, :pixels, p_pixels)
        throw({:jreturn, nil})
    end)
  end


  def jm_glRotatef(this, p_angle, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jreturn, nil})
    end)
  end


  def jm_glRotatex(this, p_angle, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :angle, p_angle)
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jreturn, nil})
    end)
  end


  def jm_glSampleCoverage(this, p_value, p_invert) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :value, p_value)
      JR.lset(f, :invert, p_invert)
        throw({:jreturn, nil})
    end)
  end


  def jm_glScalef(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jreturn, nil})
    end)
  end


  def jm_glScalex(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jreturn, nil})
    end)
  end


  def jm_glScissor(this, p_x, p_y, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, nil})
    end)
  end


  def jm_glShadeModel(this, p_mode) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mode, p_mode)
        throw({:jreturn, nil})
    end)
  end


  def jm_glStencilFunc(this, p_func, p_ref, p_mask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :func, p_func)
      JR.lset(f, :ref, p_ref)
      JR.lset(f, :mask, p_mask)
        throw({:jreturn, nil})
    end)
  end


  def jm_glStencilMask(this, p_mask) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :mask, p_mask)
        throw({:jreturn, nil})
    end)
  end


  def jm_glStencilOp(this, p_fail, p_zfail, p_zpass) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :fail, p_fail)
      JR.lset(f, :zfail, p_zfail)
      JR.lset(f, :zpass, p_zpass)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexCoordPointer(this, p_size, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexEnvf(this, p_target, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexEnvfv(this, p_target, p_pname, p_params, p_offset) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
      JR.lset(f, :offset, p_offset)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexEnvfv(this, p_target, p_pname, p_params) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :params, p_params)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexImage2D(this, p_target, p_level, p_internalformat, p_width, p_height, p_border, p_format, p_type, p_pixels) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :internalformat, p_internalformat)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :border, p_border)
      JR.lset(f, :format, p_format)
      JR.lset(f, :type, p_type)
      JR.lset(f, :pixels, p_pixels)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexParameterf(this, p_target, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexParameteri(this, p_target, p_pname, p_param) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :pname, p_pname)
      JR.lset(f, :param, p_param)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTexSubImage2D(this, p_target, p_level, p_xoffset, p_yoffset, p_width, p_height, p_format, p_type, p_pixels) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :target, p_target)
      JR.lset(f, :level, p_level)
      JR.lset(f, :xoffset, p_xoffset)
      JR.lset(f, :yoffset, p_yoffset)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
      JR.lset(f, :format, p_format)
      JR.lset(f, :type, p_type)
      JR.lset(f, :pixels, p_pixels)
        throw({:jreturn, nil})
    end)
  end


  def jm_glTranslatef(this, p_x, p_y, p_z) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :z, p_z)
        throw({:jreturn, nil})
    end)
  end


  def jm_glVertexPointer(this, p_size, p_type, p_stride, p_pointer) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :size, p_size)
      JR.lset(f, :type, p_type)
      JR.lset(f, :stride, p_stride)
      JR.lset(f, :pointer, p_pointer)
        throw({:jreturn, nil})
    end)
  end


  def jm_glViewport(this, p_x, p_y, p_width, p_height) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :x, p_x)
      JR.lset(f, :y, p_y)
      JR.lset(f, :width, p_width)
      JR.lset(f, :height, p_height)
        throw({:jreturn, nil})
    end)
  end


  def jm_glBegin(this, p_i) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :i, p_i)
        throw({:jreturn, nil})
    end)
  end


  def jm_glEnd(this) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
        throw({:jreturn, nil})
    end)
  end


  def jm_glVertex3f(this, p_f, p_f2, p_f3) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :f, p_f)
      JR.lset(f, :f2, p_f2)
      JR.lset(f, :f3, p_f3)
        throw({:jreturn, nil})
    end)
  end


  def jm_glPolygonMode(this, p_i, p_i1) do
    JR.method(fn ->
      _ = this
      f = JR.frame()
      _ = f
      JR.lset(f, :i, p_i)
      JR.lset(f, :i1, p_i1)
        throw({:jreturn, nil})
    end)
  end
end


