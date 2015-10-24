// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.dianxinos.powermanager.usage.AppPowerUsageKitKatActivity;

public class axy extends Handler
{

    final AppPowerUsageKitKatActivity a;

    public axy(AppPowerUsageKitKatActivity apppowerusagekitkatactivity)
    {
        a = apppowerusagekitkatactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        if (message.what == 1)
        {
            AppPowerUsageKitKatActivity.e(a).setVisibility(0);
            AppPowerUsageKitKatActivity.f(a).setVisibility(8);
            TextView textview1 = AppPowerUsageKitKatActivity.g(a);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            textview1.setText(0x7f0a008c);
            AppPowerUsageKitKatActivity.e(a).setAdapter(AppPowerUsageKitKatActivity.d(a));
            if (AppPowerUsageKitKatActivity.h(a) != null)
            {
                AppPowerUsageKitKatActivity.h(a).cancel(true);
                AppPowerUsageKitKatActivity.a(a, null);
            }
        } else
        if (message.what == 2)
        {
            AppPowerUsageKitKatActivity.e(a).setVisibility(8);
            AppPowerUsageKitKatActivity.f(a).setVisibility(0);
            TextView textview = AppPowerUsageKitKatActivity.g(a);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            textview.setText(0x7f0a008b);
            return;
        }
    }
}
