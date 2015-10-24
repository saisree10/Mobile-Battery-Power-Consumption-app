// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.List;

public class bek extends beh
{

    private boolean a;
    private List b;
    private bdv c;
    private float d;
    private float e;

    public bek()
    {
        a = false;
        b = new ArrayList();
        c = bdv.f;
        d = 1.0F;
        e = 1.0F;
    }

    public void a(float f)
    {
        d = f;
    }

    public void a(bdv bdv1)
    {
        c = bdv1;
    }

    public void b(float f)
    {
        e = f;
    }

    public void b(boolean flag)
    {
        b.clear();
        if (flag)
        {
            b.add(new bel(bem.b));
            return;
        } else
        {
            b.add(new bel(bem.a));
            return;
        }
    }

    public void c(boolean flag)
    {
        a = flag;
    }

    public boolean k()
    {
        return b.size() > 0;
    }

    public bel[] l()
    {
        return (bel[])b.toArray(new bel[0]);
    }

    public boolean m()
    {
        return a;
    }

    public bdv n()
    {
        return c;
    }

    public float o()
    {
        return d;
    }

    public float p()
    {
        return e;
    }
}
