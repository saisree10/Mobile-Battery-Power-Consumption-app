// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class agn extends SQLiteOpenHelper
{

    final agm a;

    public agn(agm agm, Context context)
    {
        a = agm;
        super(context, "cloudremaintime.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE averagetime(_id INTEGER PRIMARY KEY, from_level INTEGER, to_level INTEGER, time_average INTEGER, level_count INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }
}
