// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class wu
{

    public int a;
    public String b;
    public boolean c;
    public wv d;
    public wv e;
    public wv f;
    public wv g;

    public wu()
    {
        c = true;
        d = new wv();
        e = new wv();
        f = new wv();
        g = new wv();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AppPowerItem[");
        stringbuilder.append("uid=").append(a);
        stringbuilder.append(", pkgName=").append(b);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
