// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.os.RemoteException;
import com.dianxinos.powermanager.PowerMangerApplication;
import com.dianxinos.powermanager.download.DownloadFileService;
import java.io.File;

public class adz
{

    public akb a;
    private PowerMangerApplication b;
    private final aeb c = new aeb(this, null);
    private final ajy d;

    public adz(ajy ajy1)
    {
        b = PowerMangerApplication.a();
        d = ajy1;
    }

    public static String a(Context context, String s)
    {
        if (s == null)
        {
            return null;
        }
        if (azf.h())
        {
            File file = new File(Environment.getExternalStorageDirectory(), "Android/data/com.dianxinos.dxbs/files");
            try
            {
                file.mkdirs();
            }
            catch (Exception exception)
            {
                zs.d("SkinDownloader", exception.getMessage());
                return null;
            }
            return (new File(file, aze.a(s))).getAbsolutePath();
        } else
        {
            return c(context, aze.a(s));
        }
    }

    public static boolean b(Context context, String s)
    {
        String s1 = a(context, s);
        if (s1 == null)
        {
            return false;
        } else
        {
            return (new File(s1)).exists();
        }
    }

    private static String c(Context context, String s)
    {
        return (new File(context.getExternalFilesDir(null), s)).getAbsolutePath();
    }

    public void a()
    {
        b.bindService(new Intent(b, com/dianxinos/powermanager/download/DownloadFileService), c, 1);
    }

    public void a(String s)
    {
        if (s != null)
        {
label0:
            {
                if (!azx.b(b))
                {
                    try
                    {
                        d.a(s, 0x30d4a, 0L);
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        zs.d("SkinDownloader", remoteexception1.getMessage());
                    }
                    return;
                }
                if (a != null)
                {
                    try
                    {
                        if (a(((Context) (b)), s) != null)
                        {
                            break label0;
                        }
                        if (d != null)
                        {
                            d.a(s, 0x30d41, 0L);
                            return;
                        }
                    }
                    catch (RemoteException remoteexception)
                    {
                        zs.d("SkinDownloader", remoteexception.getMessage());
                        return;
                    }
                }
            }
        }
        return;
        a.a(s, a(((Context) (b)), s), 0L, 0L, d);
        return;
    }

    public void b()
    {
        b.unbindService(c);
    }

    public boolean b(String s)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        boolean flag = a.b(s);
        return flag;
        RemoteException remoteexception;
        remoteexception;
        zs.d("SkinDownloader", remoteexception.getMessage());
        return false;
    }
}
