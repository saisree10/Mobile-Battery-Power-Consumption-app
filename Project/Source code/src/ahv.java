// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentQueryMap;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Handler;

public class ahv extends ahp
{

    private ConnectivityManager a;
    private ContentQueryMap h;
    private ahy i;
    private ContentResolver j;
    private ahx k;

    public ahv(Context context)
    {
        super(context);
        boolean flag;
        android.database.Cursor cursor;
        if (azw.h && azf.b(context) && azf.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = flag;
        a = (ConnectivityManager)context.getSystemService("connectivity");
        j = context.getContentResolver();
        k = new ahx(this, new Handler());
        cursor = j.query(android.provider.Settings.Secure.CONTENT_URI, null, "(name=?)", new String[] {
            "mobile_data"
        }, null);
        if (cursor != null)
        {
            h = new ContentQueryMap(cursor, "name", true, null);
            i = new ahy(this, null);
        }
    }

    static ContentResolver a(ahv ahv1)
    {
        return ahv1.j;
    }

    public void a(ahq ahq1)
    {
        k.a();
        if (h != null)
        {
            h.addObserver(i);
        }
        e = ahq1;
    }

    public void a(boolean flag)
    {
        if (f) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!gj.a(a, flag) || e == null) goto _L1; else goto _L3
_L3:
        Intent intent;
        int l;
        if (a())
        {
            l = 1;
        } else
        {
            l = 0;
        }
        try
        {
            e.a(this, l, l);
            return;
        }
        catch (SecurityException securityexception)
        {
            f = false;
        }
        intent = new Intent("android.settings.WIRELESS_SETTINGS");
        intent.addFlags(0x10000000);
        d.startActivity(intent);
        return;
    }

    public boolean a()
    {
        if (!azf.e())
        {
            return true;
        } else
        {
            g = gj.a(a);
            return g;
        }
    }

    public String c()
    {
        Context context = d;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a00c3);
    }

    public String toString()
    {
        return "MobileDataCommand";
    }
}
