// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

public class aex
{

    private Activity a;
    private akx b;
    private Handler c;
    private aku d;

    public aex(Activity activity)
    {
        a = activity;
        b = akx.a(a);
        d = new aku();
        c = new aey(this, Looper.getMainLooper());
    }

    void a()
    {
        d.a();
    }

    void a(int i)
    {
        d.a(a, i);
    }

    public void a(String s)
    {
        b.a(a, s, c);
    }
}
