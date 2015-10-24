// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.common.ui.fragment.TitleIndicator;
import com.dianxinos.powermanager.SaverActivity;

public class aby extends BroadcastReceiver
{

    final SaverActivity a;

    private aby(SaverActivity saveractivity)
    {
        a = saveractivity;
        super();
    }

    public aby(SaverActivity saveractivity, abx abx)
    {
        this(saveractivity);
    }

    public void onReceive(Context context, Intent intent)
    {
        if (SaverActivity.v.equals(intent.getAction()) && SaverActivity.a(a) != null)
        {
            SaverActivity.b(a).setCurrentTab(1);
        }
    }
}
