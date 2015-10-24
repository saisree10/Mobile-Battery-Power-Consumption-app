// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.mode.ModeMgrActivity;

public class amv extends Handler
{

    final ModeMgrActivity a;

    private amv(ModeMgrActivity modemgractivity)
    {
        a = modemgractivity;
        super();
    }

    public amv(ModeMgrActivity modemgractivity, amr amr)
    {
        this(modemgractivity);
    }

    public void handleMessage(Message message)
    {
        boolean flag = true;
        if (message.what != flag) goto _L2; else goto _L1
_L1:
        if (ModeMgrActivity.f(a) != null) goto _L4; else goto _L3
_L3:
        flag = ModeMgrActivity.g(a);
_L6:
        ModeMgrActivity.a(a, ModeMgrActivity.h(a).j, flag);
        ModeMgrActivity.h(a).i = false;
        ModeMgrActivity.b(a, ModeMgrActivity.h(a).i);
_L2:
        return;
_L4:
        if (!ModeMgrActivity.g(a) || ModeMgrActivity.f(a).e() == 100 || ModeMgrActivity.f(a).e() == 103)
        {
            flag = false;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
