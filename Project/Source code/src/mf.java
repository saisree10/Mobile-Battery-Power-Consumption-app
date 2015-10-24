// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.dianxinos.common.coins.CoinManager;
import java.util.Iterator;
import java.util.List;

public class mf
{

    private static mf a;
    private SQLiteDatabase b;
    private Context c;

    private mf(Context context)
    {
        c = context;
        b = (new mg(context)).getWritableDatabase();
    }

    public static mf a(Context context)
    {
        mf;
        JVM INSTR monitorenter ;
        mf mf1;
        if (a == null)
        {
            a = new mf(context.getApplicationContext());
        }
        mf1 = a;
        mf;
        JVM INSTR monitorexit ;
        return mf1;
        Exception exception;
        exception;
        throw exception;
    }

    public int a(String s)
    {
        return c(s, "10");
    }

    public void a(String s, int i)
    {
        a(s, "10", i);
    }

    public void a(String s, String s1, int i)
    {
        if (i <= 0)
        {
            nz.b("IntegralRecordManager", "Set to price <=0?");
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("mid", s);
        contentvalues.put("type", s1);
        contentvalues.put("value", Integer.valueOf(i));
        contentvalues.put("time", Long.valueOf(System.currentTimeMillis()));
        if (c(s, s1) == -1)
        {
            b.insert("items", null, contentvalues);
            return;
        } else
        {
            String as[] = {
                s, s1
            };
            b.update("items", contentvalues, "mid=? AND type=?", as);
            return;
        }
    }

    public void a(List list)
    {
        String as[];
        if (list == null || list.size() == 0)
        {
            return;
        }
        as = new String[2];
        as[0] = "9";
        b.beginTransaction();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); b.delete("record", "type=? AND _id=?", as))
        {
            as[1] = (String)iterator.next();
        }

        break MISSING_BLOCK_LABEL_88;
        Exception exception;
        exception;
        b.endTransaction();
        throw exception;
        b.setTransactionSuccessful();
        b.endTransaction();
        return;
    }

    public boolean a(String s, String s1)
    {
        String as[] = {
            "_id"
        };
        String as1[] = {
            s, s1, CoinManager.a(c).b()
        };
        Cursor cursor = b.query("record", as, "mid=? AND type=? AND ac=?", as1, null, null, null);
        boolean flag;
        if (cursor.getCount() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        cursor.close();
        return flag;
    }

    public void b(String s, String s1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("mid", s);
        contentvalues.put("type", s1);
        contentvalues.put("time", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("ac", CoinManager.a(c).b());
        b.insert("record", null, contentvalues);
    }

    public int c(String s, String s1)
    {
        String as[] = {
            "_id", "value"
        };
        String as1[] = {
            s, s1
        };
        Cursor cursor = b.query("items", as, "mid=? AND type=?", as1, null, null, null);
        int i = -1;
        if (cursor.moveToFirst())
        {
            i = cursor.getInt(1);
        }
        cursor.close();
        return i;
    }
}
