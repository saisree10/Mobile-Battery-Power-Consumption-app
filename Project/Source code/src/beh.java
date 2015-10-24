// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.text.NumberFormat;

public class beh
    implements Serializable
{

    private int a;
    private boolean b;
    private int c;
    private float d;
    private android.graphics.Paint.Align e;
    private float f;
    private bee g;
    private boolean h;
    private boolean i;
    private NumberFormat j;
    private boolean k;

    public beh()
    {
        a = 0xff0000ff;
        c = 100;
        d = 10F;
        e = android.graphics.Paint.Align.CENTER;
        f = 5F;
        h = false;
        i = true;
        k = true;
    }

    public int a()
    {
        return a;
    }

    public void a(int l)
    {
        a = l;
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public boolean b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }

    public float d()
    {
        return d;
    }

    public android.graphics.Paint.Align e()
    {
        return e;
    }

    public float f()
    {
        return f;
    }

    public bee g()
    {
        return g;
    }

    public boolean h()
    {
        return i;
    }

    public boolean i()
    {
        return k;
    }

    public NumberFormat j()
    {
        return j;
    }
}
