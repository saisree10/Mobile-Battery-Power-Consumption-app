// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.List;

class wp
    implements xx
{

    final boolean a;
    final xn b;
    final List c;
    final wm d;

    wp(wm wm1, boolean flag, xn xn, List list)
    {
        d = wm1;
        a = flag;
        b = xn;
        c = list;
        super();
    }

    public void a()
    {
        if (a)
        {
            if (b != null)
            {
                wm.g(d).a(b);
            }
            if (c != null)
            {
                wm.g(d).a(c);
            }
        } else
        {
            if (b != null)
            {
                wm.g(d).b(b);
            }
            if (c != null)
            {
                wm.g(d).b(c);
                return;
            }
        }
    }
}
