// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import java.util.ArrayList;

public class adm extends Handler
{

    final BatteryThemeActivity a;

    public adm(BatteryThemeActivity batterythemeactivity)
    {
        a = batterythemeactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        if (message.what != 0) goto _L2; else goto _L1
_L1:
        BatteryThemeActivity batterythemeactivity1 = a;
        ly.i;
        Toast.makeText(batterythemeactivity1, 0x7f0a02bd, 0).show();
        BatteryThemeActivity.b(a).add(Integer.valueOf(BatteryThemeActivity.a(a).g()));
        BatteryThemeActivity.a(a).a(BatteryThemeActivity.b(a));
        BatteryThemeActivity.c(a);
        BatteryThemeActivity.a(a, true);
        BatteryThemeActivity.d(a);
_L4:
        if (BatteryThemeActivity.e(a) != null)
        {
            BatteryThemeActivity.e(a).dismiss();
        }
        return;
_L2:
        if (message.what == 1)
        {
            BatteryThemeActivity batterythemeactivity = a;
            ly.i;
            Toast.makeText(batterythemeactivity, 0x7f0a028c, 0).show();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
