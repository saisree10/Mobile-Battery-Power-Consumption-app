// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;

class agy
    implements android.view.View.OnClickListener
{

    final Context a;
    final agx b;

    agy(agx agx, Context context)
    {
        b = agx;
        a = context;
        super();
    }

    public void onClick(View view)
    {
        a.sendBroadcast(new Intent("com.dianxinos.dxbs.GOTO_TOOLBOX"));
    }
}
