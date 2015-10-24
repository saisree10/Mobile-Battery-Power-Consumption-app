// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.powermanager.PersonalCenterActivity;
import com.dianxinos.powermanager.PowerMangerApplication;
import com.dianxinos.powermanager.PowerMgrTabActivity;

public class agw extends mc
{

    public agw()
    {
    }

    static void a(String s)
    {
    }

    private void c(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        switch (requestresult.c)
        {
        default:
            me.h(context);
            CoinManager.a(context).a(50);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            PowerMangerApplication.a(0x7f0a02d3, 0);
            return;

        case 200: 
            me.g(context);
            break;
        }
    }

    private void d(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        switch (requestresult.c)
        {
        default:
            me.b(context);
            return;

        case -1: 
            me.b(context);
            return;

        case 200: 
            me.a(context);
            Intent intent2 = new Intent(context, com/dianxinos/powermanager/PowerMgrTabActivity);
            intent2.putExtra("From", 11);
            PendingIntent pendingintent2 = PendingIntent.getActivity(context, 0, intent2, 0x10000000);
            ao ao9 = new ao(context);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(requestresult.b);
            ao ao10 = ao9.c(context.getString(0x7f0a02c9, aobj));
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(requestresult.b);
            ao ao11 = ao10.a(context.getString(0x7f0a02c9, aobj1));
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            ao ao12 = ao11.b(context.getText(0x7f0a004a)).a(pendingintent2);
            com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
            android.app.Notification notification2 = ao12.a(0x7f02000e).a(true).a();
            ((NotificationManager)context.getSystemService("notification")).notify(11, notification2);
            return;

        case -3: 
        case 410: 
        case 412: 
            me.b(context);
            Intent intent1 = new Intent(context, com/dianxinos/powermanager/PersonalCenterActivity);
            intent1.putExtra("From", 11);
            PendingIntent pendingintent1 = PendingIntent.getActivity(context, 0, intent1, 0x10000000);
            ao ao5 = new ao(context);
            com.dianxinos.dxbs.R.string _tmp4 = ly.i;
            ao ao6 = ao5.a(context.getString(0x7f0a02e7));
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            ao ao7 = ao6.c(context.getText(0x7f0a02e7));
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            ao ao8 = ao7.b(context.getText(0x7f0a02e8)).a(pendingintent1).a(true);
            com.dianxinos.dxbs.R.drawable _tmp7 = ly.e;
            android.app.Notification notification1 = ao8.a(0x7f02000e).a();
            ((NotificationManager)context.getSystemService("notification")).notify(11, notification1);
            return;

        case 411: 
            me.b(context);
            break;
        }
        Intent intent = new Intent(context, com/dianxinos/powermanager/PersonalCenterActivity);
        intent.putExtra("From", 11);
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x10000000);
        ao ao1 = new ao(context);
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        ao ao2 = ao1.a(context.getString(0x7f0a02e7));
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        ao ao3 = ao2.c(context.getText(0x7f0a02e7));
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        ao ao4 = ao3.b(context.getText(0x7f0a003b)).a(pendingintent).a(true);
        com.dianxinos.dxbs.R.drawable _tmp11 = ly.e;
        android.app.Notification notification = ao4.a(0x7f02000e).a();
        ((NotificationManager)context.getSystemService("notification")).notify(11, notification);
    }

    public void b(Context context, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        a((new StringBuilder()).append("Action event:").append(requestresult.c).toString());
        if ("22".equals(requestresult.f))
        {
            d(context, requestresult);
        } else
        if ("11".equals(requestresult.f))
        {
            c(context, requestresult);
            return;
        }
    }
}
