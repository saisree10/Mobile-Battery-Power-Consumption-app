// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class lo extends SQLiteOpenHelper
{

    private static final String a = lo.getName();
    private static SQLiteOpenHelper b = null;

    private lo(Context context)
    {
        super(context, (new StringBuilder(String.valueOf(gy.a(context)))).append("_cms.db").toString(), null, 2);
    }

    public static SQLiteOpenHelper a(Context context)
    {
        lo;
        JVM INSTR monitorenter ;
        SQLiteOpenHelper sqliteopenhelper;
        if (b == null)
        {
            b = new lo(context);
        }
        sqliteopenhelper = b;
        lo;
        JVM INSTR monitorexit ;
        return sqliteopenhelper;
        Exception exception;
        exception;
        throw exception;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE records (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT UNIQUE,value TEXT,lastAccess INTEGER,lastModified INTEGER,visitCount INTEGER);");
        sqlitedatabase.execSQL("CREATE INDEX lurIndex on records(lastAccess ASC,visitCount ASC)");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Log.w(a, (new StringBuilder("Upgrading database from version ")).append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS records");
        onCreate(sqlitedatabase);
    }

}
