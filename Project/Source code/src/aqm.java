// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;

class aqm
    implements android.view.View.OnClickListener
{

    final aql a;

    aqm(aql aql1)
    {
        a = aql1;
        super();
    }

    public void onClick(View view)
    {
        if (BatteryThemeActivity.d(aql.a(a)))
        {
            com.dianxinos.powermanager.skinshop.OperationConfigActivity operationconfigactivity = aqj.a(a.a);
            android.graphics.Bitmap bitmap = BatteryThemeActivity.b(aql.a(a));
            boolean flag;
            if (!aqj.b(a.a).k())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            (new adi(operationconfigactivity, bitmap, flag)).show();
            return;
        } else
        {
            BatteryThemeActivity.a(aql.a(a));
            return;
        }
    }
}
