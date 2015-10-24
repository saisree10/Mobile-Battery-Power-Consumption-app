// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aof extends aoq
{

    private static aof d;
    private static Context e;
    private final String a = "DiagnosticADSwitch";
    private final boolean c = false;
    private final String f = "dashiswitches";
    private final String g = "switch";
    private final String h = "smartad";
    private final String i = "dashi";

    private aof(Context context)
    {
        e = context;
    }

    public static aof a(Context context)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        aof;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new aof(context);
        }
        aof;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        aof;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void b(String s)
    {
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = aog.d(e, 0L);
        l1 = System.currentTimeMillis();
        if (l1 - l > 0x5265c00L) goto _L2; else goto _L1
_L1:
        b("Repeate pull in one day!");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int j = azx.a(e);
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        b("Network not avaliable!");
          goto _L3
        Exception exception;
        exception;
        throw exception;
        aje aje1 = aje.a(e);
        String s = null;
        JSONObject jsonobject;
        s = azs.a(e, b, a(e, j, "dashiswitches"));
        jsonobject = new JSONObject(s);
        if (azk.a(jsonobject))
        {
            break MISSING_BLOCK_LABEL_169;
        }
        azt.c("DiagnosticADSwitch", (new StringBuilder()).append("bad response: ").append(s).toString());
        if (azk.b(jsonobject))
        {
            b("404 error");
            aje1.d();
        }
        aog.e(e, l1);
          goto _L3
        JSONObject jsonobject1 = jsonobject.getJSONObject("response").getJSONArray("datas").getJSONObject(0).getJSONObject("switch");
        aje1.a(jsonobject1.getBoolean("smartad"));
        aje1.b(jsonobject1.getBoolean("dashi"));
        aog.e(e, l1);
          goto _L3
        IOException ioexception;
        ioexception;
        azt.c("DiagnosticADSwitch", (new StringBuilder()).append("Unexpected excetpion: ").append(ioexception).toString());
        aog.e(e, l1);
          goto _L3
        JSONException jsonexception;
        jsonexception;
        azt.c("DiagnosticADSwitch", (new StringBuilder()).append("Bad response: ").append(s).toString());
        aog.e(e, l1);
          goto _L3
        IllegalStateException illegalstateexception;
        illegalstateexception;
        azt.c("DiagnosticADSwitch", (new StringBuilder()).append(" IllegalStateException ").append(illegalstateexception).toString());
        aog.e(e, l1);
          goto _L3
        Exception exception1;
        exception1;
        aog.e(e, l1);
        throw exception1;
    }
}
