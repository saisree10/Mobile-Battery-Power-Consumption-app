// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.smart.SmartSettingsActivity;

public class asr extends Handler
{

    final SmartSettingsActivity a;

    private asr(SmartSettingsActivity smartsettingsactivity)
    {
        a = smartsettingsactivity;
        super();
    }

    public asr(SmartSettingsActivity smartsettingsactivity, asl asl)
    {
        this(smartsettingsactivity);
    }

    public void handleMessage(Message message)
    {
        if (message.what == SmartSettingsActivity.h())
        {
            SmartSettingsActivity.f(a);
        } else
        {
            if (message.what == SmartSettingsActivity.f())
            {
                n n1 = a.getActivity();
                SmartSettingsActivity smartsettingsactivity1 = a;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(n1, smartsettingsactivity1.getString(0x7f0a0191), 0).show();
                return;
            }
            if (message.what == SmartSettingsActivity.g())
            {
                n n = a.getActivity();
                SmartSettingsActivity smartsettingsactivity = a;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Toast.makeText(n, smartsettingsactivity.getString(0x7f0a0194), 0).show();
                return;
            }
        }
    }
}
