// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;

class lv extends HashMap
{

    lv(String s, int i, String s1, String s2)
    {
        put("host", s);
        put("port", Integer.valueOf(i));
        put("user", s1);
        put("password", s2);
    }
}
