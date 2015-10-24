// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class jj
{

    protected static final Set a;
    private static jj b;
    private sb c;
    private Context d;

    private jj(Context context)
    {
        c = null;
        d = context.getApplicationContext();
        c = sb.a(d);
        c.a();
    }

    protected static jj a(Context context, jy jy)
    {
        jj;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new jj(context.getApplicationContext());
        }
        jj;
        JVM INSTR monitorexit ;
        return b;
        Exception exception;
        exception;
        jj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static sb a(jj jj1)
    {
        return jj1.c;
    }

    private static String b(String s, Map map)
    {
        if (!a.contains(s))
        {
            break MISSING_BLOCK_LABEL_134;
        }
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("k", s);
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        try
        {
            if (!map.isEmpty())
            {
                java.util.Map.Entry entry;
                for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); jsonobject.put((String)entry.getKey(), entry.getValue()))
                {
                    entry = (java.util.Map.Entry)iterator.next();
                }

            }
            break MISSING_BLOCK_LABEL_136;
        }
        catch (JSONException jsonexception)
        {
            if (it.a)
            {
                Log.e("EventReporter", (new StringBuilder()).append("Failed to put to json of ").append(s).toString(), jsonexception);
            }
        }
        return null;
        String s1 = jsonobject.toString();
        return s1;
    }

    protected void a(String s)
    {
        a(s, ((Map) (null)));
    }

    protected void a(String s, Map map)
    {
        String s1 = b(s, map);
        if (it.a)
        {
            Log.e("EventReporter", (new StringBuilder()).append("reportEvent:event =  ").append(s).append(", json=").append(s1).toString());
        }
        if (s1 != null)
        {
            uf.a(new jk(this, s1));
        }
    }

    static 
    {
        a = new HashSet();
        a.add("nf");
        a.add("dl-stu");
        a.add("dl-sta");
        a.add("dl-ck");
        a.add("fail");
        a.add("ig");
        a.add("ins");
        a.add("sli");
        a.add("ml");
        a.add("cm");
        a.add("sdl");
        a.add("sdl-u");
        a.add("up");
    }
}
