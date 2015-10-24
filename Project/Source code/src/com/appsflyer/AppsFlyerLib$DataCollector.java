// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.appsflyer;

import android.content.Context;

// Referenced classes of package com.appsflyer:
//            AppsFlyerLib

class <init>
    implements Runnable
{

    private Context a;
    private String b;
    private String c;
    private String d;
    private String e;

    public void run()
    {
        AppsFlyerLib.a(a, b, c, d, e);
    }

    private (Context context, String s, String s1, String s2, String s3)
    {
        a = context;
        b = s;
        c = s1;
        d = s2;
        e = s3;
    }

    e(Context context, String s, String s1, String s2, String s3, e e1)
    {
        this(context, s, s1, s2, s3);
    }
}
