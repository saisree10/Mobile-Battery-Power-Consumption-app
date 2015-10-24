// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;

final class tp
{

    private final Context a;
    private final tr b;
    private final tq c;

    public tp(Context context)
    {
        a = context;
        b = new tr(a);
        c = new tq(this, a);
    }

    private void a(JSONArray jsonarray, JSONArray jsonarray1)
    {
        for (int i = 0; i < jsonarray1.length(); i++)
        {
            jsonarray.put(jsonarray1.get(i));
        }

    }

    private boolean b()
    {
        if (!ud.a(a)) goto _L2; else goto _L1
_L1:
        String as[];
        int i;
        HashMap hashmap;
        int j;
        int k;
        String s;
        as = (new String[] {
            "d", "i", "r", "o"
        });
        i = 1000;
        hashmap = new HashMap();
        j = as.length;
        k = 0;
        s = null;
_L8:
        if (k >= j) goto _L4; else goto _L3
_L3:
        String s2 = as[k];
        if (i > 0) goto _L5; else goto _L4
_L4:
        String s4;
        int l;
        String s3;
        th th2;
        Exception exception1;
        ti ti2;
        if (hashmap.size() == 0)
        {
            if (ud.b)
            {
                Log.d("stat.EventReporter", "There is no data to upload!");
            }
            return true;
        }
        jsonarray = new JSONArray();
        Iterator iterator = hashmap.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ti ti1 = (ti)hashmap.get((String)iterator.next());
            try
            {
                a(jsonarray, ti1.a());
            }
            catch (JSONException jsonexception)
            {
                if (ud.d)
                {
                    Log.e("stat.EventReporter", "Failed to add dumpResult!", jsonexception);
                }
            }
        } while (true);
          goto _L6
_L5:
        s3 = a.getSharedPreferences(s2, 0).getString("pk", null);
        if (s3 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        s4 = s;
_L10:
        k++;
        s = s4;
        if (true) goto _L8; else goto _L7
_L7:
        JSONArray jsonarray;
        Iterator iterator1;
        String s1;
        th th1;
        Exception exception;
        if (s == null)
        {
            s4 = s3;
        } else
        {
            s4 = s;
        }
        th2 = b.a(s2);
        if (th2.c()) goto _L10; else goto _L9
_L9:
        th2.a();
        ti2 = th2.b(i);
        if (ti2 == null)
        {
            break MISSING_BLOCK_LABEL_474;
        }
        if (ti2.a().length() <= 0 || !s4.equals(s3))
        {
            break MISSING_BLOCK_LABEL_474;
        }
        l = i - ti2.a().length();
        hashmap.put(s2, ti2);
_L15:
        th2.b();
        i = l;
          goto _L10
        exception1;
        th2.b();
        throw exception1;
_L6:
        if (!c.a(s, jsonarray.toString())) goto _L12; else goto _L11
_L11:
        iterator1 = hashmap.keySet().iterator();
_L14:
        if (!iterator1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = (String)iterator1.next();
        th1 = b.a(s1);
        th1.a();
        th1.a(((ti)hashmap.get(s1)).b());
        th1.b();
        if (true) goto _L14; else goto _L13
        exception;
        th1.b();
        throw exception;
_L13:
        tn.b(a);
        return true;
_L2:
        if (ud.c)
        {
            Log.i("stat.EventReporter", "Network is unavilable!");
        }
_L12:
        return false;
        l = i;
          goto _L15
    }

    public boolean a()
    {
        boolean flag = tn.a(a);
        boolean flag1 = false;
        if (flag)
        {
            flag1 = b();
        }
        return flag1;
    }
}
