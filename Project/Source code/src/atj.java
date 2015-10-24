// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import com.android.internal.os.PowerProfile;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Properties;

public class atj extends PowerProfile
{

    private static final HashMap a = new HashMap();
    private Context b;

    public atj(Context context)
    {
        super(context);
        b = context.getApplicationContext();
        synchronized (a)
        {
            if (a.size() == 0)
            {
                atk atk1 = new atk();
                a(context, (new StringBuilder()).append("data/").append(atk1.a()).toString(), a);
            }
        }
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static double a(Context context)
    {
        InputStream inputstream;
        acx acx1;
        String s;
        inputstream = null;
        acx1 = acx.a(context);
        s = acx.a(context).b();
        if (s != null && !s.equals("-1"))
        {
            if (s.equals(""))
            {
                return 0.0D;
            } else
            {
                return Double.parseDouble(s);
            }
        }
        String s2;
        inputstream = context.getAssets().open("data/battery_capacity.properties");
        Properties properties = new Properties();
        properties.load(inputstream);
        s2 = properties.getProperty(Build.MODEL.trim().toUpperCase(), "");
        String s1 = s2;
        acx1.a(s1);
        try
        {
            inputstream.close();
        }
        catch (Exception exception3)
        {
            exception3.printStackTrace();
        }
_L1:
        Exception exception;
        IOException ioexception;
        IOException ioexception1;
        if (s1.equals(""))
        {
            return 0.0D;
        } else
        {
            return Double.parseDouble(s1);
        }
        ioexception;
        s1 = s;
        ioexception1 = ioexception;
_L2:
        ioexception1.printStackTrace();
        try
        {
            inputstream.close();
        }
        catch (Exception exception2)
        {
            exception2.printStackTrace();
        }
          goto _L1
        exception;
        try
        {
            inputstream.close();
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
        }
        throw exception;
        ioexception1;
          goto _L2
    }

    private void a(Context context, String s, HashMap hashmap)
    {
        InputStream inputstream;
        try
        {
            inputstream = context.getAssets().open(s);
        }
        catch (IOException ioexception)
        {
            azt.d("LocalPowerProfile", (new StringBuilder()).append("Failed to read the file: ").append(s).append(", with exception: ").append(ioexception.toString()).toString());
            return;
        }
        a(inputstream, s, hashmap);
    }

    private void a(InputStream inputstream, String s, HashMap hashmap)
    {
        int i;
        DataInputStream datainputstream;
        i = 0;
        datainputstream = new DataInputStream(inputstream);
        int j;
        Float afloat[];
        datainputstream.readInt();
        hashmap.put("dsp.audio", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("dsp.video", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("gps.on", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("screen.on", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("screen.full", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("bluetooth.on", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("bluetooth.active", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("bluetooth.at", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("wifi.on", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("wifi.active", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("wifi.scan", Float.valueOf(datainputstream.readFloat()));
        j = datainputstream.readInt();
        afloat = new Float[j];
        int k = 0;
_L2:
        if (k >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        afloat[k] = Float.valueOf(datainputstream.readFloat());
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        int l;
        Float afloat1[];
        hashmap.put("radio.on", afloat);
        hashmap.put("radio.active", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("radio.scanning", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("cpu.idle", Float.valueOf(datainputstream.readFloat()));
        hashmap.put("cpu.awake", Float.valueOf(datainputstream.readFloat()));
        l = datainputstream.readInt();
        afloat1 = new Float[l];
        int i1 = 0;
_L4:
        if (i1 >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        afloat1[i1] = Float.valueOf(datainputstream.readFloat());
        i1++;
        if (true) goto _L4; else goto _L3
_L3:
        int j1;
        Float afloat2[];
        hashmap.put("cpu.speeds", afloat1);
        j1 = datainputstream.readInt();
        afloat2 = new Float[j1];
_L6:
        if (i >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        afloat2[i] = Float.valueOf(datainputstream.readFloat());
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        hashmap.put("cpu.active", afloat2);
        hashmap.put("battery.capacity", Float.valueOf(datainputstream.readFloat()));
        Exception exception;
        IOException ioexception1;
        try
        {
            datainputstream.close();
            return;
        }
        catch (IOException ioexception3)
        {
            return;
        }
        ioexception1;
        azt.d("LocalPowerProfile", (new StringBuilder()).append("Failed to read the file ").append(s).append(" with exception: ").append(ioexception1.toString()).toString());
        try
        {
            datainputstream.close();
            return;
        }
        catch (IOException ioexception2)
        {
            return;
        }
        exception;
        try
        {
            datainputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    public double getAveragePower(String s)
    {
        if (a.containsKey(s))
        {
            Object obj = a.get(s);
            if (obj instanceof Float[])
            {
                azt.d("LocalPowerProfile", (new StringBuilder()).append("Missing level for key: ").append(s).toString());
                return (double)((Float[])(Float[])obj)[0].floatValue();
            } else
            {
                return (double)((Float)a.get(s)).floatValue();
            }
        } else
        {
            azt.d("LocalPowerProfile", (new StringBuilder()).append("No value for key: ").append(s).toString());
            return 0.0D;
        }
    }

    public double getAveragePower(String s, int i)
    {
        if (a.containsKey(s))
        {
            Object obj = a.get(s);
            if (obj instanceof Float[])
            {
                Float afloat[] = (Float[])(Float[])obj;
                if (afloat.length > i && i >= 0)
                {
                    return (double)afloat[i].floatValue();
                }
                if (i < 0)
                {
                    azt.d("LocalPowerProfile", (new StringBuilder()).append("Incorrect level: ").append(i).append(", key: ").append(s).toString());
                    return 0.0D;
                } else
                {
                    return (double)afloat[-1 + afloat.length].floatValue();
                }
            } else
            {
                azt.d("LocalPowerProfile", (new StringBuilder()).append("No level for key: ").append(s).toString());
                return (double)((Float)obj).floatValue();
            }
        } else
        {
            azt.d("LocalPowerProfile", (new StringBuilder()).append("No value for key: ").append(s).toString());
            return 0.0D;
        }
    }

    public double getBatteryCapacity()
    {
        return a(b);
    }

    public int getNumSpeedSteps()
    {
        Object obj = a.get("cpu.speeds");
        if (obj != null && (obj instanceof Float[]))
        {
            return ((Float[])(Float[])obj).length;
        } else
        {
            return 1;
        }
    }

}
