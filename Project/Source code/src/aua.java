// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class aua extends SQLiteOpenHelper
{

    final atz a;

    public aua(atz atz, Context context)
    {
        a = atz;
        super(context, "charging.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE level(_id INTEGER PRIMARY KEY, start_level INTEGER, end_level INTEGER, data INTEGER, count INTEGER, type INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE result(_id INTEGER PRIMARY KEY, level INTEGER, data INTEGER, type INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }
}
