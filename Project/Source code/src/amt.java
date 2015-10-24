// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.powermanager.mode.ModeMgrActivity;
import java.util.ArrayList;

public class amt extends BroadcastReceiver
{

    final ModeMgrActivity a;

    public amt(ModeMgrActivity modemgractivity)
    {
        a = modemgractivity;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        int i = ModeMgrActivity.c(a).b();
        if (i >= ModeMgrActivity.d(a).size())
        {
            return;
        } else
        {
            ((amn)ModeMgrActivity.d(a).get(ModeMgrActivity.e(a))).setSelected(false);
            ((amn)ModeMgrActivity.d(a).get(i)).setSelected(true);
            ModeMgrActivity.b(a, i);
            return;
        }
    }
}
