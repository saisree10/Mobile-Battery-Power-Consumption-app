// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import android.content.ComponentName;
import android.content.Intent;
import android.os.RemoteException;
import android.widget.RemoteViews;
import azt;
import baj;
import wa;
import wd;

// Referenced classes of package com.dianxinos.powermanager:
//            DXWidgetProvider1x4

public class DXWidgetClientService1x4 extends wd
{

    public DXWidgetClientService1x4()
    {
    }

    public void a(Intent intent, wa wa1)
    {
    }

    public void b(Intent intent, wa wa1)
    {
    }

    public void c(Intent intent, wa wa1)
    {
    }

    public void d(Intent intent, wa wa1)
    {
    }

    public void e(Intent intent, wa wa1)
    {
        RemoteViews remoteviews;
        ComponentName componentname;
        if (!"com.dianxinos.dxbs.action.DXHomeWidgetUpdate".equals(intent.getAction()))
        {
            break MISSING_BLOCK_LABEL_143;
        }
        remoteviews = (RemoteViews)intent.getParcelableExtra("remote_view");
        componentname = new ComponentName(this, com/dianxinos/powermanager/DXWidgetProvider1x4);
        if (wa1 == null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        int ai[] = wa1.a(componentname);
        if (ai == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        if (ai.length == 0)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        baj.a(this).a(1);
_L2:
        wa1.a(componentname, remoteviews);
        return;
        baj.a(this).a(0);
        if (true) goto _L2; else goto _L1
_L1:
        RemoteException remoteexception;
        remoteexception;
        azt.d("DXWidgetClientService1x4", (new StringBuilder()).append("Failed to update DXHome widget 1x4: ").append(remoteexception).toString());
        return;
        Throwable throwable;
        throwable;
        azt.d("DXWidgetClientService1x4", (new StringBuilder()).append("Failed to update DXHome widget 1x4: ").append(throwable).toString());
    }
}
