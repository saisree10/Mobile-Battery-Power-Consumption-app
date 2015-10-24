// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.appupdate.DownloadService;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ka
{

    private static final boolean a;
    private static int b = 0;
    private static ka c;
    private static String x;
    private jj A;
    private Boolean B;
    private jy C;
    private ServiceConnection D;
    private boolean E;
    private Context d;
    private long e;
    private boolean f;
    private long g;
    private int h;
    private boolean i;
    private String j;
    private jr k;
    private kg l;
    private Thread m;
    private String n;
    private DownloadService o;
    private int p;
    private iz q;
    private Object r;
    private Object s;
    private Object t;
    private jz u;
    private Map v;
    private int w;
    private boolean y;
    private ConnectivityManager z;

    private ka(Context context)
    {
        this(context, null);
    }

    private ka(Context context, jr jr1)
    {
        e = 0x5265c00L;
        f = false;
        h = 0;
        i = true;
        r = new Object();
        s = new Object();
        t = new Object();
        w = 0;
        B = null;
        C = new ke(this);
        D = new kf(this);
        E = true;
        d = context;
        z = (ConnectivityManager)d.getSystemService("connectivity");
        A = jj.a(d, C);
        PackageManager packagemanager;
        int i1;
        File file;
        File file1;
        if (jr1 == null)
        {
            k = new jr();
            k.a(C);
        } else
        {
            k = jr1;
        }
        s();
        packagemanager = context.getPackageManager();
        try
        {
            p = packagemanager.getPackageInfo(context.getPackageName(), 0).versionCode;
            if (a)
            {
                Log.d("UpdateManager", (new StringBuilder()).append("Current apk version code:").append(p).toString());
            }
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        i1 = Process.myUid();
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("my uid:").append(i1).toString());
        }
        if (i1 == 1000)
        {
            w = 5;
            y = false;
        } else
        {
            w = 0;
            w = jo.a(d, "pref-apk-des", 0);
            if (a)
            {
                Log.d("UpdateManager", (new StringBuilder()).append("get destionation from pref: ").append(w).toString());
            }
            y = true;
        }
        file = new File(ix.a(d, 0));
        file1 = new File(ix.a(d, 5));
        a(file);
        a(file1);
    }

    static DownloadService a(ka ka1, DownloadService downloadservice)
    {
        ka1.o = downloadservice;
        return downloadservice;
    }

    static String a(ka ka1)
    {
        return ka1.n;
    }

    static String a(ka ka1, String s1)
    {
        ka1.n = s1;
        return s1;
    }

    static Thread a(ka ka1, Thread thread)
    {
        ka1.m = thread;
        return thread;
    }

    static jz a(ka ka1, jz jz1)
    {
        ka1.u = jz1;
        return jz1;
    }

    public static ka a(Context context)
    {
        ka;
        JVM INSTR monitorenter ;
        ka ka1;
        if (c == null)
        {
            c = new ka(context.getApplicationContext());
        }
        ka1 = c;
        ka;
        JVM INSTR monitorexit ;
        return ka1;
        Exception exception;
        exception;
        throw exception;
    }

    static kg a(ka ka1, kg kg1)
    {
        ka1.l = kg1;
        return kg1;
    }

    private void a(File file)
    {
        String s1 = (new StringBuilder()).append(d.getPackageName()).append("-update_").toString();
        if (file.exists() && file.isDirectory())
        {
            File afile[] = file.listFiles(new kc(this, s1));
            long l1 = System.currentTimeMillis();
            if (afile != null)
            {
                for (int i1 = 0; i1 < afile.length; i1++)
                {
                    File file1 = afile[i1];
                    long l2 = l1 - file1.lastModified();
                    if (a)
                    {
                        Log.d("UpdateManager", (new StringBuilder()).append("file:").append(file1.getAbsolutePath()).append(", last modified:").append(file1.lastModified()).toString());
                    }
                    if (l2 >= 0L && l2 <= 0xa4cb800L)
                    {
                        continue;
                    }
                    boolean flag = file1.delete();
                    if (a)
                    {
                        Log.d("UpdateManager", (new StringBuilder()).append("Delete old updated file ").append(file1.getAbsolutePath()).append(" removed:").append(flag).toString());
                    }
                }

            }
        }
    }

    private void a(String s1, jv jv1, int i1, boolean flag)
    {
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("Before performing download, url:").append(s1).toString(), new Throwable());
        }
        if (TextUtils.isEmpty(s1) || !jn.b.matcher(s1).matches())
        {
            if (jv1 != null)
            {
                jv1.d();
            }
            return;
        }
        if (jv1 != null)
        {
            jv1.c();
        }
        Intent intent = new Intent("com.dianxinos.appupdate.intent.DOWNLOAD");
        intent.setData(Uri.parse(n));
        intent.putExtra("extra-progress-enable", flag);
        intent.putExtra("extra-filename", j);
        String s2;
        if ((i1 & 1) != 0)
        {
            w = 5;
            if (a)
            {
                Log.d("UpdateManager", "switch destination to data");
            }
        } else
        if (y)
        {
            w = 0;
        }
        if ((i1 & 4) != 0)
        {
            intent.putExtra("extra-download-retry", true);
        } else
        {
            intent.putExtra("extra-download-retry", false);
        }
        jo.b(d, "pref-apk-des", w);
        intent.putExtra("extra-dest", w);
        s2 = (String)u.e.get("update-file-size");
        if (TextUtils.isEmpty(s2))
        {
            s2 = "0";
        }
        intent.putExtra("extra-file-size", Long.valueOf(s2));
        intent.putExtra("extra-checksum", u.g);
        if (u != null)
        {
            intent.putExtra("extra-dspt", u.d);
            intent.putExtra("extra-pri", u.c);
            intent.putExtra("extra-extra_info", a(u.e));
        } else
        if (a)
        {
            Log.w("UpdateManager", "Lastest update info is null");
        }
        intent.setPackage(d.getPackageName());
        jo.b(d, "pref-last-down-url", s1);
        jo.b(d, "pref-need-redownload", true);
        d.startService(intent);
    }

    static void a(ka ka1, String s1, jv jv1, int i1, boolean flag)
    {
        ka1.a(s1, jv1, i1, flag);
    }

    private boolean a(jl jl, ju ju, boolean flag, boolean flag1)
    {
label0:
        {
            synchronized (t)
            {
                if (!kj.a(m))
                {
                    break label0;
                }
                if (a)
                {
                    Log.d("UpdateManager", "A previous install thread interrupted");
                }
            }
            return false;
        }
        kd kd1 = new kd(this, jl, ju, flag, flag1);
        StringBuilder stringbuilder = (new StringBuilder()).append("InstallThread-");
        int i1 = 1 + b;
        b = i1;
        m = new Thread(kd1, stringbuilder.append(i1).toString());
        m.start();
        obj;
        JVM INSTR monitorexit ;
        return true;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(ka ka1, File file)
    {
        return ka1.b(file);
    }

    static String b(ka ka1)
    {
        return ka1.w();
    }

    static void b(ka ka1, File file)
    {
        ka1.c(file);
    }

    private boolean b(File file)
    {
        IPackageManager ipackagemanager = is.a(d);
        if (ipackagemanager != null) goto _L2; else goto _L1
_L1:
        Log.i("UpdateManager", "service not found, silent install failed.");
_L4:
        return false;
_L2:
        Uri uri;
        Log.i("UpdateManager", "service be found");
        uri = Uri.fromFile(file);
        ipackagemanager.installPackage(uri, new ki(this), 2, d.getPackageName());
        return true;
        RemoteException remoteexception;
        remoteexception;
        if (a)
        {
            remoteexception.printStackTrace();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static String c(ka ka1)
    {
        return ka1.j;
    }

    private void c(File file)
    {
        if (a)
        {
            Log.i("UpdateManager", (new StringBuilder()).append("Installing via intent, file: ").append(file.getAbsolutePath()).toString());
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        intent.addFlags(0x10000000);
        intent.putExtra("android.intent.extra.INSTALLER_PACKAGE_NAME", d.getPackageName());
        d.startActivity(intent);
        if (a)
        {
            Log.d("UpdateManager", "PackageInstaller called");
        }
    }

    static Context d(ka ka1)
    {
        return ka1.d;
    }

    static String d(String s1)
    {
        x = s1;
        return s1;
    }

    static Object e(ka ka1)
    {
        return ka1.t;
    }

    static ServiceConnection f(ka ka1)
    {
        return ka1.D;
    }

    static iz g(ka ka1)
    {
        return ka1.q;
    }

    static DownloadService h(ka ka1)
    {
        return ka1.o;
    }

    static int i(ka ka1)
    {
        return ka1.p;
    }

    static jr j(ka ka1)
    {
        return ka1.k;
    }

    static int k(ka ka1)
    {
        return ka1.h;
    }

    static jz l(ka ka1)
    {
        return ka1.u;
    }

    static boolean p()
    {
        return a;
    }

    static int q()
    {
        int i1 = 1 + b;
        b = i1;
        return i1;
    }

    static String r()
    {
        return x;
    }

    private void s()
    {
        j = jo.a(d, "pref-filename");
        u = b(jo.a(d, "pref-update-info"));
        if (!kj.a(j))
        {
            if (a)
            {
                Log.w("UpdateManager", (new StringBuilder()).append("Invalid filename found in pref:").append(j).toString());
            }
            j = (new StringBuilder()).append(d.getPackageName()).append("-update_").append(System.currentTimeMillis()).append(".apk").toString();
            String s1;
            if (!kj.a(j))
            {
                if (a)
                {
                    Log.w("UpdateManager", (new StringBuilder()).append("Generated filename invalid:").append(j).toString());
                }
                j = (new StringBuilder()).append("app-update_").append(System.currentTimeMillis()).append(".apk").toString();
                if (a)
                {
                    Log.d("UpdateManager", (new StringBuilder()).append("Use failback filename:").append(j).toString());
                }
            } else
            if (a)
            {
                Log.d("UpdateManager", (new StringBuilder()).append("Filename generated:").append(j).toString());
            }
        } else
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("get filename from pref:").append(j).toString());
        }
        e = jo.a(d, "pref-auto-check-interval", -1L);
        if (e > 0L)
        {
            f = true;
            if (e < 60000L)
            {
                e = 60000L;
            }
        } else
        {
            e = 0x5265c00L;
        }
        g = jo.a(d, "pref-ignore-update-time", 0L);
        h = jo.a(d, "pref-ignored-version", 0);
        jo.b(d, "pref-filename", j);
        i = jo.a(d, "pref-progress-listener-enable", true);
        s1 = jo.a(d, "pref-custom-info");
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("Get saved custom info from pref:").append(s1).toString());
        }
        v = c(s1);
    }

    private void t()
    {
        i = false;
        jo.b(d, "pref-progress-listener-enable", false);
    }

    private void u()
    {
        i = true;
        jo.b(d, "pref-progress-listener-enable", true);
    }

    private void v()
    {
        int i1 = jo.a(d, "pref_my_appupdate_host_version", -1);
        int j1 = kj.b(d);
        if (i1 != j1)
        {
            jo.b(d, "pref_my_appupdate_host_version", j1);
            String s1;
            if (i1 >= 0)
            {
                if (!TextUtils.isEmpty(s1 = kj.d(d)) && d.getPackageName().equals(s1))
                {
                    a("up");
                    return;
                }
            }
        }
    }

    private String w()
    {
        return ix.a(d, w);
    }

    protected ConnectivityManager a()
    {
        return z;
    }

    protected String a(Map map)
    {
        if (map != null)
        {
            Iterator iterator = map.keySet().iterator();
            JSONObject jsonobject = new JSONObject();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                String s2 = (String)map.get(s1);
                try
                {
                    jsonobject.put(s1, s2);
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                }
            }
            return jsonobject.toString();
        } else
        {
            return null;
        }
    }

    void a(long l1, long l2)
    {
        AlarmManager alarmmanager = (AlarmManager)d.getSystemService("alarm");
        Intent intent = new Intent("com.dianxinos.appupdate.intent.CHECK_UPDATE");
        intent.setPackage(d.getPackageName());
        alarmmanager.setRepeating(1, l1, l2, PendingIntent.getService(d, 0, intent, 0x10000000));
    }

    public void a(Context context, Intent intent)
    {
        if (it.a)
        {
            Log.d("UpdateManager", "onReceiver ");
        }
        if (intent != null)
        {
            String s1 = intent.getAction();
            if ("android.intent.action.PACKAGE_ADDED".equals(s1))
            {
                jp.b(context, intent);
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(s1))
            {
                jp.a(context, intent);
            }
        }
    }

    public void a(iz iz)
    {
        if (iz == null)
        {
            return;
        }
        ServiceConnection serviceconnection = D;
        serviceconnection;
        JVM INSTR monitorenter ;
        q = iz;
        if (a)
        {
            Log.d("UpdateManager", "Binding download service");
        }
        if (o == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        o.a(iz);
_L1:
        if (a)
        {
            Log.d("UpdateManager", "After bind download service");
        }
        return;
        Exception exception;
        exception;
        serviceconnection;
        JVM INSTR monitorexit ;
        throw exception;
        Intent intent = new Intent(d, com/dianxinos/appupdate/DownloadService);
        d.bindService(intent, D, 1);
          goto _L1
    }

    public void a(String s1)
    {
        A.a(s1);
    }

    public void a(String s1, Map map)
    {
        A.a(s1, map);
    }

    public void a(jv jv1)
    {
        A.a("sdl-u");
        a(jv1, false, 0);
    }

    public void a(jv jv1, boolean flag)
    {
        a(jv1, flag, 0);
    }

    protected void a(jv jv1, boolean flag, int i1)
    {
        boolean flag1 = true;
        Object obj = s;
        obj;
        JVM INSTR monitorenter ;
        boolean flag2 = jo.a(d, "pref-last-progress-enable", true);
        if (flag) goto _L2; else goto _L1
_L1:
        if ((i1 & 2) == 0) goto _L4; else goto _L3
_L3:
        t();
        flag1 = false;
          goto _L5
_L10:
        if (!TextUtils.isEmpty(n) && u != null) goto _L7; else goto _L6
_L6:
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("Empty download URL:").append(n).append(", check update now").toString());
        }
        a(((iv) (new kb(this, jv1, i1, flag1))));
_L8:
        obj;
        JVM INSTR monitorexit ;
        if (!flag)
        {
            jo.b(d, "pref-retry-count", 0);
        }
        return;
_L4:
        u();
          goto _L5
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L7:
        a(n, jv1, i1, flag1);
          goto _L8
_L2:
        flag1 = flag2;
_L5:
        if (flag)
        {
            i1 |= 4;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected void a(jz jz1)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("vc", jz1.a);
            jsonobject.put("vn", jz1.b);
            jsonobject.put("dspt", jz1.d);
            jsonobject.put("prt", jz1.c);
            jsonobject.put("time", jz1.f);
            jsonobject.put("md5", jz1.g);
            jsonobject.put("pkg", jz1.i);
            jsonobject.put("markets", new JSONArray(jz1.h));
            jsonobject.put("extra", new JSONObject(jz1.e));
            String s1 = jsonobject.toString();
            if (a)
            {
                Log.d("UpdateManager", (new StringBuilder()).append("saving update info:").append(s1).toString());
            }
            jo.b(d, "pref-update-info", s1);
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
    }

    protected void a(boolean flag)
    {
        a(flag, false);
    }

    void a(boolean flag, boolean flag1)
    {
        boolean flag2;
        int i1 = kj.a(d);
        if (i1 < 0)
        {
            return;
        }
        Boolean boolean1;
        boolean flag3;
        long l1;
        Intent intent;
        long l4;
        long l6;
        if (i1 == 1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        this;
        JVM INSTR monitorenter ;
        boolean1 = B;
        flag3 = f;
        B = Boolean.valueOf(flag2);
        this;
        JVM INSTR monitorexit ;
        l1 = System.currentTimeMillis();
        long l2 = j();
        long l3 = e;
        boolean flag4;
        if (flag1 && !flag3)
        {
            if (flag2)
            {
                l3 = 0xdbba00L;
            } else
            {
                l3 = 0x5265c00L;
            }
        }
        if (l3 + l2 < l1 || l2 > l1)
        {
            intent = new Intent("com.dianxinos.appupdate.intent.CHECK_UPDATE");
            intent.setPackage(d.getPackageName());
            d.startService(intent);
            if (a)
            {
                Log.i("UpdateManager", "Check update caused by data invalid");
            }
            flag4 = true;
        } else
        {
            flag4 = false;
            if (flag2)
            {
                flag4 = false;
                if (flag)
                {
                    boolean flag5 = o();
                    flag4 = false;
                    if (flag5)
                    {
                        a(((jv) (null)), false, 2);
                        flag4 = false;
                    }
                }
            }
        }
        if (flag4 || boolean1 == null || !boolean1.equals(Boolean.valueOf(flag2)))
        {
            l4 = e;
            Exception exception;
            long l5;
            if (flag4)
            {
                l5 = l1;
            } else
            {
                l5 = l2;
            }
            l6 = l5 + l4;
            a(l6, e);
            if (a)
            {
                Log.d("UpdateManager", (new StringBuilder()).append("Schedule check update at ").append((l6 - l1) / 1000L).append("seconds later").toString());
            }
        }
        v();
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(iv iv)
    {
        return a(iv, false);
    }

    protected boolean a(iv iv, Callable callable, boolean flag)
    {
label0:
        {
            synchronized (r)
            {
                if (!kj.a(l))
                {
                    break label0;
                }
                if (a)
                {
                    Log.i("UpdateManager", "A previous check update task is working, start check failed");
                }
            }
            return false;
        }
        l = new kg(this, iv, callable);
        l.a(flag);
        l.start();
        obj;
        JVM INSTR monitorexit ;
        return true;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a(iv iv, boolean flag)
    {
        return a(iv, ((Callable) (null)), flag);
    }

    public boolean a(jl jl)
    {
        a("ins");
        return a(jl, ((ju) (null)), false, false);
    }

    protected jz b(String s1)
    {
        long l1 = 0L;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject;
        int i1;
        String s2;
        String s3;
        int j1;
        jsonobject = new JSONObject(s1);
        i1 = jsonobject.optInt("vc", -1);
        s2 = jsonobject.optString("vn");
        s3 = jsonobject.optString("dspt");
        j1 = jsonobject.optInt("prt", 0);
        JSONException jsonexception;
        int k1;
        long l2;
        JSONArray jsonarray;
        ArrayList arraylist;
        int i2;
        JSONObject jsonobject1;
        HashMap hashmap;
        String s4;
        jz jz1;
        if (j1 > 3)
        {
            k1 = 3;
        } else
        {
            k1 = j1;
        }
        l2 = jsonobject.optLong("time", 0L);
        if (l2 >= l1)
        {
            l1 = l2;
        }
        jsonarray = jsonobject.optJSONArray("markets");
        arraylist = new ArrayList();
        i2 = 0;
        if (jsonarray == null) goto _L4; else goto _L3
_L3:
        if (i2 >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(jsonarray.getString(i2));
        i2++;
        if (true) goto _L3; else goto _L4
_L4:
        jsonobject1 = jsonobject.optJSONObject("extra");
        hashmap = new HashMap();
        if (jsonobject1 == null) goto _L6; else goto _L5
_L5:
        String s5;
        for (Iterator iterator = jsonobject1.keys(); iterator.hasNext(); hashmap.put(s5, jsonobject1.getString(s5)))
        {
            s5 = (String)iterator.next();
        }

          goto _L6
        jsonexception;
        jsonexception.printStackTrace();
_L2:
        return null;
_L6:
        s4 = jsonobject.optString("pkg");
        if (i1 <= 0) goto _L2; else goto _L7
_L7:
        jz1 = new jz();
        jz1.a = i1;
        jz1.b = s2;
        jz1.c = k1;
        jz1.d = s3;
        jz1.f = l1;
        jz1.i = s4;
        jz1.h = arraylist;
        jz1.e = hashmap;
        jz1.g = jsonobject.optString("md5");
        return jz1;
    }

    public void b(iz iz)
    {
        if (iz == null)
        {
            return;
        }
        synchronized (D)
        {
            q = null;
            if (o != null)
            {
                o.b(iz);
                d.unbindService(D);
                o = null;
                if (a)
                {
                    Log.d("UpdateManager", "DownloadProgressListener unregistered");
                }
            }
        }
        return;
        exception;
        serviceconnection;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(boolean flag)
    {
        E = flag;
    }

    protected boolean b()
    {
        return i;
    }

    protected Map c(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            break MISSING_BLOCK_LABEL_86;
        }
        HashMap hashmap;
        JSONObject jsonobject;
        Iterator iterator;
        hashmap = new HashMap();
        jsonobject = new JSONObject(s1);
        iterator = jsonobject.keys();
_L2:
        String s2;
        String s3;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_88;
            }
            s2 = iterator.next().toString();
            s3 = jsonobject.optString(s2);
        } while (s3 == null);
        hashmap.put(s2, s3);
        if (true) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        hashmap = null;
        return hashmap;
    }

    public void c()
    {
        synchronized (r)
        {
            if (kj.a(l))
            {
                l.a();
                l.interrupt();
            }
        }
        l = null;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d()
    {
        Intent intent = new Intent("com.dianxinos.appupdate.intent.CANCEL_DOWNLOAD");
        intent.setPackage(d.getPackageName());
        d.startService(intent);
        jo.b(d, "pref-need-redownload", false);
        Intent intent1 = new Intent("com.dianxinos.appupdate.intent.DOWNLOAD_RETRY");
        PendingIntent pendingintent = PendingIntent.getService(d, 0, intent1, 0x20000000);
        if (pendingintent != null)
        {
            ((AlarmManager)d.getSystemService("alarm")).cancel(pendingintent);
        }
        if (a)
        {
            Log.d("UpdateManager", "Cancel download intent sent");
        }
    }

    public long e()
    {
        return e;
    }

    public void f()
    {
        if (kj.e(d))
        {
            a(true);
            if (a)
            {
                Log.d("UpdateManager", "Check update scheduled through wakeup");
            }
        } else
        if (a)
        {
            Log.d("UpdateManager", "Network unavaliable");
            return;
        }
    }

    public void g()
    {
        g = System.currentTimeMillis();
        jo.b(d, "pref-ignore-update-time", g);
        a("ig");
    }

    public boolean h()
    {
        if (u == null || u.e == null)
        {
            return false;
        }
        long l3 = Long.valueOf((String)u.e.get("udpate-no-check-delay")).longValue();
        long l1 = l3;
_L1:
        long l2 = System.currentTimeMillis();
        Exception exception;
        NumberFormatException numberformatexception;
        return l1 + g > l2 && g <= l2;
        numberformatexception;
        if (a)
        {
            Log.w("UpdateManager", "no_check_delay parse failed, use default", numberformatexception);
        }
        l1 = 0xa4cb800L;
          goto _L1
        exception;
        if (a)
        {
            Log.w("UpdateManager", "no_check_delay parse failed, use default", exception);
        }
        l1 = 0xa4cb800L;
          goto _L1
    }

    public boolean i()
    {
        return Calendar.getInstance().get(11) <= 7;
    }

    public long j()
    {
        return jo.a(d, "pref-last-check", -1L);
    }

    public jz k()
    {
        String s2;
        PackageInfo packageinfo;
label0:
        {
            String s1 = ix.a(d, w);
            s2 = (new StringBuilder()).append(s1).append(j).toString();
            if (is.a(d, s2) == 0)
            {
                packageinfo = d.getPackageManager().getPackageArchiveInfo(s2, 16384);
                if (packageinfo != null)
                {
                    break label0;
                }
                if (a)
                {
                    Log.w("UpdateManager", (new StringBuilder()).append("Cannot get archive info for apk:").append(s2).toString());
                }
            }
            return null;
        }
        jz jz1 = new jz();
        jz1.a = packageinfo.versionCode;
        jz1.b = packageinfo.versionName;
        jz1.c = jo.a(d, "pref-archive-pri", 0);
        jz1.d = jo.a(d, "pref-archive-dspt");
        jz1.e = c(jo.a(d, "pref-archive-extra"));
        jz1.f = jo.a(d, "pref-archive-time", 0L);
        jz1.j = s2;
        return jz1;
    }

    public boolean l()
    {
        jz jz1 = k();
        if (jz1 != null) goto _L2; else goto _L1
_L1:
        if (a)
        {
            Log.d("UpdateManager", "No local archive, need download");
        }
_L4:
        return true;
_L2:
        if (u != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (a)
        {
            Log.d("UpdateManager", "No latest update info found, need download");
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (a)
        {
            Log.d("UpdateManager", (new StringBuilder()).append("Latest version:").append(u.a).append(", local archive version:").append(jz1.a).toString());
        }
        if (u.a <= jz1.a)
        {
            return false;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public jz m()
    {
        return u;
    }

    public List n()
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        PackageManager packagemanager;
        Iterator iterator;
        arraylist = new ArrayList();
        if (u == null || u.h == null || u.h.isEmpty())
        {
            return arraylist;
        }
        arraylist1 = new ArrayList();
        packagemanager = d.getPackageManager();
        iterator = u.h.iterator();
_L6:
        String s1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_336;
        }
        s1 = (String)iterator.next();
        PackageInfo packageinfo = packagemanager.getPackageInfo(s1, 0);
        if (packageinfo == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Intent intent;
        jz jz1;
        intent = new Intent("android.intent.action.VIEW");
        jz1 = m();
        if (jz1 == null) goto _L2; else goto _L1
_L1:
        if (TextUtils.isEmpty(jz1.i)) goto _L2; else goto _L3
_L3:
        String s3 = jz1.i;
_L4:
        kh kh1;
        ApplicationInfo applicationinfo;
        intent.setData(Uri.parse((new StringBuilder()).append("market://details?id=").append(s3).toString()));
        intent.setPackage(packageinfo.packageName);
        if (packagemanager.queryIntentActivities(intent, 0).isEmpty())
        {
            continue; /* Loop/switch isn't completed */
        }
        kh1 = new kh();
        applicationinfo = packageinfo.applicationInfo;
        if (applicationinfo != null)
        {
            try
            {
                kh1.a = applicationinfo.loadIcon(packagemanager);
                kh1.b = applicationinfo.loadLabel(packagemanager).toString();
                kh1.c = intent;
                arraylist.add(kh1);
                arraylist1.add(packageinfo.packageName);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                if (a)
                {
                    Log.d("UpdateManager", (new StringBuilder()).append(s1).append("is not found").toString());
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        String s2 = d.getPackageName();
        s3 = s2;
          goto _L4
        if (!arraylist1.isEmpty())
        {
            HashMap hashmap = new HashMap();
            hashmap.put("pkg-list", (new JSONArray(arraylist1)).toString());
            a("ml", hashmap);
        }
        return arraylist;
        if (true) goto _L6; else goto _L5
_L5:
    }

    boolean o()
    {
        return E;
    }

    static 
    {
        a = it.a;
    }
}
