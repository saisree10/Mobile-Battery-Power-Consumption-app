// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class tb
    implements Thread.UncaughtExceptionHandler
{

    private static tb b;
    private Thread.UncaughtExceptionHandler a;
    private Context c;
    private tc d;
    private boolean e;
    private sz f;
    private Pattern g;

    private tb(Context context)
    {
        e = false;
        c = context;
        d = new tc();
        f = new sz(c, "c");
    }

    public static tb a(Context context)
    {
        tb;
        JVM INSTR monitorenter ;
        tb tb1;
        if (b == null)
        {
            b = new tb(context.getApplicationContext());
        }
        tb1 = b;
        tb;
        JVM INSTR monitorexit ;
        return tb1;
        Exception exception;
        exception;
        throw exception;
    }

    private void b()
    {
        uk.a(d.a(), e());
    }

    private void b(Throwable throwable)
    {
        String s = c.getPackageName();
        d.b(s);
        d.a(uc.b(c, s));
        d.c(uc.a(c, s));
        if (throwable.getCause() != null)
        {
            throwable = throwable.getCause();
        }
        if (throwable.getClass() != null)
        {
            d.d(throwable.getClass().getName());
        }
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        if (astacktraceelement.length > 0)
        {
            StackTraceElement stacktraceelement = astacktraceelement[0];
            d.f(stacktraceelement.getClassName());
            d.g(stacktraceelement.getMethodName());
            d.b(stacktraceelement.getLineNumber());
        }
        c(throwable);
    }

    private void c(Throwable throwable)
    {
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        StringBuilder stringbuilder = new StringBuilder("");
        StringBuilder stringbuilder1 = new StringBuilder("");
        stringbuilder.append(throwable.getMessage());
        stringbuilder.append('\n');
        int i = astacktraceelement.length;
        int j = 0;
        boolean flag1;
        for (boolean flag = false; j < i; flag = flag1)
        {
            StackTraceElement stacktraceelement = astacktraceelement[j];
            if (e)
            {
                flag1 = g.matcher(stacktraceelement.getClassName()).find();
                if (flag && !flag1)
                {
                    if (ud.c)
                    {
                        Log.e("stat.CrashHandler", "Splite the crash end in last appear of mStarWith");
                    }
                    d.e(stringbuilder.toString());
                    d.a(ud.a(stringbuilder1.toString()));
                    return;
                }
            } else
            {
                flag1 = flag;
            }
            stringbuilder.append(stacktraceelement.toString());
            stringbuilder.append('\n');
            stringbuilder1.append(stacktraceelement.getClassName());
            stringbuilder1.append(stacktraceelement.getLineNumber());
            j++;
        }

        d.e(stringbuilder.toString());
        d.a(ud.a(stringbuilder1.toString()));
    }

    private boolean c()
    {
        JSONObject jsonobject = new JSONObject();
        boolean flag;
        try
        {
            jsonobject.put("type", 1);
            jsonobject.put("packageName", d.a());
            jsonobject.put("versionName", d.d());
            jsonobject.put("versionCode", d.e());
            jsonobject.put("md5", d.c());
            jsonobject.put("systemApp", false);
            jsonobject.put("count", 1);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("exceptionClassName", d.f());
            jsonobject1.put("throwClassName", d.h());
            jsonobject1.put("throwMethodName", d.i());
            jsonobject1.put("throwLineNumber", d.j());
            jsonobject1.put("exceptionMessage", d.g());
            jsonobject.put("Crash", jsonobject1);
            flag = a(new tf(tx.a, jsonobject));
            if (ud.c)
            {
                Log.i("stat.CrashHandler", (new StringBuilder()).append("Report Crash : ").append(jsonobject.toString()).append(" and report ").append(flag).toString());
            }
        }
        catch (JSONException jsonexception)
        {
            if (ud.d)
            {
                Log.e("stat.CrashHandler", "JSONException!", jsonexception);
            }
            return false;
        }
        return flag;
    }

    private boolean d()
    {
        JSONObject jsonobject = new JSONObject();
        boolean flag;
        try
        {
            jsonobject.put("type", 1);
            jsonobject.put("packageName", d.a());
            jsonobject.put("versionName", d.d());
            jsonobject.put("versionCode", d.e());
            jsonobject.put("systemApp", false);
            jsonobject.put("md5", d.c());
            jsonobject.put("count", d.b());
            jsonobject.put("Crash", new JSONObject());
            flag = a(new tf(tx.a, jsonobject));
            if (ud.c)
            {
                Log.i("stat.CrashHandler", (new StringBuilder()).append("report Crash : ").append(jsonobject.toString()).append(" and report ").append(flag).toString());
            }
        }
        catch (JSONException jsonexception)
        {
            if (ud.d)
            {
                Log.e("stat.CrashHandler", "JSONException!", jsonexception);
            }
            return false;
        }
        return flag;
    }

    private String e()
    {
        StringBuilder stringbuilder = new StringBuilder("\n");
        stringbuilder.append("VersionName : ");
        stringbuilder.append(d.d());
        stringbuilder.append(" VersionCode : ");
        stringbuilder.append(d.e());
        stringbuilder.append(" Model : ");
        stringbuilder.append(gy.l(c));
        stringbuilder.append(" Time : ");
        stringbuilder.append(new Date());
        stringbuilder.append("\nExceptionType:");
        stringbuilder.append(d.f());
        stringbuilder.append("\nExceptionClass:");
        stringbuilder.append(d.h());
        stringbuilder.append("\nExceptionMethod:");
        stringbuilder.append(d.i());
        stringbuilder.append("\tExceptionLine:");
        stringbuilder.append(d.j());
        stringbuilder.append("\ntraces:\n");
        stringbuilder.append(d.g());
        if (ud.c)
        {
            Log.e("stat.CrashHandler", (new StringBuilder()).append("writeMessage : ").append(stringbuilder.toString()).toString());
        }
        return stringbuilder.toString();
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = Thread.getDefaultUncaughtExceptionHandler();
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(boolean flag, String s)
    {
        e = flag;
        g = Pattern.compile(s);
    }

    public boolean a(Throwable throwable)
    {
        long l;
        if (throwable == null)
        {
            return false;
        }
        b(throwable);
        if (ud.c)
        {
            Log.i("stat.CrashHandler", (new StringBuilder()).append("ExClass: ").append(d.h()).append("\nExLine : ").append(d.j()).append("\nExMethod : ").append(d.i()).append("\nExTraces : ").append(d.g()).append("\nExType : ").append(d.f()).append("\nMD5: ").append(d.c()).append("\nPkgName : ").append(d.a()).append("\nVersionCode : ").append(d.e()).append("\nVersionName : ").append(d.d()).toString());
        }
        b();
        l = f.b(d);
        if (ud.c)
        {
            Log.i("stat.CrashHandler", (new StringBuilder()).append("Crash MD5 :").append(d.c()).append(" Count:").append(l).toString());
        }
        if (l != -1L) goto _L2; else goto _L1
_L1:
        if (ud.c)
        {
            Log.i("stat.CrashHandler", "Crash first occurs!");
        }
        c();
        f.a(d);
_L4:
        f.a();
        return true;
_L2:
        long l1 = l + 1L;
        long l2 = f.c(d);
        if (System.currentTimeMillis() - l2 > 0x5265c00L)
        {
            if (ud.c)
            {
                Log.i("stat.CrashHandler", "Should report the count of the crash!");
            }
            d.a(l1);
            if (d())
            {
                f.d(d);
            }
        } else
        {
            f.a(d, l1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean a(tf tf1)
    {
        String s;
        String s1;
        String s2;
        String s3;
        int i;
        boolean flag;
        try
        {
            s = tg.a(c);
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.CrashHandler", "Failed to push crash to the Db.", exception);
            }
            return false;
        }
        if (s == null)
        {
            return false;
        }
        s1 = tg.a();
        s2 = te.b(tf1.e(), s1);
        s3 = te.a(s1, s);
        i = c.getSharedPreferences("i", 0).getInt("pkv", 0);
        flag = (new th(c, "i")).a(s2, tf1.c(), tf1.d(), tf1.g().toString(), tf1.i(), s3, i, tf1.f());
        return flag;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        a(throwable);
        Thread.sleep(3000L);
        if (a != null && !equals(a))
        {
            if (ud.c)
            {
                Log.i("stat.CrashHandler", "Give back to default uncaughtException!");
            }
            a.uncaughtException(thread, throwable);
        }
_L2:
        return;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.CrashHandler", "UncaughtException has Exception", exception1);
        }
        if (a == null || equals(a)) goto _L2; else goto _L1
_L1:
        if (ud.c)
        {
            Log.i("stat.CrashHandler", "Give back to default uncaughtException!");
        }
        a.uncaughtException(thread, throwable);
        return;
        Exception exception;
        exception;
        if (a != null && !equals(a))
        {
            if (ud.c)
            {
                Log.i("stat.CrashHandler", "Give back to default uncaughtException!");
            }
            a.uncaughtException(thread, throwable);
        }
        throw exception;
    }
}
