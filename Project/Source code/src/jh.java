// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FileOutputStream;

class jh
{

    public String a;
    public String b;
    public FileOutputStream c;
    public String d;
    public boolean e;
    public int f;
    public int g;
    public String h;
    public boolean i;
    public String j;
    final jd k;

    public jh(jd jd1, iy iy1)
    {
        k = jd1;
        super();
        e = false;
        f = 0;
        g = 0;
        i = false;
        d = jd.a(iy1.d);
        j = iy1.a;
        b = iy1.c;
        a = (new StringBuilder()).append(ix.a(jd.a(jd1), iy1.e)).append(b).toString();
    }
}
