// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.RemoteException;
import com.dianxinos.common.dxsplash.SplashDownloadFileService;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class my
{

    private static final boolean b;
    private static my c;
    mp a;
    private Context d;
    private SharedPreferences e;
    private AlarmManager f;
    private float g;
    private String h;
    private Object i;
    private ArrayList j;
    private Bitmap k;

    private my(Context context)
    {
        i = new Object();
        j = new ArrayList();
        d = context.getApplicationContext();
        e = context.getSharedPreferences("splash_nettimes", 0);
        f = (AlarmManager)d.getSystemService("alarm");
        h = e.getString("selected_splash_md5", "0");
        g = e.getFloat("selected_splash_stay_time", 1.5F);
    }

    static ArrayList a(my my1)
    {
        return my1.j;
    }

    public static my a(Context context)
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        my;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new my(context);
        }
        my;
        JVM INSTR monitorexit ;
_L2:
        return c;
        Exception exception;
        exception;
        my;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(String s)
    {
        nf.b(s);
    }

    static void a(my my1, nc nc1, long l)
    {
        my1.a(nc1, l);
    }

    private void a(nc nc1, long l)
    {
        android.content.SharedPreferences.Editor editor = e.edit();
        editor.putLong(nc1.d, l);
        editor.commit();
    }

    private void a(nc nc1, boolean flag)
    {
        Intent intent = new Intent();
        long l;
        PendingIntent pendingintent;
        if (flag)
        {
            intent.setAction("com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG");
            l = nc1.b;
            c((new StringBuilder("itme.firsttime:")).append(nc1.b).append(" lasttime:").append(nc1.c).append(" current:").append(System.currentTimeMillis()).toString());
        } else
        {
            intent.setAction("com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG_CANCLE");
            l = nc1.c;
            c((new StringBuilder("itme.firsttime:")).append(nc1.b).append(" lasttime:").append(nc1.c).append(" current:").append(System.currentTimeMillis()).toString());
        }
        intent.putExtra("is_first_timer", flag);
        intent.putExtra("splash_item_name", nc1.a);
        intent.putExtra("splash_item_firsttime", nc1.b);
        intent.putExtra("splash_item_lasttime", nc1.c);
        intent.putExtra("splash_item_md5", nc1.d);
        intent.putExtra("splash_item_url", nc1.e);
        intent.putExtra("splash_item_stay_time", nc1.g);
        intent.putExtra("splash_item_localpath", nc1.f);
        pendingintent = PendingIntent.getBroadcast(d, 0, intent, 0x8000000);
        f.set(1, l, pendingintent);
    }

    static Context b(my my1)
    {
        return my1.d;
    }

    static void b(String s)
    {
        c(s);
    }

    private static void c(String s)
    {
        if (b)
        {
            ms.a("SplashHelper", s);
        }
    }

    private void e(nc nc1)
    {
        Intent intent = new Intent(d, com/dianxinos/common/dxsplash/SplashDownloadFileService);
        d.bindService(intent, new na(this, nc1), 1);
    }

    public int a()
    {
        return (int)(1000F * g);
    }

    public void a(Context context, Intent intent)
    {
        String s;
        NetworkInfo networkinfo;
        if (intent != null)
        {
            if ((s = intent.getAction()) != null && s.equals("android.net.conn.CONNECTIVITY_CHANGE") && ((networkinfo = (NetworkInfo)intent.getParcelableExtra("networkInfo")) != null && networkinfo.getType() == 1))
            {
                if (networkinfo.isConnected())
                {
                    c("wifi connected!");
                    a(context).f();
                    return;
                } else
                {
                    c("wifi disconnected!");
                    a(context).e();
                    return;
                }
            }
        }
    }

    public void a(nc nc1)
    {
        c("selectSplash");
        c((new StringBuilder("itme.firsttime:")).append(nc1.b).append(" lasttime:").append(nc1.c).append(" current:").append(System.currentTimeMillis()).toString());
        synchronized (i)
        {
            if (nc1.a())
            {
                (new File(nc1.f)).renameTo(new File(d.getFilesDir(), "splash.jpg"));
                h = nc1.d;
                g = nc1.g;
                android.content.SharedPreferences.Editor editor = e.edit();
                editor.putString("selected_splash_md5", nc1.d);
                editor.putFloat("selected_splash_stay_time", nc1.g);
                editor.commit();
            }
        }
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            if (b)
            {
                throw new RuntimeException(exception);
            } else
            {
                return;
            }
        }
    }

    public Bitmap b()
    {
label0:
        {
            synchronized (i)
            {
                if ((new File(d.getFilesDir(), "splash.jpg")).exists())
                {
                    break label0;
                }
                c("Splash file not exist!");
            }
            return null;
        }
        if (nd.a(new File(d.getFilesDir(), "splash.jpg")).equals(h))
        {
            break MISSING_BLOCK_LABEL_85;
        }
        c("Md5 not matched!");
        obj;
        JVM INSTR monitorexit ;
        return null;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        k = BitmapFactory.decodeFile((new File(d.getFilesDir(), "splash.jpg")).getAbsolutePath());
        obj;
        JVM INSTR monitorexit ;
        return k;
    }

    public void b(nc nc1)
    {
        c("cancleSplash");
        File file;
label0:
        {
            synchronized (i)
            {
                file = new File(d.getFilesDir(), "splash.jpg");
                if (file.exists())
                {
                    break label0;
                }
            }
            return;
        }
        if (nd.a(file).equals(nc1.d))
        {
            (new File(d.getFilesDir(), "splash.jpg")).delete();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            if (b)
            {
                throw new RuntimeException(exception);
            } else
            {
                return;
            }
        }
    }

    public void c()
    {
        synchronized (i)
        {
            if (k != null)
            {
                k.recycle();
                k = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void c(nc nc1)
    {
        long l = nc1.b;
        long l1 = nc1.c;
        if (System.currentTimeMillis() < l)
        {
            a(nc1, true);
            a(nc1, false);
        } else
        if (System.currentTimeMillis() < l1)
        {
            a(nc1);
            a(nc1, false);
            return;
        }
    }

    long d(nc nc1)
    {
        return e.getLong(nc1.d, 0L);
    }

    void d()
    {
        if (nd.b(d) == 1) goto _L2; else goto _L1
_L1:
        c("downloadConfigSplash: not wifi");
_L5:
        return;
_L2:
        ArrayList arraylist = mu.b(d);
        if (arraylist == null)
        {
            try
            {
                c("downloadConfigSplash: items is null");
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return;
        }
        Iterator iterator;
        c((new StringBuilder("Item number is: ")).append(arraylist.size()).toString());
        iterator = arraylist.iterator();
_L3:
        nc nc1;
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        nc1 = (nc)iterator.next();
        if (b)
        {
            c((new StringBuilder("SplashItem:")).append(nc1.toString()).toString());
        }
        if (nc1 == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        if (nc1.d != null && !nc1.equals(""))
        {
            break MISSING_BLOCK_LABEL_152;
        }
        c("downloadConfigSplash: not match md5");
        return;
label0:
        {
            if (!nc1.a(d) || h.equals(nc1.d))
            {
                break label0;
            }
            e(nc1);
        }
          goto _L3
        c((new StringBuilder("Need not download or md5 not matched. SelectedMd5: ")).append(h).append(" itemMd5:").append(nc1.d).toString());
          goto _L3
        if (true) goto _L5; else goto _L4
_L4:
    }

    void e()
    {
        ArrayList arraylist = j;
        arraylist;
        JVM INSTR monitorenter ;
        Iterator iterator = j.iterator();
_L3:
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        arraylist;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s = (String)iterator.next();
        a.a(s);
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
          goto _L1
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
          goto _L3
    }

    public void f()
    {
        (new Thread(new mz(this))).start();
    }

    static 
    {
        b = mi.a;
    }
}
