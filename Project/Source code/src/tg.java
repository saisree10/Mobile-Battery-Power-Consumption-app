// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.security.Key;
import javax.crypto.KeyGenerator;

public final class tg
{

    private static long a = 0xa00000L;
    private static Double b = null;
    private static String c;
    private static byte d[];
    private static final String e = null;

    public static String a()
    {
        return c;
    }

    public static String a(Context context)
    {
        return "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiiByw0W40uhK+khvIEneisE1pPtvId6ewOeFm4ohO0UVmcnB6RCJz7/J+xk4jlEfqJyfXm5BcRyxdERcbK4uzmDOwSgd4XaV2X+A4iN2EgJ5PdY6kZuWzJ0L2/gyFgbIs+0FWUOc449VoLojPcH/CNmwZultVSU2oBx0+GS7e8QIDAQAB";
    }

    public static long b(Context context)
    {
        if (b == null || !b.equals(Double.valueOf(0.10000000000000001D)))
        {
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            long l = statfs.getBlockSize();
            long l1 = statfs.getAvailableBlocks();
            a = Math.min(0xa00000L, (long)(0.10000000000000001D * (double)(l1 * l)));
            a = Math.max(a, 0x100000L);
            a = Math.min(a, (long)(0.5D * (double)(l1 * l)));
        }
        return a;
    }

    public static byte[] b()
    {
        return d;
    }

    static 
    {
        try
        {
            if (d == null)
            {
                KeyGenerator keygenerator = KeyGenerator.getInstance("AES");
                keygenerator.init(128);
                d = keygenerator.generateKey().getEncoded();
                c = new String(bdi.a(d));
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("stat.EventConfig", "Failed to generate the aes key.");
        }
    }
}
