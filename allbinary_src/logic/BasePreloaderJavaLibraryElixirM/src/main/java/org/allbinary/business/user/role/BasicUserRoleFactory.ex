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
# package org.allbinary.business.user.role

defmodule BasicUserRoleFactory do
  def jsuper(), do: JObject
def jstatic_instance(), do: JR.static_get(__MODULE__, :instance, fn -> BasicUserRoleFactory.jnew() end)
  def jstatic_set_instance(value), do: JR.static_put(__MODULE__, :instance, value)

  def jinitfields(this) do
    f = JR.frame()
    _ = f
    _ = this
    JR.put(this, :INACTIVITYTIMEOUT, 0)
    JR.put(this, :CUSTOMERTIMEOUT, 0)
    JR.put(this, :CUSTOMERMAXSESSIONTIME, 0)
    JR.put(this, :MAXSESSIONTIME, 0)
    JR.put(this, :INSTALLER, nil)
    JR.put(this, :ADMINISTRATOR, nil)
    JR.put(this, :CUSTOMER, nil)
    JR.put(this, :SUBSCRIBERCUSTOMER, nil)
    JR.put(this, :WHOLESALECUSTOMER, nil)
    JR.put(this, :STOREMANAGER, nil)
    JR.put(this, :PRODUCTMANAGER, nil)
    JR.put(this, :CUSTOMERMANAGER, nil)
    JR.put(this, :PAYMENTMANAGER, nil)
    JR.put(this, :ORDERMANAGER, nil)
    JR.put(this, :WEBMANAGER, nil)
    JR.put(this, :REVIEWER, nil)
    JR.put(this, :SHIPPING, nil)
    JR.put(this, :ADJUSTER, nil)
    JR.put(this, :WORKFLOWEDITOR, nil)
    JR.put(this, :WIZARD, nil)
    JR.put(this, :VIEWEDITOR, nil)
        JR.put(this, :INACTIVITYTIMEOUT, 360000000)
        JR.put(this, :CUSTOMERTIMEOUT, 360000000)
        JR.put(this, :CUSTOMERMAXSESSIONTIME, 360000000)
        JR.put(this, :MAXSESSIONTIME, 360000000)
        JR.put(this, :INSTALLER, BasicUserRole.jnew("Installer", 16, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :ADMINISTRATOR, BasicUserRole.jnew("Administrator", 0, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :CUSTOMER, BasicUserRole.jnew("CustomerUser", "Customer User", 1, JR.get(this, :CUSTOMERTIMEOUT), JR.get(this, :CUSTOMERMAXSESSIONTIME)))
        JR.put(this, :SUBSCRIBERCUSTOMER, BasicUserRole.jnew("SubscriberUser", "Subscriber User", 2, JR.get(this, :CUSTOMERTIMEOUT), JR.get(this, :CUSTOMERMAXSESSIONTIME)))
        JR.put(this, :WHOLESALECUSTOMER, BasicUserRole.jnew("WholesaleUser", "Wholesale User", 3, JR.get(this, :CUSTOMERTIMEOUT), JR.get(this, :CUSTOMERMAXSESSIONTIME)))
        JR.put(this, :STOREMANAGER, BasicUserRole.jnew("StoreManager", "Store Manager", 4, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :PRODUCTMANAGER, BasicUserRole.jnew("ProductManager", "Product Manager", 5, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :CUSTOMERMANAGER, BasicUserRole.jnew("UserManager", "User Manager", 6, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :PAYMENTMANAGER, BasicUserRole.jnew("PaymentManager", "Payment Manager", 7, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :ORDERMANAGER, BasicUserRole.jnew("OrderManager", "Order Manager", 8, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :WEBMANAGER, BasicUserRole.jnew("WebManager", "Web Manager", 9, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :REVIEWER, BasicUserRole.jnew("Reviewer", 10, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :SHIPPING, BasicUserRole.jnew("Shipping", 11, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :ADJUSTER, BasicUserRole.jnew("Adjuster", 12, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :WORKFLOWEDITOR, BasicUserRole.jnew("WorkFlowEditor", "WorkFlow Editor", 13, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :WIZARD, BasicUserRole.jnew("WizardUser", "Wizard User", 14, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
        JR.put(this, :VIEWEDITOR, BasicUserRole.jnew("ViewEditor", "View Editor", 15, JR.get(this, :MAXSESSIONTIME), JR.get(this, :INACTIVITYTIMEOUT)))
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


  def jm_getInstance() do
    JR.method(fn ->
      f = JR.frame()
      _ = f
        throw({:jreturn, BasicUserRoleFactory.jstatic_instance()})
    end)
  end
end


