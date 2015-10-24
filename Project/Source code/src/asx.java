// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

public class asx extends PhoneStateListener
{

    public static String a = "TeleStatusListener";
    private static asx e;
    public int b;
    private Context c;
    private TelephonyManager d;

    public asx(Context context)
    {
        c = context;
        d = (TelephonyManager)c.getSystemService("phone");
    }

    public static asx a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        asx;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new asx(context);
        }
        asx;
        JVM INSTR monitorexit ;
_L2:
        e.a();
        return e;
        Exception exception;
        exception;
        asx;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        d.listen(this, 32);
    }

    public boolean b()
    {
        azt.a(a, (new StringBuilder()).append("mTeleStatus : ").append(b).toString());
        b = d.getCallState();
        return b == 2 || b == 1;
    }

    public void onCallStateChanged(int i, String s)
    {
        super.onCallStateChanged(i, s);
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            azt.a(a, "CALL_STATE_IDLE");
            if (b != 0)
            {
                Intent intent = new Intent();
                intent.setAction("com.dianxinos.dxbs.HANGUPPHONE");
                intent.setPackage(c.getPackageName());
                c.sendBroadcast(intent);
            }
            b = 0;
            return;

        case 2: // '\002'
            azt.a(a, "CALL_STATE_OFFHOOK");
            b = 2;
            return;

        case 1: // '\001'
            b = 1;
            azt.a(a, "CALL_STATE_RINGING");
            return;
        }
    }

}
