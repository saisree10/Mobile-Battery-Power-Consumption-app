// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import com.dianxinos.powermanager.PowerMgrTabActivity;

class aus
    implements android.view.View.OnClickListener
{

    final Context a;
    final auq b;

    aus(auq auq1, Context context)
    {
        b = auq1;
        a = context;
        super();
    }

    public void onClick(View view)
    {
        bal.a(auq.c(b), "birc", "cfvc", Integer.valueOf(1));
        auq.d(b).removeMessages(273);
        auq.d(b).sendEmptyMessage(273);
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(auq.c(b), com/dianxinos/powermanager/PowerMgrTabActivity));
        intent.putExtra("From", 9);
        intent.addFlags(0x10200000);
        a.startActivity(intent);
    }
}
