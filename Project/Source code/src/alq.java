// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.menu.ChargingReminderActivity;

public class alq
    implements android.view.View.OnClickListener
{

    final ChargingReminderActivity a;

    public alq(ChargingReminderActivity chargingreminderactivity)
    {
        a = chargingreminderactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
