// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;

public class adn
    implements android.view.View.OnClickListener
{

    final BatteryThemeActivity a;

    public adn(BatteryThemeActivity batterythemeactivity)
    {
        a = batterythemeactivity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
