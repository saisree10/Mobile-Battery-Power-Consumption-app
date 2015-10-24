// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.toolbox;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import aui;
import auk;
import aun;
import auo;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import ly;
import mc;
import oa;
import pf;
import pj;
import qp;

public class ToolboxActivity extends qp
{

    private mc h;
    private auk i;

    public ToolboxActivity()
    {
        h = new aun(this);
    }

    public static void a(ToolboxActivity toolboxactivity)
    {
        toolboxactivity.h();
    }

    public static void b(ToolboxActivity toolboxactivity)
    {
        toolboxactivity.h();
    }

    public static void c(ToolboxActivity toolboxactivity)
    {
        toolboxactivity.h();
    }

    public static Activity d(ToolboxActivity toolboxactivity)
    {
        return toolboxactivity.a;
    }

    public static Activity e(ToolboxActivity toolboxactivity)
    {
        return toolboxactivity.a;
    }

    public static Activity f(ToolboxActivity toolboxactivity)
    {
        return toolboxactivity.a;
    }

    public static Activity g(ToolboxActivity toolboxactivity)
    {
        return toolboxactivity.a;
    }

    protected boolean a(Intent intent)
    {
        if (i != null && i.isShowing() && oa.a(this) != 0)
        {
            i.dismiss();
            i = null;
        }
        return false;
    }

    protected void b()
    {
        pf.g(a);
        if (c() == 0)
        {
            i = new auk(this);
            i.show();
            pf.i(a);
            return;
        } else
        {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.addFlags(0x10000000);
            startActivity(intent);
            return;
        }
    }

    protected void f()
    {
        (new aui(this)).show();
    }

    protected pj l()
    {
        return new auo(this, this);
    }

    public void onBackPressed()
    {
        Activity activity = getParent();
        if (activity != null)
        {
            activity.onBackPressed();
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        CoinManager.a(this, h);
    }

    public void onDestroy()
    {
        super.onDestroy();
        CoinManager.b(this, h);
    }

    public void onResume()
    {
        super.onResume();
        PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)getParent();
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        powermgrtabactivity.setTitle(0x7f0a0269);
    }

    public void startActivity(Intent intent)
    {
        getParent().startActivity(intent);
    }
}
