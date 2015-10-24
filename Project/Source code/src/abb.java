// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.PowerMgrHomeActivity;
import com.dianxinos.powermanager.PowerMgrTabActivity;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;

public class abb extends BroadcastReceiver
{

    final PowerMgrHomeActivity a;

    private abb(PowerMgrHomeActivity powermgrhomeactivity)
    {
        a = powermgrhomeactivity;
        super();
    }

    public abb(PowerMgrHomeActivity powermgrhomeactivity, aba aba)
    {
        this(powermgrhomeactivity);
    }

    public void onReceive(Context context, Intent intent)
    {
        if (PowerMgrHomeActivity.a.equals(intent.getAction()))
        {
            PowerMgrTabActivity powermgrtabactivity = (PowerMgrTabActivity)a.getParent();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            powermgrtabactivity.setTitle(0x7f0a0228);
            a.startActivity(new Intent(a, com/dianxinos/powermanager/diagnostic/DiagnosticMainActivity));
        }
    }
}
