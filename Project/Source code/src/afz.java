// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.chargingrecord.ChargerRecordActivity;

public class afz extends Handler
{

    final ChargerRecordActivity a;

    public afz(ChargerRecordActivity chargerrecordactivity)
    {
        a = chargerrecordactivity;
        super();
    }

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 0: // '\0'
        default:
            return;
        }
    }
}
