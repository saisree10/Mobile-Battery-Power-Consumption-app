// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.MediaPlayer;

final class baf
    implements Runnable
{

    final Context a;
    final int b;
    final float c;

    baf(Context context, int i, float f)
    {
        a = context;
        b = i;
        c = f;
        super();
    }

    public void run()
    {
        if (asx.a(a).b())
        {
            azt.d("RingtonePlayer", "Ignore sound playing when calling");
            return;
        }
        bae;
        JVM INSTR monitorenter ;
        if (bae.a() != null)
        {
            bae.a().stop();
            bae.a().release();
            bae.a(null);
        }
        if (bae.a() == null)
        {
            bae.a(new MediaPlayer());
        }
        AssetFileDescriptor assetfiledescriptor = a.getResources().openRawResourceFd(b);
        if (assetfiledescriptor != null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        bae;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        bae;
        JVM INSTR monitorexit ;
        throw exception;
        bae.a().setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
        assetfiledescriptor.close();
        bae.a().setAudioStreamType(4);
        bae.a().setVolume(c, c);
        bae.a().prepare();
        bae.a().setLooping(false);
        bae.a().start();
_L1:
        bae;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        azt.d("RingtonePlayer", (new StringBuilder()).append("Can not play media, uri: ").append(b).toString());
        exception1.printStackTrace();
          goto _L1
    }
}
