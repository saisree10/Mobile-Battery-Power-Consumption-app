// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

class ta extends SQLiteOpenHelper
{

    final sz a;
    private final String b = "stat.CrashDBHelper";
    private String c;
    private String d;
    private String e;

    public ta(sz sz, Context context, String s)
    {
        a = sz;
        super(context, s, null, 2);
        c = s;
        d = (new StringBuilder()).append("CREATE TABLE ").append(s).append(" (").append("a").append(" INTEGER PRIMARY KEY AUTOINCREMENT, ").append("b").append(" TEXT, ").append("c").append(" INTEGER, ").append("d").append(" INTEGER, ").append("e").append(" TEXT,").append("f").append(" INTEGER);").toString();
        e = (new StringBuilder()).append("CREATE INDEX MD5_INDEX ON ").append(s).append("(").append("b").append(", ").append("e").append(", ").append("f").append(");").toString();
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        if (ud.c)
        {
            Log.i("stat.CrashDBHelper", d);
        }
        sqlitedatabase.execSQL(d);
        sqlitedatabase.execSQL(e);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (ud.c)
        {
            Log.i("stat.CrashDBHelper", (new StringBuilder()).append("CrashDatabase onUpgrade from ").append(i).append(" to ").append(j).append(".").toString());
        }
        sqlitedatabase.execSQL((new StringBuilder()).append("DROP TABLE IF EXISTS ").append(c).toString());
        sqlitedatabase.execSQL(d);
        sqlitedatabase.execSQL(e);
    }
}
