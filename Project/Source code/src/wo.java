// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class wo
    implements xx
{

    final boolean a;
    final String b;
    final boolean c;
    final String d;
    final xn e;
    final xn f;
    final xq g;
    final xq h;
    final int i;
    final wm j;

    wo(wm wm1, boolean flag, String s, boolean flag1, String s1, xn xn, xn xn1, 
            xq xq, xq xq1, int k)
    {
        j = wm1;
        a = flag;
        b = s;
        c = flag1;
        d = s1;
        e = xn;
        f = xn1;
        g = xq;
        h = xq1;
        i = k;
        super();
    }

    public void a()
    {
        if (xc.e())
        {
            ws ws1 = wm.g(j);
            String s;
            boolean flag;
            String s1;
            if (a)
            {
                s = null;
            } else
            {
                s = b;
            }
            flag = c;
            s1 = null;
            if (!flag)
            {
                s1 = d;
            }
            ws1.a(s, s1, wm.f(j));
        }
        if (e != null)
        {
            wm.g(j).b(e);
            wm.g(j).c(e);
        }
        if (f != null)
        {
            wm.g(j).a(f);
        }
        if (g != null)
        {
            wm.g(j).b(g);
            wm.g(j).c(g);
        } else
        {
            wm.a("No old power snap for update.");
        }
        if (h != null)
        {
            wm.g(j).a(h);
        } else
        {
            wm.a("No new power snap for update.");
        }
        if (i > 0)
        {
            wm.g(j).a(d, i);
        }
    }
}
