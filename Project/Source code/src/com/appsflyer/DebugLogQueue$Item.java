// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import java.util.Date;

public class b
{

    private String a;
    private long b;

    public String a()
    {
        return a;
    }

    public long b()
    {
        return b;
    }

    public (String s)
    {
        a = s;
        b = (new Date()).getTime();
    }
}
