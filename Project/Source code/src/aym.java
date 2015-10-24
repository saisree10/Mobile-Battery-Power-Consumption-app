// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.dianxinos.powermanager.smart.CpuSelectDialog;
import com.dianxinos.powermanager.usage.HwPowerUsageDetails;

class aym
    implements android.view.View.OnClickListener
{

    final ayl a;

    aym(ayl ayl1)
    {
        a = ayl1;
        super();
    }

    public void onClick(View view)
    {
        ayn ayn1 = (ayn)view.getTag();
        int i = ayn1.i;
        Intent intent;
        if (i == 2)
        {
            intent = new Intent("android.settings.WIFI_SETTINGS");
        } else
        if (i == 1)
        {
            intent = new Intent("android.settings.DISPLAY_SETTINGS");
        } else
        if (i == 3)
        {
            intent = new Intent("android.settings.BLUETOOTH_SETTINGS");
        } else
        if (i == 7)
        {
            intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        } else
        if (i == 4)
        {
            intent = new Intent("android.settings.AIRPLANE_MODE_SETTINGS");
        } else
        if (i == 9)
        {
            azh azh1 = azh.a(ayl.a(a));
            azh1.e();
            if (azh1.a() == 0)
            {
                Context context1 = ayl.a(a);
                ly.i;
                Toast.makeText(context1, 0x7f0a007a, 0).show();
                intent = null;
            } else
            if (azh1.c() == 0)
            {
                Intent intent2 = new Intent(ayl.a(a), com/dianxinos/powermanager/usage/HwPowerUsageDetails);
                intent2.putExtra("position", ayn1.g);
                intent2.putExtra("bar_percent", ayn1.h);
                intent = intent2;
            } else
            {
                intent = new Intent(ayl.a(a), com/dianxinos/powermanager/smart/CpuSelectDialog);
            }
        } else
        {
            Intent intent1 = new Intent(ayl.a(a), com/dianxinos/powermanager/usage/HwPowerUsageDetails);
            intent1.putExtra("position", ayn1.g);
            intent1.putExtra("bar_percent", ayn1.h);
            intent = intent1;
        }
        if (intent == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        intent.addFlags(0x10000000);
        ayl.a(a).startActivity(intent);
        return;
        Exception exception;
        exception;
        Context context = ayl.a(a);
        ly.i;
        Toast.makeText(context, 0x7f0a01a7, 0).show();
        return;
    }
}
