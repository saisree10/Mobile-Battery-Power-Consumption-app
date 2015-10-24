// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.SeekBar;
import android.widget.TextView;
import com.dianxinos.powermanager.smart.SmartModeBatterySettings;
import com.dianxinos.powermanager.ui.DxGotoPreference;

public class arw
    implements android.widget.SeekBar.OnSeekBarChangeListener
{

    final SmartModeBatterySettings a;

    public arw(SmartModeBatterySettings smartmodebatterysettings)
    {
        a = smartmodebatterysettings;
        super();
    }

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        if (flag)
        {
            DxGotoPreference dxgotopreference;
            SmartModeBatterySettings smartmodebatterysettings;
            Object aobj[];
            DxGotoPreference dxgotopreference1;
            SmartModeBatterySettings smartmodebatterysettings1;
            Object aobj1[];
            if (SmartModeBatterySettings.e(a))
            {
                SmartModeBatterySettings.a(a, 10 * (i + 1));
            } else
            {
                SmartModeBatterySettings.a(a, i + 10);
            }
            SmartModeBatterySettings.b(a).setText((new StringBuilder()).append(" ").append(SmartModeBatterySettings.a(a)).append("%").toString());
            dxgotopreference = SmartModeBatterySettings.c(a);
            smartmodebatterysettings = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            aobj = new Object[1];
            aobj[0] = (new StringBuilder()).append(SmartModeBatterySettings.a(a)).append("%").toString();
            dxgotopreference.setTitle(smartmodebatterysettings.getString(0x7f0a0147, aobj));
            dxgotopreference1 = SmartModeBatterySettings.d(a);
            smartmodebatterysettings1 = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            aobj1 = new Object[1];
            aobj1[0] = (new StringBuilder()).append(SmartModeBatterySettings.a(a)).append("%").toString();
            dxgotopreference1.setTitle(smartmodebatterysettings1.getString(0x7f0a0148, aobj1));
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
        SmartModeBatterySettings.b(a).setText((new StringBuilder()).append(" ").append(SmartModeBatterySettings.a(a)).append("%").toString());
        DxGotoPreference dxgotopreference = SmartModeBatterySettings.c(a);
        SmartModeBatterySettings smartmodebatterysettings = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = (new StringBuilder()).append(SmartModeBatterySettings.a(a)).append("%").toString();
        dxgotopreference.setTitle(smartmodebatterysettings.getString(0x7f0a0147, aobj));
        DxGotoPreference dxgotopreference1 = SmartModeBatterySettings.d(a);
        SmartModeBatterySettings smartmodebatterysettings1 = a;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        Object aobj1[] = new Object[1];
        aobj1[0] = (new StringBuilder()).append(SmartModeBatterySettings.a(a)).append("%").toString();
        dxgotopreference1.setTitle(smartmodebatterysettings1.getString(0x7f0a0148, aobj1));
    }
}
