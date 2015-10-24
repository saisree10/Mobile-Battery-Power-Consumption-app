// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.util.Date;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONObject;

final class th extends SQLiteOpenHelper
{

    private static final String a[] = {
        "rowId", "a", "b", "c", "d", "f", "g", "h", "j"
    };
    private final Context b;
    private final String c;
    private final String d;
    private final ReentrantLock e = new ReentrantLock();

    public th(Context context, String s)
    {
        super(context, s, null, 6);
        b = context;
        d = s;
        c = (new StringBuilder()).append("CREATE TABLE ").append(s).append(" (").append("a").append(" TEXT, ").append("b").append(" INTEGER, ").append("c").append(" INTEGER, ").append("d").append(" TEXT, ").append("e").append(" INTEGER, ").append("f").append(" INTEGER, ").append("g").append(" INTEGER, ").append("h").append(" TEXT, ").append("i").append(" INTEGER,").append("j").append(" INTEGER);").toString();
    }

    private int a(SQLiteDatabase sqlitedatabase)
    {
        int i;
        try
        {
            FileInputStream fileinputstream = new FileInputStream(new File(sqlitedatabase.getPath()));
            i = fileinputstream.available();
            fileinputstream.close();
        }
        catch (Exception exception)
        {
            return 0;
        }
        return i;
    }

    private ti a(String s, String as[], String s1)
    {
        Cursor cursor1 = getReadableDatabase().query(d, a, s, as, null, null, "rowId ASC", s1);
        Cursor cursor = cursor1;
        JSONArray jsonarray = new JSONArray();
        long l = 0L;
        int i = cursor.getCount();
        int j = 0;
        if (i <= 0) goto _L2; else goto _L1
_L1:
        cursor.moveToFirst();
_L5:
        long l1 = cursor.getLong(0);
        l = l1;
        JSONObject jsonobject;
        String s2;
        int k;
        int i1;
        String s3;
        long l2;
        jsonobject = new JSONObject();
        s2 = cursor.getString(1);
        k = cursor.getInt(2);
        i1 = cursor.getInt(3);
        s3 = cursor.getString(4);
        l2 = cursor.getLong(5);
        if (!cursor.isNull(6)) goto _L4; else goto _L3
_L3:
        Long long1 = null;
_L8:
        String s4;
        s4 = cursor.getString(7);
        jsonobject.put("a", s2);
        jsonobject.put("b", k);
        jsonobject.put("c", i1);
        jsonobject.put("f", l2);
        if (long1 == null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        jsonobject.put("g", long1);
        jsonobject.put("d", s3);
        jsonobject.put("h", s4);
        jsonarray.put(jsonobject);
        j++;
_L9:
        if (cursor.moveToNext()) goto _L5; else goto _L2
_L2:
        if (ud.c)
        {
            Log.i("stat.EventDatabase", (new StringBuilder()).append("There are ").append(j).append(" records are dumped out from ").append(d).append(" and the largest row id is ").append(l).append(".").toString());
        }
        if (j != 0) goto _L7; else goto _L6
_L6:
        ti ti1;
        ti1 = null;
        if (cursor != null)
        {
            cursor.close();
        }
_L11:
        return ti1;
_L4:
        Long long2 = Long.valueOf(cursor.getLong(6));
        long1 = long2;
          goto _L8
        Exception exception2;
        exception2;
        a(Long.valueOf(l));
          goto _L9
        Exception exception;
        exception;
_L14:
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to query the db.", exception);
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return null;
_L7:
        ti1 = new ti(this, jsonarray, l);
        if (cursor == null) goto _L11; else goto _L10
_L10:
        cursor.close();
        return ti1;
        Exception exception1;
        exception1;
        cursor = null;
_L13:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception1;
        exception1;
        if (true) goto _L13; else goto _L12
_L12:
        exception;
        cursor = null;
          goto _L14
    }

    private void a(Long long1)
    {
        if (long1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        SQLiteDatabase sqlitedatabase;
        if (ud.c)
        {
            Log.i("stat.EventDatabase", (new StringBuilder()).append("The record with rowId = ").append(long1).append(" will be deleted from ").append(d).toString());
        }
        sqlitedatabase = null;
        sqlitedatabase = getWritableDatabase();
        String s = d;
        String as[] = new String[1];
        as[0] = String.valueOf(long1);
        sqlitedatabase.delete(s, "rowId=?", as);
        if (sqlitedatabase != null)
        {
            try
            {
                sqlitedatabase.close();
                return;
            }
            catch (Exception exception4)
            {
                if (ud.d)
                {
                    Log.e("stat.EventDatabase", "Failed to close the db!", exception4);
                    return;
                }
            }
        }
          goto _L1
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to delete by row id from ").append(d).toString(), exception2);
        }
        if (sqlitedatabase == null) goto _L1; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L1; else goto _L4
_L4:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void a(String s, String as[])
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = getWritableDatabase();
        int i = sqlitedatabase.delete(d, s, as);
        if (ud.c)
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = s;
            aobj[2] = d;
            Log.i("stat.EventDatabase", String.format("Delete %d rows by whereClause: %s  from %s", aobj));
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception4);
        return;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to clear db!", exception2);
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception3;
        exception3;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception3);
        return;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private Long d()
    {
        Cursor cursor1 = getReadableDatabase().query(d, new String[] {
            "rowId"
        }, null, null, null, null, null, "1");
        Cursor cursor = cursor1;
        if (cursor.getCount() <= 0) goto _L2; else goto _L1
_L1:
        Long long2;
        cursor.moveToFirst();
        long2 = Long.valueOf(cursor.getLong(0));
        Long long1 = long2;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        return long1;
        Exception exception1;
        exception1;
        cursor = null;
_L5:
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to query the db ").append(d).toString(), exception1);
        }
        Exception exception;
        if (cursor != null)
        {
            cursor.close();
            return null;
        } else
        {
            return null;
        }
        exception;
        cursor = null;
_L4:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
        if (true) goto _L5; else goto _L2
_L2:
        long1 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void e()
    {
        long l = tn.a(System.currentTimeMillis() - 0x48190800L);
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        a("f < ?", as);
    }

    public String a(String s, Date date, String s1)
    {
        long l = tn.b(date.getTime());
        Cursor cursor1;
        SQLiteDatabase sqlitedatabase = getReadableDatabase();
        String s2 = d;
        String as[] = {
            "d"
        };
        String as1[] = new String[3];
        as1[0] = s;
        as1[1] = String.valueOf(l);
        as1[2] = s1;
        cursor1 = sqlitedatabase.query(s2, as, "a=? and e=? and h=?", as1, null, null, null);
        Cursor cursor = cursor1;
        if (cursor.getCount() <= 0) goto _L2; else goto _L1
_L1:
        String s4;
        cursor.moveToFirst();
        s4 = cursor.getString(0);
        String s3 = s4;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        return s3;
        Exception exception1;
        exception1;
        cursor = null;
_L5:
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to get from db ").append(d).toString(), exception1);
        }
        Exception exception;
        if (cursor != null)
        {
            cursor.close();
            return null;
        } else
        {
            return null;
        }
        exception;
        cursor = null;
_L4:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
        if (true) goto _L5; else goto _L2
_L2:
        s3 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a()
    {
        e.lock();
    }

    public void a(int i)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        String s = d;
        String as[] = new String[1];
        as[0] = String.valueOf(i);
        sqlitedatabase.delete(s, "i=?", as);
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        sqlitedatabase.close();
_L2:
        return;
        Exception exception6;
        exception6;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception6);
        return;
        Exception exception3;
        exception3;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to delete publicKey version from ").append(d).toString());
        }
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return;
        Exception exception5;
        exception5;
        if (!ud.d) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception5);
        return;
        Exception exception;
        exception;
        SQLiteDatabase sqlitedatabase1;
        Exception exception1;
        sqlitedatabase1 = null;
        exception1 = exception;
_L8:
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        sqlitedatabase1.close();
_L6:
        throw exception1;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception2);
        }
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception4;
        exception4;
        sqlitedatabase1 = sqlitedatabase;
        exception1 = exception4;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void a(long l)
    {
        if (l <= 0L)
        {
            a(null, null);
            return;
        }
        if (ud.c)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Long.valueOf(l);
            aobj[1] = d;
            Log.i("stat.EventDatabase", String.format("Delete where row_id <= %d  from %s", aobj));
        }
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        a("rowId<=?", as);
    }

    public boolean a(String s, int i, int j, String s1, Date date, String s2, int k, 
            int l)
    {
        SQLiteDatabase sqlitedatabase = null;
        int i1;
        long l1;
        sqlitedatabase = getWritableDatabase();
        i1 = a(sqlitedatabase);
        l1 = tg.b(b);
        if (ud.c)
        {
            Object aobj[] = new Object[4];
            aobj[0] = d;
            aobj[1] = sqlitedatabase.getPath();
            aobj[2] = Integer.valueOf(i1);
            aobj[3] = Long.valueOf(l1);
            Log.i("stat.EventDatabase", String.format("Current db %s file is %s and it's size is %d and is max size is %d!", aobj));
        }
        if ((long)i1 <= l1)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        a(d());
        long l3;
        long l2 = tn.b(date.getTime());
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("a", s);
        contentvalues.put("b", Integer.valueOf(i));
        contentvalues.put("c", Integer.valueOf(j));
        contentvalues.put("d", s1);
        contentvalues.put("e", Long.valueOf(l2));
        contentvalues.put("f", Long.valueOf(tn.a(date.getTime())));
        contentvalues.put("g", Long.valueOf(tn.a(date.getTime())));
        contentvalues.put("h", s2);
        contentvalues.put("i", Integer.valueOf(k));
        contentvalues.put("j", Integer.valueOf(l));
        l3 = sqlitedatabase.insert(d, null, contentvalues);
        boolean flag;
        if (l3 >= 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_277;
        }
        sqlitedatabase.close();
_L2:
        return flag;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception4);
        return flag;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to add to db ").append(d).toString(), exception2);
        }
        flag = false;
        if (sqlitedatabase == null) goto _L2; else goto _L3
_L3:
        sqlitedatabase.close();
        return false;
        Exception exception3;
        exception3;
        boolean flag1;
        flag1 = ud.d;
        flag = false;
        if (!flag1) goto _L2; else goto _L4
_L4:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception3);
        return false;
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_400;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean a(String s, String s1, Date date, String s2)
    {
        boolean flag;
        SQLiteDatabase sqlitedatabase;
        flag = true;
        sqlitedatabase = null;
        int i;
        sqlitedatabase = getWritableDatabase();
        if (ud.c)
        {
            int j = a(sqlitedatabase);
            long l1 = tg.b(b);
            Log.i("stat.EventDatabase", (new StringBuilder()).append("Current db ").append(d).append(" file is ").append(sqlitedatabase.getPath()).append(" and its size is ").append(j).append(" and its max size is ").append(l1).append(".").toString());
        }
        long l = tn.b(date.getTime());
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("d", s1);
        contentvalues.put("g", Long.valueOf(tn.a(date.getTime())));
        String s3 = d;
        String as[] = new String[3];
        as[0] = s;
        as[1] = String.valueOf(l);
        as[2] = s2;
        i = sqlitedatabase.update(s3, contentvalues, "a=? and e=? and h=?", as);
        if ((long)i <= 0L)
        {
            flag = false;
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        sqlitedatabase.close();
_L2:
        return flag;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L2; else goto _L1
_L1:
        Log.e("stat.EventDatabase", "Failed to close the db!", exception4);
        return flag;
        Exception exception2;
        exception2;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", (new StringBuilder()).append("Failed to update db ").append(d).toString(), exception2);
        }
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        sqlitedatabase.close();
_L4:
        return false;
        Exception exception3;
        exception3;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception3);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_328;
        }
        sqlitedatabase.close();
_L6:
        throw exception;
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to close the db!", exception1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public ti b(int i)
    {
        e();
        String s;
        if (i <= 0)
        {
            s = null;
        } else
        {
            s = String.valueOf(i);
        }
        return a(null, ((String []) (null)), s);
    }

    public void b()
    {
        e.unlock();
    }

    public boolean c()
    {
        int i;
        try
        {
            Cursor cursor = getReadableDatabase().query(d, null, null, null, null, null, null, "1");
            i = cursor.getCount();
            cursor.close();
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.EventDatabase", "Failed to check empty!", exception);
            }
            return true;
        }
        return i == 0;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL(c);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        String s;
        if (i >= 6 || j < 6)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        s = (new StringBuilder()).append("ALTER TABLE ").append(d).append(" ADD COLUMN ").append("j").append(" INTEGER;").toString();
        if (ud.c)
        {
            Object aobj[] = new Object[4];
            aobj[0] = d;
            aobj[1] = Integer.valueOf(i);
            aobj[2] = Integer.valueOf(j);
            aobj[3] = s;
            Log.i("stat.EventDatabase", String.format("Upgrade db %s from %d to %d! excute %s", aobj));
        }
        sqlitedatabase.execSQL(s);
_L1:
        return;
        SQLException sqlexception;
        sqlexception;
        if (ud.d)
        {
            Log.e("stat.EventDatabase", "Failed to upgrade!", sqlexception);
            return;
        }
          goto _L1
    }

}
