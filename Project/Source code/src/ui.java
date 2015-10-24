// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public final class ui
{

    private static ui e = null;
    private Context a;
    private String b;
    private boolean c;
    private Object d;
    private final Runnable f = new uj(this);

    private ui(Context context)
    {
        b = "";
        c = false;
        d = new Object();
        a = context.getApplicationContext();
        d();
    }

    static String a(ui ui1)
    {
        return ui1.b;
    }

    public static ui a(Context context)
    {
        ui;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = new ui(context);
        }
        ui;
        JVM INSTR monitorexit ;
        return e;
        Exception exception;
        exception;
        ui;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean a(String s)
    {
        String s1;
        JSONObject jsonobject;
        if (ud.b)
        {
            Log.d("stat.TokenUtils", "Enter reportToken()");
        }
        if (!ud.a(a))
        {
            return false;
        }
        try
        {
            s1 = ud.a("token", a);
            jsonobject = new JSONObject();
            java.util.Map.Entry entry;
            for (Iterator iterator = uh.a(a).entrySet().iterator(); iterator.hasNext(); jsonobject.put((String)entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.TokenUtils", "Can not report the token.", exception);
            }
            return false;
        }
        boolean flag;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("token", s));
        String s2 = tg.a(a);
        String s3 = te.a(tg.a(), s2);
        arraylist.add(new BasicNameValuePair("pu", s2));
        arraylist.add(new BasicNameValuePair("ci", s3));
        arraylist.add(new BasicNameValuePair("hw", te.a(jsonobject.toString(), tg.b())));
        flag = (new ug(a, s1, "DXCoreServiceToken", "stat.TokenUtils")).a(arraylist);
        return flag;
    }

    static boolean a(ui ui1, String s)
    {
        return ui1.a(s);
    }

    static boolean a(ui ui1, boolean flag)
    {
        ui1.c = flag;
        return flag;
    }

    static boolean b(ui ui1)
    {
        return ui1.c;
    }

    static void c(ui ui1)
    {
        ui1.e();
    }

    private void d()
    {
        SharedPreferences sharedpreferences = a.getSharedPreferences("utils", 1);
        c = sharedpreferences.getBoolean("st", false);
        long l = sharedpreferences.getLong("rt", -1L);
        if (l == -1L || System.currentTimeMillis() - l > 0x48190800L)
        {
            c = false;
        }
        b = gx.a(a);
        if (ud.c)
        {
            Log.i("stat.TokenUtils", (new StringBuilder()).append("Loaded token: ").append(b).append(", status: ").append(c).toString());
        }
    }

    private void e()
    {
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences("utils", 1).edit();
        editor.putBoolean("st", c);
        editor.putLong("rt", System.currentTimeMillis());
        ud.a(editor);
    }

    public String a()
    {
        return b;
    }

    public String b()
    {
        if (b.length() != 0 && !c)
        {
            uf.a(f);
        }
        return b;
    }

    public void c()
    {
        synchronized (d)
        {
            c = false;
            e();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
