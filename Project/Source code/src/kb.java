// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.Map;

class kb
    implements iv
{

    final jv a;
    final int b;
    final boolean c;
    final ka d;

    kb(ka ka1, jv jv1, int i, boolean flag)
    {
        d = ka1;
        a = jv1;
        b = i;
        c = flag;
        super();
    }

    public void a()
    {
        if (a != null)
        {
            a.d();
        }
    }

    public void a(int i, String s, String s1, int j, Map map)
    {
        if (ka.p())
        {
            Log.d("UpdateManager", (new StringBuilder()).append("Update found before download, url:").append(ka.a(d)).toString());
        }
        ka.a(d, ka.a(d), a, b, c);
    }

    public void b()
    {
        if (ka.p())
        {
            Log.d("UpdateManager", "No update available");
        }
        if (a != null)
        {
            a.d();
        }
    }
}
