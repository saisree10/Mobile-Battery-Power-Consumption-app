// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class sh
{

    public static void a(String s)
    {
        if ("dev".equals(s))
        {
            ud.a = true;
            ud.b = true;
            ud.d = ud.b;
            ud.c = ud.b;
            return;
        }
        if ("test".equals(s))
        {
            ud.a = true;
            ud.b = true;
            ud.d = ud.b;
            ud.c = ud.b;
            return;
        }
        if ("prod".equals(s))
        {
            ud.a = false;
            ud.b = false;
            ud.d = ud.b;
            ud.c = ud.b;
            return;
        } else
        {
            throw new IllegalArgumentException("wrong environment type!");
        }
    }
}
