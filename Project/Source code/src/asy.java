// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;

public class asy
{

    private static asy f;
    private Context a;
    private ata b;
    private SQLiteDatabase c;
    private SparseArray d;
    private SparseArray e;

    private asy(Context context)
    {
        d = new SparseArray();
        e = new SparseArray();
        a = context.getApplicationContext();
        b = new ata(a);
        c = b.getWritableDatabase();
    }

    public static asy a(Context context)
    {
        if (f != null) goto _L2; else goto _L1
_L1:
        asy;
        JVM INSTR monitorenter ;
        if (f == null)
        {
            f = new asy(context);
        }
        asy;
        JVM INSTR monitorexit ;
_L2:
        return f;
        Exception exception;
        exception;
        asy;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private atb a(int i)
    {
        atb atb1 = (atb)e.get(i);
        if (atb1 == null)
        {
            atb atb2 = new atb(this, null);
            e.put(i, atb2);
            Cursor cursor = c.query("hw", new String[] {
                "total_app_time", "total_hw_time"
            }, (new StringBuilder()).append("uid=-5 AND hw_type=").append(i).toString(), null, null, null, null);
            cursor.moveToFirst();
            atb2.a = cursor.getLong(0);
            atb2.b = cursor.getLong(1);
            cursor.close();
            atb1 = atb2;
        }
        return atb1;
    }

    private void a(int i, long l, long l1)
    {
        atb atb1 = a(i);
        if (atb1.a > 0x3fffffffffffffffL)
        {
            atb1.a = atb1.a / 2L;
            atb1.b = atb1.b / 2L;
        }
        atb1.a = l + atb1.a;
        atb1.b = l1 + atb1.b;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("total_app_time", Long.valueOf(atb1.a));
        contentvalues.put("total_hw_time", Long.valueOf(atb1.b));
        c.update("hw", contentvalues, (new StringBuilder()).append("uid=-5 AND hw_type=").append(i).toString(), null);
    }

    public double a(SparseArray sparsearray, int i)
    {
        atb atb1 = a(i);
        double d1 = 0.0D;
        if (atb1.a > 0L)
        {
            d1 = (((Double)sparsearray.get(i)).doubleValue() * (double)atb1.b) / (double)atb1.a;
        }
        return d1;
    }

    public double a(SparseArray sparsearray, int i, String s)
    {
        Cursor cursor = c.query("hw", new String[] {
            "hw_type", "total_app_time", "total_hw_time"
        }, (new StringBuilder()).append("uid=").append(i).toString(), null, null, null, null);
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        double d2 = 0.0D;
_L5:
        double d1;
        int j = cursor.getInt(0);
        long l = cursor.getLong(1);
        long l1 = cursor.getLong(2);
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        double d3 = (((Double)sparsearray.get(j)).doubleValue() * (double)l1) / (double)l;
        if (j == 1)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        d1 = d2 + d3;
_L6:
        if (cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        cursor.close();
        return d1;
_L2:
        d1 = -1D;
        if (true) goto _L3; else goto _L4
_L4:
        d2 = d1;
          goto _L5
        d1 = d2;
          goto _L6
    }

    public boolean a(int i, String s, int j, long l, long l1)
    {
        if (l1 > l || l1 <= 0L)
        {
            azt.c("AppStatsMgr", (new StringBuilder()).append("Bad data discarded, uid: ").append(i).append(", pkg: ").append(s).append(", appTime: ").append(l).append(", hwTime: ").append(l1).toString());
            return false;
        }
        Cursor cursor = c.query("hw", new String[] {
            "total_app_time", "total_hw_time"
        }, (new StringBuilder()).append("uid=").append(i).append(" AND ").append("hw_type").append("=").append(j).toString(), null, null, null, null);
        long l2;
        long l3;
        boolean flag;
        if (cursor.moveToFirst())
        {
            long l4 = l + cursor.getLong(0);
            long l5 = l1 + cursor.getLong(1);
            double d1;
            SparseArray sparsearray;
            ContentValues contentvalues;
            Exception exception;
            if (l4 > 0x3fffffffffffffffL)
            {
                long l6 = l4 / 2L;
                long l7 = l5 / 2L;
                flag = true;
                l3 = l6;
                l2 = l7;
            } else
            {
                flag = true;
                l3 = l4;
                l2 = l5;
            }
        } else
        {
            l2 = l1;
            l3 = l;
            flag = false;
        }
        cursor.close();
        d1 = l2 / l3;
        sparsearray = (SparseArray)d.get(i);
        if (sparsearray == null)
        {
            sparsearray = new SparseArray();
            d.put(i, sparsearray);
        }
        sparsearray.put(j, Double.valueOf(d1));
        contentvalues = new ContentValues();
        contentvalues.put("total_app_time", Long.valueOf(l3));
        contentvalues.put("total_hw_time", Long.valueOf(l2));
        if (!flag) goto _L2; else goto _L1
_L1:
        c.update("hw", contentvalues, (new StringBuilder()).append("uid=").append(i).append(" AND ").append("hw_type").append("=").append(j).toString(), null);
_L3:
        a(j, l, l1);
        return true;
_L2:
        try
        {
            contentvalues.put("hw_type", Integer.valueOf(j));
            contentvalues.put("uid", Integer.valueOf(i));
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            azt.c("AppStatsMgr", (new StringBuilder()).append("db error: ").append(exception.toString()).toString());
            return false;
        }
        if (i == 0)
        {
            s = "system";
        }
        contentvalues.put("pkg_name", s);
        c.insert("hw", null, contentvalues);
          goto _L3
    }
}
