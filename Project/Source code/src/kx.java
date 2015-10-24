// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class kx
    implements kw
{

    public static long c = 60L;
    public static long d = 600L;
    private static final String e = kx.getName();
    private static final String f[] = {
        "value", "lastModified", "visitCount"
    };
    private static kx g = null;
    private Context h;
    private int i;
    private ScheduledThreadPoolExecutor j;

    private kx(Context context)
    {
        this(context, null);
    }

    private kx(Context context, ScheduledThreadPoolExecutor scheduledthreadpoolexecutor)
    {
        i = 3000;
        h = context;
        if (scheduledthreadpoolexecutor != null)
        {
            j = scheduledthreadpoolexecutor;
        } else
        {
            j = new ScheduledThreadPoolExecutor(1);
        }
        j.scheduleAtFixedRate(new ky(this), c, d, TimeUnit.SECONDS);
    }

    private int a(Context context, String s, int k)
    {
        String as[] = {
            s
        };
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("visitCount", Integer.valueOf(k));
        return lp.a(context).a(ln.a, contentvalues, "key=?", as);
    }

    static Context a(kx kx1)
    {
        return kx1.h;
    }

    static String a()
    {
        return e;
    }

    private Map a(Context context, String s)
    {
        Cursor cursor = null;
        Cursor cursor2;
        String as[] = {
            s
        };
        cursor2 = lp.a(context).a(ln.a, f, "key=?", as, null);
        Cursor cursor1 = cursor2;
        if (cursor1 == null) goto _L2; else goto _L1
_L1:
        if (!cursor1.moveToFirst()) goto _L2; else goto _L3
_L3:
        HashMap hashmap1 = new HashMap();
        hashmap1.put("value", cursor1.getString(0));
        hashmap1.put("lastModified", Long.valueOf(cursor1.getLong(1)));
        hashmap1.put("visitCount", Integer.valueOf(cursor1.getInt(2)));
        HashMap hashmap = hashmap1;
_L10:
        if (cursor1 != null)
        {
            cursor1.close();
        }
_L5:
        return hashmap;
        Exception exception1;
        exception1;
        Exception exception2;
        exception2 = exception1;
        hashmap = null;
_L8:
        la.b(e, "failed to query record", exception2);
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return hashmap;
        Exception exception;
        exception;
        cursor1 = null;
_L7:
        if (cursor1 != null)
        {
            cursor1.close();
        }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor1 = cursor;
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception3;
        exception3;
        exception2 = exception3;
        cursor = cursor1;
        hashmap = null;
          goto _L8
        Exception exception4;
        exception4;
        cursor = cursor1;
        exception2 = exception4;
        hashmap = hashmap1;
          goto _L8
_L2:
        hashmap = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static kx a(Context context)
    {
        kx;
        JVM INSTR monitorenter ;
        kx kx1;
        if (g == null)
        {
            g = new kx(context);
        }
        kx1 = g;
        kx;
        JVM INSTR monitorexit ;
        return kx1;
        Exception exception;
        exception;
        throw exception;
    }

    static int b(kx kx1)
    {
        return kx1.i;
    }

    public kv a(String s)
    {
        Map map = a(h, s);
        kv kv1 = null;
        if (map != null)
        {
            Log.v(e, (new StringBuilder("hit cache:")).append(map).toString());
            kv kv2 = new kv();
            kv2.c = ((Integer)map.get("visitCount")).intValue();
            a(h, s, 1 + kv2.c);
            kv2.a = (String)map.get("value");
            kv2.b = ((Long)map.get("lastModified")).longValue();
            kv1 = kv2;
        }
        return kv1;
    }

    public boolean a(String s, kv kv1)
    {
        boolean flag = true;
        if (kv1 != null && !TextUtils.isEmpty(kv1.a)) goto _L2; else goto _L1
_L1:
        la.a(e, (new StringBuilder("empty newEntry:")).append(kv1).toString());
        flag = false;
_L4:
        return flag;
_L2:
        String as[];
        ContentValues contentvalues;
        as = new String[flag];
        as[0] = s;
        Map map = a(h, s);
        contentvalues = new ContentValues();
        contentvalues.put("lastModified", Long.valueOf(kv1.b));
        contentvalues.put("value", kv1.a);
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        contentvalues.put("key", s);
        contentvalues.put("visitCount", "1");
        if (lp.a(h).a(ln.a, contentvalues) != null) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_181;
        int k = lp.a(h).a(ln.a, contentvalues, "key=?", as);
        if (k > 0)
        {
            return flag;
        }
        break MISSING_BLOCK_LABEL_181;
        Exception exception;
        exception;
        la.b(e, "failed to insert or update record", exception);
        return false;
    }

}
