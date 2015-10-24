// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Hashtable;

public class acm
    implements adc
{

    public static final ArrayList a = new ArrayList();
    private static int b = 300;
    private static SharedPreferences c;
    private static SQLiteDatabase e;
    private static Hashtable f = new Hashtable();
    private static Hashtable g = new Hashtable();
    private static Hashtable h = new Hashtable();
    private static Hashtable i = new Hashtable();
    private long d;
    private Hashtable j;
    private Hashtable k;
    private boolean l;
    private boolean m;
    private int n;
    private long o;
    private int p;
    private boolean q;

    private int a(int i1, int j1)
    {
        Cursor cursor1 = e.query(b(j1), null, (new StringBuilder()).append("from_level=").append(i1).toString(), null, null, null, null);
        Cursor cursor = cursor1;
        int k1;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_84;
        }
        k1 = cursor.getInt(cursor.getColumnIndex("time_average"));
        if (cursor != null)
        {
            cursor.close();
        }
        return k1;
        if (cursor != null)
        {
            cursor.close();
        }
        return -1;
        Exception exception;
        exception;
        cursor = null;
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private int a(String s, int i1)
    {
        Cursor cursor1 = e.query(s, null, (new StringBuilder()).append("from_level=").append(i1).toString(), null, null, null, null);
        Cursor cursor = cursor1;
        int j1;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_80;
        }
        j1 = cursor.getInt(cursor.getColumnIndex("time_average"));
        if (cursor != null)
        {
            cursor.close();
        }
        return j1;
        if (cursor != null)
        {
            cursor.close();
        }
        return -1;
        Exception exception;
        exception;
        cursor = null;
_L2:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static acm a(Context context)
    {
        return null;
    }

    private void a()
    {
        d = System.currentTimeMillis();
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putLong("lsdt", d);
        gm.a(editor);
    }

    private void a(int i1)
    {
        d = System.currentTimeMillis();
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putInt("fth", i1);
        gm.a(editor);
    }

    private void a(int i1, int j1, int k1)
    {
        this;
        JVM INSTR monitorenter ;
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("from_level", Integer.valueOf(j1));
        contentvalues.put("time_average", Integer.valueOf(k1));
        if (a(j1, i1) != -1) goto _L2; else goto _L1
_L1:
        e.insert(b(i1), null, contentvalues);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        e.update(b(i1), contentvalues, (new StringBuilder()).append("from_level=").append(j1).toString(), null);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private int b(int i1, int j1)
    {
        byte byte0 = -1;
        if (j1 == 2)
        {
            Integer integer1 = (Integer)f.get(Integer.valueOf(i1));
            int k1;
            if (integer1 == null)
            {
                k1 = byte0;
            } else
            {
                k1 = integer1.intValue();
            }
            byte0 = k1;
        } else
        if (j1 == 1)
        {
            Integer integer = (Integer)g.get(Integer.valueOf(i1));
            if (integer != null)
            {
                return integer.intValue();
            }
        }
        return byte0;
    }

    private String b(int i1)
    {
        if (2 == i1)
        {
            return "usbccharging";
        }
        if (1 == i1)
        {
            return "accharging";
        } else
        {
            return null;
        }
    }

    private void b()
    {
        d = System.currentTimeMillis();
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("cupl", true);
        gm.a(editor);
    }

    private void b(int i1, int j1, int k1)
    {
        int l1 = b(i1, k1);
        if (l1 != -1)
        {
            j1 = c(l1, j1);
        }
        if (k1 != 2) goto _L2; else goto _L1
_L1:
        f.put(Integer.valueOf(i1), Integer.valueOf(j1));
_L4:
        c(k1, i1, j1);
        return;
_L2:
        if (k1 == 1)
        {
            g.put(Integer.valueOf(i1), Integer.valueOf(j1));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private int c(int i1, int j1)
    {
        return (i1 * 5 + j1 * 2) / 7;
    }

    private void c()
    {
        d = System.currentTimeMillis();
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putBoolean("capl", true);
        gm.a(editor);
    }

    private static void c(int i1)
    {
        if (2 != i1) goto _L2; else goto _L1
_L1:
        Hashtable hashtable2;
        Hashtable hashtable3;
        Hashtable hashtable4 = f;
        Hashtable hashtable5 = h;
        hashtable2 = hashtable4;
        hashtable3 = hashtable5;
_L8:
        int j1;
        int k1;
        int l1;
        int i2;
        j1 = 0;
        k1 = 100;
        l1 = 100;
        i2 = -1;
_L9:
        if (k1 < 0) goto _L4; else goto _L3
_L3:
        int j2;
        Integer integer = (Integer)hashtable2.get(Integer.valueOf(k1));
        Hashtable hashtable;
        Hashtable hashtable1;
        if (integer == null)
        {
            j2 = -1;
        } else
        {
            j2 = integer.intValue();
        }
        if (j2 != -1) goto _L6; else goto _L5
_L5:
        if (k1 != 0)
        {
            break MISSING_BLOCK_LABEL_216;
        }
_L4:
        return;
_L2:
        if (1 != i1) goto _L4; else goto _L7
_L7:
        hashtable = g;
        hashtable1 = i;
        hashtable2 = hashtable;
        hashtable3 = hashtable1;
          goto _L8
_L6:
        int k2;
        if (k1 < l1)
        {
            int l2;
            if (i2 != -1)
            {
                l2 = (i2 + j2) / 2;
            } else
            {
                l2 = j2;
            }
            for (; l1 > k1 + 1; l1--)
            {
                j1 += l2;
                hashtable3.put(Integer.valueOf(l1), Integer.valueOf(j1));
            }

        }
        j1 = j2 + j1;
        hashtable3.put(Integer.valueOf(k1), Integer.valueOf(j1));
        k2 = k1 - 1;
_L10:
        k1--;
        i2 = j2;
        l1 = k2;
          goto _L9
        k2 = l1;
        j2 = i2;
          goto _L10
    }

    private void c(int i1, int j1, int k1)
    {
        if (2 != i1) goto _L2; else goto _L1
_L1:
        j.put(Integer.valueOf(j1), Integer.valueOf(k1));
_L4:
        if (System.currentTimeMillis() - d > 60000L)
        {
            a();
            d();
            a(b);
        }
        return;
_L2:
        if (1 == i1)
        {
            k.put(Integer.valueOf(j1), Integer.valueOf(k1));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void d()
    {
        int i1 = 0;
        while (i1 <= 100) 
        {
            Integer integer = (Integer)j.get(Integer.valueOf(i1));
            int j1;
            Integer integer1;
            int k1;
            if (integer == null)
            {
                j1 = -1;
            } else
            {
                j1 = integer.intValue();
            }
            if (j1 != -1)
            {
                l = true;
                a(2, i1, j1);
            }
            integer1 = (Integer)k.get(Integer.valueOf(i1));
            if (integer1 == null)
            {
                k1 = -1;
            } else
            {
                k1 = integer1.intValue();
            }
            if (k1 != -1)
            {
                m = true;
                a(1, i1, k1);
            }
            i1++;
        }
        j.clear();
        k.clear();
    }

    private void d(int i1)
    {
        c(i1);
        e(i1);
    }

    private void d(int i1, int j1, int k1)
    {
        if (l)
        {
            l = false;
            d(2);
        }
        if (m)
        {
            m = false;
            d(1);
        }
    }

    private void e(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (2 != i1) goto _L2; else goto _L1
_L1:
        Hashtable hashtable2;
        hashtable2 = h;
        b();
        Hashtable hashtable1;
        String s;
        hashtable1 = hashtable2;
        s = "usbpredict";
          goto _L3
_L14:
        int j1;
        if (j1 > 100) goto _L5; else goto _L4
_L4:
        Integer integer = (Integer)hashtable1.get(Integer.valueOf(j1));
        if (integer != null) goto _L7; else goto _L6
_L6:
        int k1;
        int l1 = k1 + b;
_L12:
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("from_level", Integer.valueOf(j1));
        contentvalues.put("time_average", Integer.valueOf(l1));
        if (a(s, j1) != -1) goto _L9; else goto _L8
_L8:
        e.insert(s, null, contentvalues);
          goto _L10
_L2:
        if (1 != i1) goto _L5; else goto _L11
_L11:
        Hashtable hashtable;
        hashtable = i;
        c();
        hashtable1 = hashtable;
        s = "acpredict";
          goto _L3
_L7:
        l1 = integer.intValue();
          goto _L12
_L9:
        e.update(s, contentvalues, (new StringBuilder()).append("from_level=").append(j1).toString(), null);
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        j1 = 0;
        k1 = 0;
        continue; /* Loop/switch isn't completed */
_L10:
        j1++;
        k1 = l1;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public void a(add add1)
    {
        a(add1, System.currentTimeMillis());
    }

    public void a(add add1, long l1)
    {
        int i1 = 0;
        if (add1.a != 2) goto _L2; else goto _L1
_L1:
        if (o != -1L) goto _L4; else goto _L3
_L3:
        n = add1.j;
        o = l1;
        p = add1.e;
_L6:
        return;
_L4:
        if (add1.j > n && l1 > o && add1.e == p)
        {
            int k1 = add1.j - n;
            int i2 = (int)(l1 - o) / k1 / 1000;
            b = c(b, i2);
            for (; i1 < k1; i1++)
            {
                b(i1 + n, i2, add1.e);
            }

            n = add1.j;
            o = l1;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (add1.a == 5)
        {
            if (!q && o != -1L)
            {
                q = true;
                int j1 = (int)(l1 - o) / 1000;
                b(100, j1, add1.e);
                d(100, j1, add1.e);
                return;
            }
        } else
        {
            n = 0;
            o = -1L;
            p = 0;
            q = false;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

}
