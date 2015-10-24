// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class aek
{

    private static final String a[] = {
        "_id", "productId", "state", "purchaseTime", "developerPayload"
    };
    private static final String b[] = {
        "_id", "quantity"
    };
    private static aek f;
    private SQLiteDatabase c;
    private ael d;
    private Context e;

    public aek(Context context)
    {
        d = new ael(context);
        c = d.getWritableDatabase();
        e = context;
    }

    public static aek a(Context context)
    {
        aek;
        JVM INSTR monitorenter ;
        aek aek1;
        if (f == null)
        {
            f = new aek(context);
        }
        aek1 = f;
        aek;
        JVM INSTR monitorexit ;
        return aek1;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(String s, int i)
    {
        if (i == 0)
        {
            String as[] = {
                s
            };
            c.delete("purchased", "_id=?", as);
            return;
        } else
        {
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("_id", s);
            contentvalues.put("quantity", Integer.valueOf(i));
            c.replace("purchased", null, contentvalues);
            return;
        }
    }

    static void a(String s, String s1)
    {
    }

    private void a(String s, String s1, String s2, String s3, String s4)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("_id", s);
        contentvalues.put("productId", s1);
        contentvalues.put("state", s2);
        contentvalues.put("purchaseTime", s3);
        contentvalues.put("developerPayload", s4);
        c.replace("history", null, contentvalues);
    }

    static void a(String s, String s1, Throwable throwable)
    {
    }

    private int b(String s, String s1, String s2, String s3, String s4)
    {
        this;
        JVM INSTR monitorenter ;
        Cursor cursor;
        a(s, s1, s2, s3, s4);
        String as[] = {
            s1
        };
        cursor = c.query("history", a, "productId=?", as, null, null, null, null);
        if (cursor != null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        this;
        JVM INSTR monitorexit ;
        return i;
_L2:
        String s5 = aeq.a(e, String.valueOf(aks.a.ordinal()));
        i = 0;
_L4:
        if (!cursor.moveToNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (s5.equals(cursor.getString(2)))
        {
            i++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        a(s1, i);
        cursor.close();
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        cursor.close();
        throw exception1;
    }

    private aks b(String s)
    {
        Cursor cursor1;
        String as[] = new String[1];
        as[0] = aeq.a(e, s);
        cursor1 = c.query("history", a, "productId=?", as, null, null, null, null);
        Cursor cursor;
        cursor = cursor1;
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        aks aks1 = aks.b;
        if (cursor != null)
        {
            cursor.close();
        }
        return aks1;
        String s1 = aeq.a(e, String.valueOf(aks.a.ordinal()));
_L4:
        if (!cursor.moveToNext()) goto _L2; else goto _L1
_L1:
        boolean flag1 = s1.equals(cursor.getString(2));
        if (!flag1) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L10:
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        Exception exception;
        Exception exception1;
        if (flag)
        {
            return aks.a;
        } else
        {
            return aks.b;
        }
        exception1;
        cursor = null;
_L8:
        a("PurchaseDatabase", "dbcrash:", exception1);
        if (cursor != null)
        {
            cursor.close();
            flag = false;
        } else
        {
            flag = false;
        }
          goto _L5
        exception;
        cursor = null;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        exception1;
          goto _L8
_L2:
        flag = false;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public int a(String s, String s1, aks aks1, long l, String s2)
    {
        this;
        JVM INSTR monitorenter ;
        int i = b(aeq.a(e, s), aeq.a(e, s1), aeq.a(e, String.valueOf(aks1.ordinal())), aeq.a(e, String.valueOf(l)), aeq.a(e, s2));
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean a(String s)
    {
        return b(s) == aks.a;
    }

}
