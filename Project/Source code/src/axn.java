// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import java.util.Map;

public class axn
    implements iv, jv
{

    private static axl e;
    private static Dialog f;
    private static volatile boolean g = false;
    private static volatile boolean h = false;
    private static Handler i = null;
    private axs a;
    private ka b;
    private Activity c;
    private Dialog d;

    private axn(Activity activity)
    {
        a = new axs(this, null);
        c = activity;
        if (b == null)
        {
            b = ka.a(c.getApplicationContext());
        }
        if (e == null)
        {
            e = new axl(c.getApplicationContext());
        }
    }

    public static String a(Map map)
    {
        String s;
        try
        {
            int i1 = Integer.parseInt((String)map.get("update-file-size"));
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf((float)i1 / 1048576F);
            s = String.format("%1.2fM", aobj);
        }
        catch (Exception exception)
        {
            azt.d("UpdateHelper", (new StringBuilder()).append("exception: ").append(exception.toString()).toString());
            return "2.00M";
        }
        return s;
    }

    static ka a(axn axn1)
    {
        return axn1.b;
    }

    public static void a(Activity activity)
    {
        (new axn(activity)).o();
    }

    public static void a(Context context)
    {
        ka ka1;
        ka1 = ka.a(context);
        if (e == null)
        {
            e = new axl(context);
        }
        PackageInfo packageinfo;
        jz jz1;
        context.getPackageManager();
        packageinfo = acq.e("com.dianxinos.dxbs").c();
        jz1 = ka1.m();
        if (jz1 == null)
        {
            try
            {
                e.a(axm.a);
                return;
            }
            catch (Exception exception)
            {
                azt.d("UpdateHelper", (new StringBuilder()).append("Exception: ").append(exception.toString()).toString());
            }
            break MISSING_BLOCK_LABEL_109;
        }
        if (jz1.a <= packageinfo.versionCode)
        {
            e.a(axm.b);
            return;
        }
        break MISSING_BLOCK_LABEL_110;
        return;
        e.a(axm.c);
        return;
    }

    static void a(axn axn1, String s, String s1, int i1, String s2)
    {
        axn1.a(s, s1, i1, s2);
    }

    private void a(String s, String s1, int i1, String s2)
    {
        if (c.isFinishing())
        {
            g = false;
            return;
        }
        Activity activity = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        Object aobj[] = new Object[1];
        Activity activity1 = c;
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        aobj[0] = activity1.getString(0x7f0a004a);
        String s3 = activity.getString(0x7f0a0127, aobj);
        Activity activity2 = c;
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        String s4 = activity2.getString(0x7f0a0129, new Object[] {
            s, s2
        });
        auu auu1 = new auu(c);
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.setTitle(0x7f0a0119);
        auu1.c((new StringBuilder()).append(s3).append("\n").append(s4).append("\n\n").append(s1).toString());
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        auu1.a(0x7f0a0116, new axt(c, i1));
        auu1.d();
        if (i1 == 0)
        {
            com.dianxinos.dxbs.R.string _tmp5 = ly.i;
            auu1.b(0x7f0a0117, new axt(c, i1));
        }
        if (i1 == 2)
        {
            auu1.c();
            auu1.a(false);
        } else
        {
            auu1.a(true);
        }
        auu1.setOnDismissListener(new axq(this, i1, auu1));
        auu1.a(new axr(this, i1, auu1));
        if (i1 == 0)
        {
            auu1.f();
            com.dianxinos.dxbs.R.string _tmp6 = ly.i;
            auu1.d(0x7f0a020a);
        }
        auu1.show();
        e.a(System.currentTimeMillis());
        ((NotificationManager)c.getSystemService("notification")).cancel(9);
        f = auu1;
    }

    static boolean a(boolean flag)
    {
        g = flag;
        return flag;
    }

    public static void b(Activity activity)
    {
        axn axn1 = new axn(activity);
        jz jz1 = ka.a(activity.getApplicationContext()).m();
        if (jz1 != null)
        {
            axn1.a(jz1.b, jz1.d, jz1.c, a(jz1.e));
            ((NotificationManager)activity.getSystemService("notification")).cancel(9);
        }
    }

    static void b(axn axn1)
    {
        axn1.p();
    }

    public static void c(Activity activity)
    {
        (new axn(activity)).i();
    }

    static void c(axn axn1)
    {
        axn1.q();
    }

    static Activity d(axn axn1)
    {
        return axn1.c;
    }

    public static void e()
    {
        h = false;
    }

    public static boolean f()
    {
        return h;
    }

    public static void g()
    {
        if (f != null)
        {
            if (f.isShowing())
            {
                f.hide();
                f.show();
            }
            f = null;
        }
    }

    public static void h()
    {
        g = false;
    }

    static Handler j()
    {
        return i;
    }

    static axl k()
    {
        return e;
    }

    private void l()
    {
        ProgressDialog progressdialog = new ProgressDialog(c);
        progressdialog.setOnCancelListener(new axo(this));
        Activity activity = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        progressdialog.setMessage(activity.getString(0x7f0a0118));
        progressdialog.setOnKeyListener(new axp(this));
        progressdialog.show();
        d = progressdialog;
    }

    private void m()
    {
        if (d != null)
        {
            d.dismiss();
        }
    }

    private void n()
    {
        if (g)
        {
            return;
        } else
        {
            g = true;
            l();
            b.a(this);
            return;
        }
    }

    private void o()
    {
        if (!b.l())
        {
            b.a(null);
            return;
        } else
        {
            b.a(this);
            return;
        }
    }

    private void p()
    {
        if (c.isFinishing())
        {
            return;
        } else
        {
            m();
            Activity activity = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(activity, 0x7f0a0206, 0).show();
            return;
        }
    }

    private void q()
    {
        if (c.isFinishing())
        {
            return;
        } else
        {
            m();
            auu auu1 = new auu(c);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            auu1.setTitle(0x7f0a0119);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            auu1.c(0x7f0a011a);
            auu1.a(0, null);
            auu1.show();
            f = auu1;
            return;
        }
    }

    public void a()
    {
        g = false;
        azt.b("UpdateHelper", "Failed to check updates because of network error");
        a.sendEmptyMessage(1);
    }

    public void a(int i1, String s, String s1, int j1, Map map)
    {
        m();
        azt.b("UpdateHelper", (new StringBuilder()).append("update available, version code:").append(i1).append(", version name:").append(s).append(", priority:").append(j1).toString());
        e.c();
        e.a(axm.c);
        if (i1 > e.g())
        {
            e.a(i1);
            e.c(false);
            e.a(-1L);
        }
        axu axu1 = new axu(null);
        axu1.a = s;
        axu1.b = s1;
        axu1.d = j1;
        axu1.c = a(map);
        e.a(s);
        Message message = new Message();
        message.obj = axu1;
        if (j1 == 2 || e.a())
        {
            message.what = 4;
            a.sendMessage(message);
            e.a(true);
            return;
        }
        if (j1 == 1 || e.b())
        {
            message.what = 5;
            a.sendMessage(message);
            e.b(true);
            return;
        } else
        {
            message.what = 3;
            a.sendMessage(message);
            e.a(false);
            e.b(false);
            return;
        }
    }

    public void b()
    {
        g = false;
        e.c();
        a.sendEmptyMessage(2);
        e.a(false);
        e.b(false);
        e.a(axm.b);
    }

    public void c()
    {
        azt.b("UpdateHelper", "start downloading...");
        h = true;
        a.sendEmptyMessage(6);
    }

    public void d()
    {
        azt.b("UpdateHelper", "No updates for download");
        h = false;
        a.sendEmptyMessage(7);
    }

    public void i()
    {
        if (!azx.b(c))
        {
            azt.b("UpdateHelper", "no network available");
            Activity activity1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            Toast.makeText(activity1, 0x7f0a0206, 0).show();
            return;
        }
        if (h)
        {
            azt.c("UpdateHelper", "upgrade is in progress");
            Activity activity = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            Toast.makeText(activity, 0x7f0a0208, 0).show();
            return;
        } else
        {
            n();
            return;
        }
    }

}
