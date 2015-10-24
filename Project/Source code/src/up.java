// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.URI;
import java.util.ArrayList;

class up
    implements Runnable
{

    final int a;
    final ur b;
    final int c;
    final un d;

    up(un un1, int i, ur ur1, int j)
    {
        d = un1;
        a = i;
        b = ur1;
        c = j;
        super();
    }

    public void run()
    {
        URI uri = ve.a(un.a(d), un.c(), un.d(), a);
        String s = vv.a("get_hot_list", a, "");
        if (vv.a(un.a(d)))
        {
            vb vb1 = vc.a(un.a(d), uri, un.e().a(uri.toString()));
            if (vb1 != null)
            {
                vb1.a(s);
                un.e().a(vb1);
            }
        }
        ArrayList arraylist = un.e().a(s, a);
        if (arraylist != null)
        {
            vt.b("DXFBManager", (new StringBuilder()).append(" getHotTopic list size ").append(arraylist.size()).toString());
        }
        int i;
        if (arraylist != null && arraylist.size() > 0)
        {
            i = 0;
        } else
        {
            i = 1;
        }
        if (b != null)
        {
            b.a(c, i, arraylist);
        }
    }
}
