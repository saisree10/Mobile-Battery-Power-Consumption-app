// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.PowerMgrInfoAcitvity;

public class abd
    implements android.view.View.OnClickListener
{

    final PowerMgrInfoAcitvity a;

    public abd(PowerMgrInfoAcitvity powermgrinfoacitvity)
    {
        a = powermgrinfoacitvity;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
