// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.toolbox.ToolboxActivity;

class aup
    implements android.view.View.OnClickListener
{

    final auo a;

    aup(auo auo1)
    {
        a = auo1;
        super();
    }

    public void onClick(View view)
    {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.addFlags(0x10000000);
        ToolboxActivity.e(a.c).startActivity(intent);
        pf.l(ToolboxActivity.f(a.c));
    }
}
