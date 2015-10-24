// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.skinshop.MySkinActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apw
    implements android.view.View.OnClickListener
{

    final OperationConfigActivity a;

    public apw(OperationConfigActivity operationconfigactivity)
    {
        a = operationconfigactivity;
        super();
    }

    public void onClick(View view)
    {
        bal.a(a, "stmc", "stm", Integer.valueOf(1));
        if (OperationConfigActivity.d(a))
        {
            a.finish();
            return;
        } else
        {
            Intent intent = new Intent(a, com/dianxinos/powermanager/skinshop/MySkinActivity);
            a.startActivityForResult(intent, 260);
            OperationConfigActivity operationconfigactivity = a;
            com.dianxinos.dxbs.R.anim _tmp = ly.a;
            com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
            operationconfigactivity.overridePendingTransition(0x7f040006, 0x7f040007);
            return;
        }
    }
}
