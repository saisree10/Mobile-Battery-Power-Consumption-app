// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.util.Log;

class tu extends PhoneStateListener
{

    final ts a;

    tu(ts ts1)
    {
        a = ts1;
        super();
    }

    public void onServiceStateChanged(ServiceState servicestate)
    {
        if (ud.b)
        {
            Log.d("stat.HwInfoService", (new StringBuilder()).append("operator-alpha-long: ").append(servicestate.getOperatorAlphaLong()).append(", operator-alpha-short: ").append(servicestate.getOperatorAlphaShort()).append(", operator-numeric: ").append(servicestate.getOperatorNumeric()).append(".").toString());
        }
        ts.e(a);
    }
}
