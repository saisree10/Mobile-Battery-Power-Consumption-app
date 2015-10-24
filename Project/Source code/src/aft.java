// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class aft extends SQLiteOpenHelper
{

    final afs a;

    public aft(afs afs, Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        a = afs;
        super(context, "dx_chargings.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE chargings(id INTEGER PRIMARY KEY,year INTEGER,month INTEGER,day INTEGER,normal INTEGER,health INTEGER)");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        azt.a("CalendarDBHelper", "onUpgrade the DataBase of dx_chargings, but do nothing");
    }
}
