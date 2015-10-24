// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.view.View;
import com.dianxinos.powermanager.batterytheme.BatteryThemeActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

class aqk
    implements android.view.View.OnClickListener
{

    final aqj a;

    aqk(aqj aqj1)
    {
        a = aqj1;
        super();
    }

    public void onClick(View view)
    {
        aqj.a(a).startActivity(new Intent(aqj.a(a), com/dianxinos/powermanager/batterytheme/BatteryThemeActivity));
    }
}
