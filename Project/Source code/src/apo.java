// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apo extends BroadcastReceiver
{

    final OperationConfigActivity a;

    public apo(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (!"purchase_changed_action".equals(s)) goto _L2; else goto _L1
_L1:
        String s1 = intent.getStringExtra("product_id");
        if (!TextUtils.isEmpty(s1)) goto _L4; else goto _L3
_L3:
        aev aev1;
        return;
_L4:
        if ((aev1 = aoj.b().a(s1)) != null)
        {
            OperationConfigActivity.a(a, String.valueOf(aev1.u));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if ("use_default_skin".equals(s))
        {
            OperationConfigActivity.b(a);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }
}
