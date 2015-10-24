// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.widget.SeekBar;
import android.widget.TextView;
import com.dianxinos.powermanager.menu.AutoCleanupSettings;

public class alp
    implements android.widget.SeekBar.OnSeekBarChangeListener
{

    final AutoCleanupSettings a;

    public alp(AutoCleanupSettings autocleanupsettings)
    {
        a = autocleanupsettings;
        super();
    }

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        if (flag)
        {
            AutoCleanupSettings.a(a, 5 * (i + 1));
            AutoCleanupSettings autocleanupsettings = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(AutoCleanupSettings.a(a));
            String s = autocleanupsettings.getString(0x7f0a016d, aobj);
            AutoCleanupSettings.b(a).setText(s);
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
        AutoCleanupSettings autocleanupsettings = a;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(AutoCleanupSettings.a(a));
        String s = autocleanupsettings.getString(0x7f0a016d, aobj);
        AutoCleanupSettings.b(a).setText(s);
    }
}
