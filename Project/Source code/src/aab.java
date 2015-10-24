// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import java.util.TimerTask;

class aab extends TimerTask
{

    final aaa a;

    aab(aaa aaa1)
    {
        a = aaa1;
        super();
    }

    public void run()
    {
        aaa.a(a).sendBroadcast(new Intent("com.dianxinos.dxbs.action.RemainingTimeUpate"));
    }
}
