// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public class ss
{

    private Context a;
    private IntentFilter b;
    private BroadcastReceiver c;

    public ss(Context context)
    {
        b = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        c = new st(this);
        a = context;
    }

    static Context a(ss ss1)
    {
        return ss1.a;
    }

    public void a()
    {
        a.registerReceiver(c, b);
    }

    public void b()
    {
        a.unregisterReceiver(c);
    }
}
