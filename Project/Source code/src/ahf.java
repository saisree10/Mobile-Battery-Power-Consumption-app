// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncStatusObserver;
import android.os.Handler;

public class ahf extends ahp
{

    private final Handler a = new Handler();
    private Object h;
    private SyncStatusObserver i;

    public ahf(Context context)
    {
        super(context);
        i = new ahg(this);
        f = azw.a;
        if (f);
    }

    static Handler a(ahf ahf1)
    {
        return ahf1.a;
    }

    public void a(ahq ahq)
    {
        if (!f)
        {
            return;
        } else
        {
            h = ContentResolver.addStatusChangeListener(13, i);
            e = ahq;
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        } else
        {
            ContentResolver.setMasterSyncAutomatically(flag);
            return;
        }
    }

    public boolean a()
    {
        if (!f)
        {
            return false;
        } else
        {
            g = ContentResolver.getMasterSyncAutomatically();
            return g;
        }
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c2);
    }

    public String toString()
    {
        return "AutoSyncCommand ";
    }
}
