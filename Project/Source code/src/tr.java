// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

final class tr
{

    private final Context a;
    private final Map b = new HashMap();

    public tr(Context context)
    {
        a = context;
    }

    public th a(String s)
    {
        if (b.containsKey(s))
        {
            return (th)b.get(s);
        } else
        {
            th th1 = new th(a, s);
            b.put(s, th1);
            return th1;
        }
    }
}
