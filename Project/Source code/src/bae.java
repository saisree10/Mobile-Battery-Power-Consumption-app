// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;

public class bae
{

    private static MediaPlayer a;
    private static Handler b;

    public bae()
    {
    }

    static MediaPlayer a()
    {
        return a;
    }

    static MediaPlayer a(MediaPlayer mediaplayer)
    {
        a = mediaplayer;
        return mediaplayer;
    }

    public static void a(Context context)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("android.resource://com.dianxinos.dxbs/");
        com.dianxinos.dxbs.R.raw _tmp = ly.h;
        Uri.parse(stringbuilder.append(0x7f060002).toString());
        com.dianxinos.dxbs.R.raw _tmp1 = ly.h;
        a(context, 0x7f060002);
    }

    public static void a(Context context, int i)
    {
        a(context, i, 1.0F);
    }

    public static void a(Context context, int i, float f)
    {
        if (i == 0 || c(context))
        {
            return;
        }
        if (b == null)
        {
            HandlerThread handlerthread = new HandlerThread("RingtonePlayer");
            handlerthread.start();
            b = new Handler(handlerthread.getLooper());
        }
        b.post(new baf(context, i, f));
    }

    public static void b(Context context)
    {
        bae;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = (new StringBuilder()).append("android.resource://com.dianxinos.dxbs/");
        ly.h;
        Uri.parse(stringbuilder.append(0x7f060000).toString());
        ly.h;
        a(context, 0x7f060000);
        bae;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean c(Context context)
    {
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        return audiomanager.getStreamVolume(2) == 0 || audiomanager.getRingerMode() == 0 || audiomanager.isMusicActive();
    }
}
