// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import java.util.ArrayList;

public class ado
    implements android.view.View.OnClickListener
{

    final int a;
    final BatteryThemeActivity b;

    public ado(BatteryThemeActivity batterythemeactivity, int i)
    {
        b = batterythemeactivity;
        a = i;
        super();
    }

    public void onClick(View view)
    {
        BatteryThemeActivity.a(b).b(a);
        for (int i = 0; i < BatteryThemeActivity.b(b).size(); i++)
        {
            if (((Integer)BatteryThemeActivity.b(b).get(i)).equals(Integer.valueOf(a)))
            {
                BatteryThemeActivity.b(b).remove(i);
            }
        }

        BatteryThemeActivity.a(b).a(BatteryThemeActivity.b(b));
        BatteryThemeActivity.a(b, true);
    }
}
