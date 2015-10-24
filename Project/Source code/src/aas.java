// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.PackageAddReceiver;

public class aas
    implements Runnable
{

    final Context a;
    final Intent b;
    final PackageAddReceiver c;

    public aas(PackageAddReceiver packageaddreceiver, Context context, Intent intent)
    {
        c = packageaddreceiver;
        a = context;
        b = intent;
        super();
    }

    public void run()
    {
        aje aje1;
        aje1 = aje.a(a);
        break MISSING_BLOCK_LABEL_8;
        if (!aje1.b() && !b.getBooleanExtra("android.intent.extra.REPLACING", false))
        {
            String as[] = aje1.f();
            long l = System.currentTimeMillis() - Long.parseLong(as[1]);
            if (as[0] != null && l <= 0x5265c00L)
            {
                aje.a(a).c();
                return;
            }
        }
        return;
    }
}
