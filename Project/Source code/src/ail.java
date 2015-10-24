// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class ail extends SQLiteOpenHelper
{

    final aik a;

    public ail(aik aik, Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        a = aik;
        super(context, s, cursorfactory, i);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE battery_info (id INTEGER PRIMARY KEY, yesterday TEXT, today TEXT, cdate INTEGER)");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        azt.c("BatteryCurveChartManager", (new StringBuilder()).append("Upgrading the database from ").append(i).append(" to ").append(j).append(", do nothing").toString());
    }
}
