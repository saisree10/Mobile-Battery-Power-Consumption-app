// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import java.util.HashMap;
import java.util.Map;

public class AppsFlyerProperties
{

    private static AppsFlyerProperties b = new AppsFlyerProperties();
    Map a;

    private AppsFlyerProperties()
    {
        a = new HashMap();
    }

    public static AppsFlyerProperties a()
    {
        return b;
    }

    public String a(String s)
    {
        return (String)a.get(s);
    }

    public void a(String s, String s1)
    {
        a.put(s, s1);
    }

}
