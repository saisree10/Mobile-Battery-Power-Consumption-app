// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Typeface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class bef
    implements Serializable
{

    private static final Typeface c;
    private boolean A;
    private float B;
    private boolean C;
    private float D;
    private boolean E;
    private int F;
    private boolean G;
    private float H;
    private beg I;
    private String a;
    private float b;
    private String d;
    private int e;
    private Typeface f;
    private int g;
    private boolean h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private float m;
    private boolean n;
    private float o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private List t;
    private boolean u;
    private int v;
    private int w[] = {
        20, 30, 10, 20
    };
    private float x;
    private boolean y;
    private boolean z;

    public bef()
    {
        a = "";
        b = 15F;
        d = c.toString();
        e = 0;
        i = true;
        j = 0xffcccccc;
        k = true;
        l = 0xffcccccc;
        m = 10F;
        n = true;
        o = 12F;
        p = false;
        q = false;
        r = false;
        s = false;
        t = new ArrayList();
        u = true;
        v = 0;
        x = 1.0F;
        y = true;
        z = true;
        A = false;
        B = 1.5F;
        C = false;
        D = x;
        E = false;
        F = 15;
        H = 0.0F;
    }

    public float A()
    {
        return B;
    }

    public boolean B()
    {
        return y;
    }

    public boolean C()
    {
        return E;
    }

    public int D()
    {
        return F;
    }

    public int E()
    {
        return v;
    }

    public int[] F()
    {
        return w;
    }

    public boolean G()
    {
        return G;
    }

    public beh a(int i1)
    {
        return (beh)t.get(i1);
    }

    public String a()
    {
        return a;
    }

    public void a(float f1)
    {
        m = f1;
    }

    public void a(beg beg)
    {
        I = beg;
    }

    public void a(beh beh1)
    {
        t.add(beh1);
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public void a(int ai[])
    {
        w = ai;
    }

    public beg b()
    {
        return I;
    }

    public void b(float f1)
    {
        x = f1;
    }

    public void b(int i1)
    {
        g = i1;
    }

    public void b(boolean flag)
    {
        n = flag;
    }

    public float c()
    {
        return b;
    }

    public void c(int i1)
    {
        j = i1;
    }

    public void c(boolean flag)
    {
        u = flag;
    }

    public int d()
    {
        return t.size();
    }

    public void d(boolean flag)
    {
        A = flag;
    }

    public int e()
    {
        return g;
    }

    public boolean f()
    {
        return h;
    }

    public int g()
    {
        return j;
    }

    public int h()
    {
        return l;
    }

    public float i()
    {
        return m;
    }

    public boolean j()
    {
        return i;
    }

    public boolean k()
    {
        return k;
    }

    public boolean l()
    {
        return q;
    }

    public boolean m()
    {
        return r;
    }

    public boolean n()
    {
        return s;
    }

    public boolean o()
    {
        return n;
    }

    public boolean p()
    {
        return p;
    }

    public String q()
    {
        return d;
    }

    public int r()
    {
        return e;
    }

    public Typeface s()
    {
        return f;
    }

    public float t()
    {
        return o;
    }

    public boolean u()
    {
        return u;
    }

    public float v()
    {
        return x;
    }

    public float w()
    {
        return D;
    }

    public boolean x()
    {
        return z;
    }

    public boolean y()
    {
        return A;
    }

    public boolean z()
    {
        return C;
    }

    static 
    {
        c = Typeface.create(Typeface.SERIF, 0);
    }
}
