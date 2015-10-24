// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;

public class ahn extends ahp
{

    private ContentResolver a;
    private aho h;

    public ahn(Context context)
    {
        super(context);
        f = false;
        if (!f)
        {
            return;
        } else
        {
            a = context.getContentResolver();
            h = new aho(this, new Handler());
            return;
        }
    }

    static ContentResolver a(ahn ahn1)
    {
        return ahn1.a;
    }

    public void a(ahq ahq)
    {
        if (!f)
        {
            return;
        } else
        {
            h.a();
            e = ahq;
            return;
        }
    }

    public void a(boolean flag)
    {
        if (!f)
        {
            return;
        }
        ContentResolver contentresolver = a;
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        android.provider.Settings.System.putInt(contentresolver, "com.dianxinos.dxbs.auto_cleanup", i);
    }

    public boolean a()
    {
        boolean flag = true;
        if (!f)
        {
            return false;
        }
        if (android.provider.Settings.System.getInt(a, "com.dianxinos.dxbs.auto_cleanup", 0) != flag)
        {
            flag = false;
        }
        g = flag;
        return g;
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00ca);
    }

    public String toString()
    {
        return "CleanupCommand ";
    }
}
