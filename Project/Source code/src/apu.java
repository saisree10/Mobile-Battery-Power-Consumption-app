// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apu extends Handler
{

    final OperationConfigActivity a;

    public apu(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 258: 
        default:
            return;

        case 256: 
            if (BatteryThemeActivity.d(a))
            {
                OperationConfigActivity operationconfigactivity2 = a;
                android.graphics.Bitmap bitmap = BatteryThemeActivity.b(a);
                boolean flag;
                if (!OperationConfigActivity.a(a).k())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                (new adi(operationconfigactivity2, bitmap, flag)).show();
                return;
            } else
            {
                BatteryThemeActivity.a(a);
                return;
            }

        case 259: 
            OperationConfigActivity operationconfigactivity1 = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            operationconfigactivity1.a(0x7f0a02bd);
            return;

        case 257: 
            OperationConfigActivity operationconfigactivity = a;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            operationconfigactivity.a(0x7f0a028c);
            return;
        }
    }
}
