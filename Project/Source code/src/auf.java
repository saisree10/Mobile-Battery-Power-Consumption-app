// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


class auf
{

    public int a;
    public int b;

    public auf(int i, int j)
    {
        a = i;
        b = j;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append(a).append(",").append(b).append("]").toString();
    }
}
