// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import android.os.SystemClock;
import com.dianxinos.powermanager.PowerMangerApplication;
import org.json.JSONException;
import org.json.JSONObject;

class agk
    implements Runnable
{

    final add a;
    final int b;
    final agj c;

    agk(agj agj1, add add1, int i)
    {
        c = agj1;
        a = add1;
        b = i;
        super();
    }

    public void run()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("scale", a.d);
            jsonobject1.put("level", a.c);
            jsonobject1.put("status", a.a);
            jsonobject1.put("time", System.currentTimeMillis());
            jsonobject1.put("type", a.e);
            jsonobject1.put("temp", a.g);
            jsonobject1.put("vol", a.f);
            jsonobject1.put("from", b);
            jsonobject1.put("model", Build.MODEL);
            azd.a();
            jsonobject1.put("cpu_freqtime", azd.b());
            azd.c();
            jsonobject1.put("cpu_statustime", azd.d());
            jsonobject1.put("boot_time", SystemClock.elapsedRealtime());
            jsonobject1.put("wake_time", SystemClock.uptimeMillis());
            jsonobject.put(String.valueOf(agj.a(c)), jsonobject1);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        bal.a(PowerMangerApplication.a(), "battery_stats_each", jsonobject.toString());
    }
}
