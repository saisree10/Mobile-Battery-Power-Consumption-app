// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.menu.MoreSettingsActivity;

public class aly extends BroadcastReceiver
{

    final MoreSettingsActivity a;

    public aly(MoreSettingsActivity moresettingsactivity)
    {
        a = moresettingsactivity;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        a.finish();
    }
}
