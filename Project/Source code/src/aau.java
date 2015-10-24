// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.PersonalCenterActivity;

public class aau extends Handler
{

    final PersonalCenterActivity a;

    public aau(PersonalCenterActivity personalcenteractivity)
    {
        a = personalcenteractivity;
        super();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 250: 
            PersonalCenterActivity.a(a);
            break;
        }
    }
}
