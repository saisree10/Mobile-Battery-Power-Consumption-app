// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class mg extends SQLiteOpenHelper
{

    private Context a;

    public mg(Context context)
    {
        super(context, "integral.db", null, 4);
        a = context;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS record(_id INTEGER  primary key autoincrement,mid TEXT,type TEXT,ac TEXT,value INTEGER,time INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS items(_id INTEGER PRIMARY KEY,mid TEXT,type TEXT,value INTEGER,time INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        nz.b("IntegralRecordManager", String.format("upgrade db from %d to %d", aobj));
        if (i == 3 && j == 4)
        {
            Cursor cursor = sqlitedatabase.query(true, "record", new String[] {
                "ac"
            }, null, null, null, null, null, null);
            do
            {
                if (!cursor.moveToNext())
                {
                    break;
                }
                String s = cursor.getString(0);
                if (s.contains("@"))
                {
                    sqlitedatabase.execSQL((new StringBuilder()).append("UPDATE record SET ac='").append(lx.a(s)).append("' WHERE ").append("ac").append("='").append(s).append("'").toString());
                }
            } while (true);
        } else
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS record");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS items");
            onCreate(sqlitedatabase);
        }
    }
}
