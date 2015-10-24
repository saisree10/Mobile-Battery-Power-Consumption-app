// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.View;

class ayt
    implements android.view.View.OnClickListener
{

    final Context a;
    final ays b;

    ayt(ays ays1, Context context)
    {
        b = ays1;
        a = context;
        super();
    }

    public void onClick(View view)
    {
        ays.a = true;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(0x10000000);
        intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.BatterySettings"));
        a.startActivity(intent);
    }
}
