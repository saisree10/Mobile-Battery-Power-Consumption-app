// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;

public class api
{

    private static api e;
    private int a;
    private AudioManager b;
    private ContentResolver c;
    private Context d;

    private api(Context context)
    {
        d = context.getApplicationContext();
        b = (AudioManager)context.getSystemService("audio");
        c = context.getContentResolver();
    }

    public static api a(Context context)
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        api;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new api(context.getApplicationContext());
        }
        api;
        JVM INSTR monitorexit ;
_L2:
        return e;
        Exception exception;
        exception;
        api;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(boolean flag)
    {
        int i = 1;
        if (azf.m())
        {
            ContentResolver contentresolver = c;
            Intent intent;
            if (!flag)
            {
                i = 0;
            }
            android.provider.Settings.System.putInt(contentresolver, "vibrate_when_ringing", i);
            intent = new Intent("com.dianxinos.dxbs.MODEMODIFIED");
            intent.putExtra("command", 6);
            d.sendBroadcast(intent);
            return;
        }
        AudioManager audiomanager = b;
        if (!flag)
        {
            i = 0;
        }
        audiomanager.setVibrateSetting(0, i);
    }

    private boolean c()
    {
        if (!azf.m()) goto _L2; else goto _L1
_L1:
        int i;
        try
        {
            i = android.provider.Settings.System.getInt(c, "vibrate_when_ringing");
        }
        catch (android.provider.Settings.SettingNotFoundException settingnotfoundexception)
        {
            settingnotfoundexception.printStackTrace();
            return false;
        }
        if (i != 1) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (b.getVibrateSetting(0) != 1)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void a()
    {
        int i;
        boolean flag;
        i = b.getRingerMode();
        flag = c();
        if (i != 2) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        a = 2;
_L6:
        return;
_L4:
        a = 1;
        return;
_L2:
        if (i == 0)
        {
            a = 3;
            return;
        }
        if (i == 1)
        {
            a = 4;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(int i)
    {
        switch (i)
        {
        default:
            return;

        case 1: // '\001'
            b.setRingerMode(2);
            a(false);
            return;

        case 2: // '\002'
            b.setRingerMode(2);
            a(true);
            return;

        case 3: // '\003'
            b.setRingerMode(0);
            a(false);
            return;

        case 4: // '\004'
            b.setRingerMode(1);
            break;
        }
        a(true);
    }

    public int b()
    {
        a();
        return a;
    }
}
