// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.dianxinos.acomponent.ui.DownLoadDialogActivity;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Future;

public class hf
{

    private hh a;
    private FileOutputStream b;
    private NotificationManager c;
    private Future d;
    private Context e;
    private int f;
    private int g;
    private int h;
    private int i;
    private hg j;

    public hf(Context context, String s, String s1, String s2, String s3, int k)
    {
        f = 1;
        g = hi.b();
        h = 0;
        i = 2;
        e = context;
        a = new hh(s3, s1, s2);
        c = (NotificationManager)context.getSystemService("notification");
        f = k;
        hh hh1 = a;
        Context context1 = e;
        String s4 = a.e();
        boolean flag;
        if (f == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hh1.a(hi.a(context1, s, s4, flag));
    }

    private void i()
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        b.close();
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    private boolean j()
    {
        return f == 0;
    }

    public int a()
    {
        return h;
    }

    public void a(int k)
    {
        f = k;
    }

    protected void a(long l, long l1)
    {
        in.b("DownLoadController", (new StringBuilder()).append("onDownLoadStart file name ").append(a.f()).append(" bytesSoFar ").append(l).append(" total Bytes ").append(l1).toString());
        Context context = e;
        Context context1 = e;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context1.getString(0x7f0a003e);
        Context context2 = e;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        String s1 = context2.getString(0x7f0a003e);
        Context context3 = e;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        a(context, s, s1, context3.getString(0x7f0a003e), false, -1);
    }

    public void a(Context context, String s, String s1, String s2, boolean flag, int k)
    {
        if (j())
        {
            return;
        }
        String s3;
        Intent intent;
        if (flag)
        {
            s3 = "com.dianxinos.dxap.INSTALL";
        } else
        {
            s3 = "com.dianxinos.dxap.STOP_DOWNLOAD";
        }
        intent = new Intent(s3);
        if (flag)
        {
            if (1 == k || 3 == k || 4 == k)
            {
                c.cancel(g);
                return;
            }
            if (2 == k)
            {
                intent.setAction("com.dianxinos.dxap.RETRY");
            }
        }
        intent.setClass(e, com/dianxinos/acomponent/ui/DownLoadDialogActivity);
        intent.addFlags(0x10000000);
        intent.setData(Uri.parse(a.e()));
        intent.putExtra("extra_local_path", a.f());
        intent.putExtra("extra_pkg_name", a.a());
        intent.putExtra("extra_version_code", a.b());
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x8000000);
        long l = System.currentTimeMillis();
        int i1;
        Notification notification;
        if (flag)
        {
            i1 = 0x1080082;
        } else
        {
            i1 = 0x1080081;
        }
        notification = new Notification(i1, s, l);
        if (flag)
        {
            notification.flags = 0x10 | notification.flags;
            in.b("DownLoadController", (new StringBuilder()).append("updating notification, done: ").append(flag).append(" result ").append(k).toString());
        }
        notification.setLatestEventInfo(context, s1, s2, pendingintent);
        c.notify(g, notification);
    }

    public void a(hg hg1)
    {
        j = hg1;
    }

    public void a(Future future)
    {
        d = future;
        h = 1;
    }

    public int b()
    {
        return i;
    }

    protected void b(int k)
    {
        in.b("DownLoadController", (new StringBuilder()).append("onDownLoadCompleted file name ").append(a.f()).append("  resultStatus ").append(k).toString());
        Context context = e;
        Context context1 = e;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context1.getString(0x7f0a003f);
        Context context2 = e;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        String s1 = context2.getString(0x7f0a003f);
        Context context3 = e;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        a(context, s, s1, context3.getString(0x7f0a003f), true, k);
        i = k;
        h = 2;
        i();
        String s2 = hi.a(a.a(), a.b());
        j.a(s2, k);
    }

    protected void b(long l, long l1)
    {
        in.b("DownLoadController", (new StringBuilder()).append("onUpdateProgress file name ").append(a.f()).append(" bytesSoFar ").append(l).append(" total Bytes ").append(l1).toString());
        Context context = e;
        Context context1 = e;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = context1.getString(0x7f0a003d);
        String s1 = a.f();
        Context context2 = e;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        Object aobj[] = new Object[1];
        aobj[0] = (new StringBuilder()).append(l).append("/").append(l1).toString();
        a(context, s, s1, context2.getString(0x7f0a0040, aobj), false, -1);
    }

    public FileOutputStream c()
    {
        return b;
    }

    public void d()
    {
        try
        {
            b = new FileOutputStream(a.f(), true);
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
        }
    }

    public hh e()
    {
        return a;
    }

    public int f()
    {
        return f;
    }

    public void g()
    {
        d.cancel(true);
    }

    public void h()
    {
        i();
        c.cancel(g);
        in.b("DownLoadController", " destroy download controller cancel notification");
    }
}
