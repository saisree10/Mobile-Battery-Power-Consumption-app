// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.usage.AppPowerUsageDetails;

public class axw
    implements android.view.View.OnClickListener
{

    final AppPowerUsageDetails a;

    public axw(AppPowerUsageDetails apppowerusagedetails)
    {
        a = apppowerusagedetails;
        super();
    }

    public void onClick(View view)
    {
        android.content.Intent intent = azf.a(AppPowerUsageDetails.a(a));
        a.startActivity(intent);
    }
}
