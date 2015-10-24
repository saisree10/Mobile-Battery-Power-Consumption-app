// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class agi
{

    public double A;
    public long B;
    public long C[];
    public double D;
    public double E;
    public double F[];
    public double G;
    public ArrayList H;
    public long a;
    public double b;
    public double c;
    public double d[];
    public double e;
    public double f;
    public long g;
    public long h;
    public double i;
    public double j;
    public double k;
    public long l;
    public double m;
    public double n;
    public int o;
    public double p;
    public double q[];
    public long r;
    public long s[];
    public long t;
    public int u[];
    public long v[];
    public int w[];
    public double x;
    public double y;
    public long z;

    public agi()
    {
        H = new ArrayList();
    }

    private JSONArray a(double ad[])
    {
        JSONArray jsonarray = new JSONArray();
        if (ad != null) goto _L2; else goto _L1
_L1:
        return jsonarray;
_L2:
        int i1 = 0;
        do
        {
            try
            {
                if (i1 >= ad.length)
                {
                    break;
                }
                jsonarray.put(ad[i1]);
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                return jsonarray;
            }
            i1++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private JSONArray a(int ai[])
    {
        JSONArray jsonarray = new JSONArray();
        if (ai == null)
        {
            return jsonarray;
        }
        for (int i1 = 0; i1 < ai.length; i1++)
        {
            jsonarray.put(ai[i1]);
        }

        return jsonarray;
    }

    private JSONArray a(long al[])
    {
        JSONArray jsonarray = new JSONArray();
        if (al == null)
        {
            return jsonarray;
        }
        for (int i1 = 0; i1 < al.length; i1++)
        {
            jsonarray.put(al[i1]);
        }

        return jsonarray;
    }

    public JSONObject a()
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1 = new JSONObject();
        try
        {
            jsonobject1.put("period", a);
            jsonobject1.put("cpuIdle", b);
            jsonobject1.put("cpuAwake", c);
            jsonobject1.put("cpuActive", a(d));
            jsonobject1.put("wifiScan", e);
            jsonobject1.put("wifiOn", f);
            jsonobject1.put("wifiOnTime", g);
            jsonobject1.put("wifiRunningTime", h);
            jsonobject1.put("wifiActive", i);
            jsonobject1.put("gpsOn", j);
            jsonobject1.put("bluetoothOn", k);
            jsonobject1.put("bluetoothOnTime", l);
            jsonobject1.put("bluetoothActive", m);
            jsonobject1.put("bluetoothAt", n);
            jsonobject1.put("bluetoothPingCount", o);
            jsonobject1.put("screenOn", p);
            jsonobject1.put("radioOn", a(q));
            jsonobject1.put("phoneOnTime", r);
            jsonobject1.put("phoneSignalStrengthTime", a(s));
            jsonobject1.put("phoneSignalStrengthCount", a(u));
            jsonobject1.put("phoneSignalScanningTime", t);
            jsonobject1.put("phoneDataConnectionCount", a(w));
            jsonobject1.put("phoneDataConnectionTime", a(v));
            jsonobject1.put("radioScanning", x);
            jsonobject1.put("radioActive", y);
            jsonobject1.put("radioDataUptime", z);
            jsonobject1.put("screenFull", A);
            jsonobject1.put("screenOnTime", B);
            jsonobject1.put("screenBrightnessTime", a(C));
            jsonobject1.put("dspAudio", D);
            jsonobject1.put("dspVideo", E);
            jsonobject1.put("cpuSpeeds", a(F));
            jsonobject1.put("batteryCapacity", G);
            jsonobject.put("total", jsonobject1);
            Iterator iterator = H.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                atu atu1 = (atu)iterator.next();
                if (atu1.b != null && atu1.b.indexOf('.') != 0)
                {
                    jsonobject.put(atu1.b, atu1.e());
                }
            } while (true);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        return jsonobject;
    }
}
