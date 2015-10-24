// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

public class nl extends ng
{

    private static nl a;
    private boolean b;
    private boolean c;
    private boolean d;

    protected nl(Context context)
    {
        super(context, "dxtoolbox_switches");
        b = false;
        c = false;
        d = true;
        b(a());
    }

    public static nl a(Context context)
    {
        nl;
        JVM INSTR monitorenter ;
        nl nl1;
        if (a == null)
        {
            a = new nl(context.getApplicationContext());
        }
        nl1 = a;
        nl;
        JVM INSTR monitorexit ;
        return nl1;
        Exception exception;
        exception;
        throw exception;
    }

    protected void b(String s)
    {
        if (s == null || s.length() == 0 || s.trim().length() == 0)
        {
            return;
        }
        try
        {
            JSONObject jsonobject = c(s).getJSONObject("switch");
            b = jsonobject.optBoolean("tctb", false);
            c = jsonobject.optBoolean("tapjoy", false);
            d = jsonobject.optBoolean("baidu", false);
            return;
        }
        catch (JSONException jsonexception)
        {
            nz.a("", "failed decode: ", jsonexception);
        }
    }

    protected void d()
    {
        b = false;
        c = false;
    }

    public boolean f()
    {
        return b;
    }

    public boolean g()
    {
        return c;
    }

    public boolean h()
    {
        return d;
    }
}
