// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class wy
{

    public int a;
    public String b;
    public boolean c;
    public wz d;
    public wz e;

    public wy()
    {
        c = true;
        d = new wz();
        e = new wz();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("NetTrafficItem[");
        stringbuilder.append("uid=").append(a);
        stringbuilder.append(", pkgNames=").append(b);
        stringbuilder.append(", dataSaved=").append(c);
        stringbuilder.append(", lastReceived=").append(e.d);
        stringbuilder.append(", lastSended=").append(e.e);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
