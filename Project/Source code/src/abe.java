// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMgrReceiver;

public class abe
    implements bai
{

    final PowerMgrReceiver a;

    public abe(PowerMgrReceiver powermgrreceiver)
    {
        a = powermgrreceiver;
        super();
    }

    public void a(int i)
    {
        switch (i)
        {
        default:
            return;

        case 2: // '\002'
            PowerMgrReceiver.a(a).sendEmptyMessage(PowerMgrReceiver.a());
            return;

        case 1: // '\001'
            PowerMgrReceiver.a(a).sendEmptyMessage(PowerMgrReceiver.b());
            return;

        case 0: // '\0'
            PowerMgrReceiver.a(a).sendEmptyMessage(PowerMgrReceiver.c());
            return;
        }
    }
}
