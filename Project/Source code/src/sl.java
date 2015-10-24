// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

class sl extends SQLiteOpenHelper
{

    final sj a;
    private final String b = "stat.AppDBHelper";
    private final String c;
    private final String d;

    public sl(sj sj, Context context, String s)
    {
        a = sj;
        super(context, s, null, 3);
        c = s;
        d = (new StringBuilder()).append("CREATE TABLE ").append(s).append(" (").append("a").append(" INTEGER PRIMARY KEY AUTOINCREMENT, ").append("b").append(" TEXT, ").append("c").append(" TEXT, ").append("d").append(" TEXT, ").append("e").append(" TEXT, ").append("f").append(" TEXT, ").append("g").append(" TEXT, ").append("h").append(" TEXT, ").append("i").append(" TEXT, ").append("j").append(" INTEGER, ").append("k").append(" TEXT, ").append("l").append(" TEXT, ").append("m").append(" TEXT, ").append("n").append(" TEXT, ").append("o").append(" TEXT);").toString();
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        if (ud.c)
        {
            Log.i("stat.AppDBHelper", d);
        }
        sqlitedatabase.execSQL(d);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (Log.isLoggable("stat.AppDBHelper", 4))
        {
            Log.i("stat.AppDBHelper", (new StringBuilder()).append("AppDatabase onUpgrade from ").append(i).append(" to ").append(j).append(".").toString());
        }
        sqlitedatabase.execSQL((new StringBuilder()).append("DROP TABLE if exists ").append(c).toString());
        sqlitedatabase.execSQL(d);
    }
}
