// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class wx
{

    public String a;
    public long b;
    public long c;
    public long d;
    public long e;
    public int f;
    public long g;

    public wx()
    {
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AppStartupItem[");
        stringbuilder.append("pkgName=").append(a);
        stringbuilder.append(", sysClockTime=").append(b);
        stringbuilder.append(", fgTime=").append(c);
        stringbuilder.append(", screenTime=").append(e);
        stringbuilder.append(", startupCount=").append(f);
        stringbuilder.append(", lastStartupTime=").append(zo.a(g));
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
