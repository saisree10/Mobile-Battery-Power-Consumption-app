// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.usage.HwPowerUsageDetails;

public class ayr
    implements android.view.View.OnClickListener
{

    final HwPowerUsageDetails a;

    public ayr(HwPowerUsageDetails hwpowerusagedetails)
    {
        a = hwpowerusagedetails;
        super();
    }

    public void onClick(View view)
    {
        String s = (String)view.getTag();
        azt.a("HwPowerUsageDetails", (new StringBuilder()).append("check details for ").append(s).toString());
        if (s != null)
        {
            android.content.Intent intent = azf.a(s);
            a.startActivity(intent);
        }
    }
}
