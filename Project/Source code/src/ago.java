// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

public class ago
    implements adc
{

    private static volatile ago a;
    private Context b;
    private agl c;
    private agm d;
    private b e;

    public ago(Context context, b b1)
    {
        b = context;
        c = agl.a(b);
        d = agm.a(b);
        e = b1;
    }

    public static ago a(Context context)
    {
        ago ago1 = new ago(context, new c());
        a = ago1;
        return ago1;
    }

    private boolean a(JSONObject jsonobject)
    {
        String s;
        s = c.a();
        if ("".equals(s))
        {
            return true;
        }
        JSONObject jsonobject1 = new JSONObject(s);
        if (((JSONObject)jsonobject.get("total")).getLong("period") > ((JSONObject)jsonobject1.get("total")).getLong("period"))
        {
            return true;
        }
        int i;
        int j;
        i = jsonobject.length();
        j = jsonobject1.length();
        if (i > j)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_90;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
_L2:
        return false;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(add add)
    {
    }

    public void a(atr atr1)
    {
        JSONObject jsonobject;
        if (!c.b())
        {
            if (a(jsonobject = atr1.e.a()))
            {
                c.b(jsonobject.toString());
                return;
            }
        }
    }
}
