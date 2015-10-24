// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class ata extends SQLiteOpenHelper
{

    public ata(Context context)
    {
        super(context, "apps_stats.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        int i = 0;
        sqlitedatabase.execSQL("CREATE TABLE apps (_id INTEGER PRIMARY KEY,uid INTEGER,pkg_name TEXT,total_app_time INTEGER,total_percents REAL);");
        sqlitedatabase.execSQL("CREATE TABLE hw (_id INTEGER PRIMARY KEY,hw_type INTEGER,uid INTEGER,pkg_name TEXT,total_app_time INTEGER,total_hw_time INTEGER);");
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("uid", Integer.valueOf(-5));
        contentvalues.put("pkg_name", "uid_all");
        contentvalues.put("total_app_time", Integer.valueOf(1));
        contentvalues.put("total_hw_time", Integer.valueOf(0));
        for (int ai[] = atg.a(); i < ai.length; i++)
        {
            contentvalues.put("hw_type", Integer.valueOf(ai[i]));
            sqlitedatabase.insert("hw", null, contentvalues);
        }

    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        azt.c("AppStatsMgr", (new StringBuilder()).append("Upgrading the database from ").append(i).append(" to ").append(j).append(", do nothing").toString());
    }
}
