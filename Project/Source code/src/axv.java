// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.usage.AppPowerUsageDetails;

public class axv
    implements android.view.View.OnClickListener
{

    final AppPowerUsageDetails a;

    public axv(AppPowerUsageDetails apppowerusagedetails)
    {
        a = apppowerusagedetails;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
