// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class wd extends vw
{

    static HashSet b = new HashSet();
    protected HashMap a;
    boolean c;
    private LinkedList d;
    private Handler e;
    private ServiceConnection f;

    public wd()
    {
        super("WidgetClientService");
        a = new HashMap();
        d = new LinkedList();
        c = false;
        e = new we(this);
        f = new wf(this);
        if (vy.a)
        {
            Log.i("WidgetClientService", "WidgetClientService()");
        }
    }

    private void a()
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("handlerTaskQuque,mTaskQueue.isEmpty()=")).append(d.isEmpty()).append(",mTaskQueue.size()=").append(d.size()).toString());
        }
        if (d.isEmpty())
        {
            break MISSING_BLOCK_LABEL_210;
        }
        Intent intent = (Intent)d.removeFirst();
        int i = intent.getIntExtra("action_type", 0);
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("handlerTaskQuque,actionType=")).append(i).append("    action = ").append(intent.getAction()).toString());
        }
        String s = intent.getStringExtra("host_home_pkg");
        Exception exception;
        android.os.Message message;
        if (s != null)
        {
            wa wa2 = (wa)a.get(s);
            if (vy.a)
            {
                Log.i("WidgetClientService", (new StringBuilder("handlerTaskQuque,1111 service=")).append(wa2).toString());
            }
            if (wa2 != null)
            {
                a(intent, i, wa2);
            }
        } else
        {
            if (vy.a)
            {
                Log.i("WidgetClientService", (new StringBuilder("handlerTaskQuque,2222 sHostHomes=")).append(b.size()).toString());
            }
            Iterator iterator = b.iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                wa wa1 = (wa)a.get(s1);
                if (vy.a)
                {
                    Log.i("WidgetClientService", (new StringBuilder("handlerTaskQuque,2222 service=")).append(wa1).toString());
                }
                if (wa1 != null)
                {
                    a(intent, i, wa1);
                }
            }
        }
        message = e.obtainMessage(2);
        e.sendMessage(message);
        return;
        exception;
        if (vy.a)
        {
            Log.e("WidgetClientService", (new StringBuilder("pick task intent failed! \n")).append(exception).toString());
            return;
        }
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_210;
_L1:
    }

    private void a(Intent intent, int i, wa wa1)
    {
        switch (i)
        {
        default:
            e(intent, wa1);
            return;

        case 1: // '\001'
            c(intent);
            d(intent, wa1);
            return;

        case 2: // '\002'
            b(intent);
            c(intent, wa1);
            return;

        case 3: // '\003'
            c(intent);
            b(intent, wa1);
            return;

        case 4: // '\004'
            a(intent, wa1);
            break;
        }
    }

    private void a(String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.equals("com.dianxinos.dxlauncher")) goto _L4; else goto _L3
_L3:
        a("com.dianxinos.dxlauncher", "com.dianxinos.dxlauncher.service.DXWidgetServerService");
_L6:
        return;
_L4:
        if (s.equals("com.dianxinos.dxhome"))
        {
            a("com.dianxinos.dxhome", "com.dianxinos.launcher2.dxwidget.WidgetServerService");
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Iterator iterator = b.iterator();
        while (iterator.hasNext()) 
        {
            String s1 = (String)iterator.next();
            if (s1.equals("com.dianxinos.dxlauncher"))
            {
                a("com.dianxinos.dxlauncher", "com.dianxinos.dxlauncher.service.DXWidgetServerService");
            } else
            if (s1.equals("com.dianxinos.dxhome"))
            {
                a("com.dianxinos.dxhome", "com.dianxinos.launcher2.dxwidget.WidgetServerService");
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void a(String s, String s1)
    {
        try
        {
            Bundle bundle = new Bundle();
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(s, s1));
            intent.putExtras(bundle);
            getApplicationContext().bindService(intent, f, 0);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static void a(wd wd1)
    {
        wd1.a();
    }

    public static boolean a(Context context, String s)
    {
        if (s != null && !"".equals(s))
        {
            android.content.pm.ApplicationInfo applicationinfo;
            try
            {
                applicationinfo = context.getPackageManager().getApplicationInfo(s, 0);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return false;
            }
            if (applicationinfo != null)
            {
                return true;
            }
        }
        return false;
    }

    static LinkedList b(wd wd1)
    {
        return wd1.d;
    }

    private void b(Intent intent)
    {
        String s = intent.getStringExtra("host_home_pkg");
        if (s != null && b.contains(s))
        {
            b.remove(s);
        }
    }

    private boolean b()
    {
        Iterator iterator = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_63;
        }
        boolean flag = "com.dianxinos.dxhome".equals(((android.app.ActivityManager.RunningAppProcessInfo)iterator.next()).processName.split(":")[0]);
        if (flag)
        {
            return true;
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        return false;
    }

    static Handler c(wd wd1)
    {
        return wd1.e;
    }

    private void c()
    {
        int i;
        String s;
        i = 0;
        s = getApplicationContext().getSharedPreferences("my-widget", 0).getString("hosts", null);
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = s.split(";");
        j = as.length;
_L7:
        if (i < j) goto _L4; else goto _L3
_L3:
        return;
_L4:
        b.add(as[i]);
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (a(this, "com.dianxinos.dxhome"))
        {
            b.add("com.dianxinos.dxhome");
        }
        if (!a(this, "com.dianxinos.dxlauncher")) goto _L3; else goto _L5
_L5:
        b.add("com.dianxinos.dxlauncher");
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void c(Intent intent)
    {
        String s = intent.getStringExtra("host_home_pkg");
        if (s != null && !b.contains(s))
        {
            b.add(s);
        }
    }

    private void d()
    {
        android.content.SharedPreferences.Editor editor = getApplicationContext().getSharedPreferences("my-widget", 0).edit();
        String s = "";
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                editor.putString("hosts", s);
                return;
            }
            s = (new StringBuilder(String.valueOf(s))).append((String)iterator.next()).append(";").toString();
        } while (true);
    }

    static boolean d(wd wd1)
    {
        return wd1.b();
    }

    protected void a(Intent intent)
    {
        LinkedList linkedlist = d;
        linkedlist;
        JVM INSTR monitorenter ;
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onHandleIntent()  actionType = ")).append(intent.getIntExtra("action_type", -2)).append("   intent = ").append(intent.toString()).toString());
        }
        if (!intent.hasExtra("action_type")) goto _L2; else goto _L1
_L1:
        String s;
        d.addLast(intent);
        s = intent.getStringExtra("host_home_pkg");
        if (s == null) goto _L4; else goto _L3
_L3:
        wa wa1;
        wa1 = (wa)a.get(s);
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("onHandleIntent,--------------,1111 service=")).append(wa1).toString());
        }
        if (wa1 != null) goto _L6; else goto _L5
_L5:
        a(s);
_L2:
        linkedlist;
        JVM INSTR monitorexit ;
        return;
_L6:
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onHandleIntent mTaskQueue.size()=")).append(d.size()).toString());
        }
        android.os.Message message = e.obtainMessage(2);
        e.sendMessage(message);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        linkedlist;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        Iterator iterator;
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("onHandleIntent,--------------2222 sHostHomes=")).append(b.size()).toString());
        }
        iterator = b.iterator();
_L8:
        while (iterator.hasNext()) 
        {
            String s1 = (String)iterator.next();
            if ((wa)a.get(s1) != null)
            {
                break MISSING_BLOCK_LABEL_295;
            }
            a(s1);
        }
        continue; /* Loop/switch isn't completed */
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onHandleIntent mTaskQueue.size()=")).append(d.size()).toString());
        }
        android.os.Message message1 = e.obtainMessage(2);
        e.sendMessage(message1);
        if (true) goto _L8; else goto _L7
_L7:
        if (true) goto _L2; else goto _L9
_L9:
    }

    public abstract void a(Intent intent, wa wa1);

    public volatile void a(boolean flag)
    {
        super.a(flag);
    }

    public abstract void b(Intent intent, wa wa1);

    public abstract void c(Intent intent, wa wa1);

    public abstract void d(Intent intent, wa wa1);

    public abstract void e(Intent intent, wa wa1);

    public IBinder onBind(Intent intent)
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onBind(),mService=")).append(a.toString()).toString());
        }
        return super.onBind(intent);
    }

    public void onCreate()
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onCreate()+mService=")).append(a.toString()).toString());
        }
        super.onCreate();
        c();
        a(true);
        if (android.os.Build.VERSION.SDK_INT <= 17)
        {
            startForeground(10000, new Notification());
        }
    }

    public void onDestroy()
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", "WidgetClientService onDestroy()");
        }
        d();
        try
        {
            if (c)
            {
                c = false;
                getApplicationContext().unbindService(f);
            }
        }
        catch (Exception exception) { }
        super.onDestroy();
    }

    public void onStart(Intent intent, int i)
    {
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("WidgetClientService onStart()+mService=")).append(a.toString()).append("   intent = ").append(intent.toString()).toString());
        }
        super.onStart(intent, i);
        if (vy.a)
        {
            Log.i("WidgetClientService", (new StringBuilder("end WidgetClientService onStart()+mService=")).append(a.toString()).toString());
        }
    }

    public volatile int onStartCommand(Intent intent, int i, int j)
    {
        return super.onStartCommand(intent, i, j);
    }

}
