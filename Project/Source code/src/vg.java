// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class vg extends SQLiteOpenHelper
{

    public vg(Context context)
    {
        super(context, (new StringBuilder()).append(gy.a(context)).append("_fb.db").toString(), null, 2);
        vh.a(context);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE topics (_id INTEGER PRIMARY KEY AUTOINCREMENT,fb_id TEXT UNIQUE,content TEXT,lastModified INTEGER,hasnewReply INTEGER,has_attachment INTEGER,reply_count INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE reply (_id INTEGER PRIMARY KEY AUTOINCREMENT,reply_id TEXT UNIQUE,fb_id TEXT,lastModified INTEGER,content TEXT,has_attachment INTEGER,author TEXT);");
        sqlitedatabase.execSQL("CREATE TABLE hottopics (_id INTEGER PRIMARY KEY AUTOINCREMENT,lastModified INTEGER,hot_id TEXT UNIQUE,title TEXT,content TEXT,has_attachment INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE attach (_id INTEGER PRIMARY KEY AUTOINCREMENT,data_format TEXT,parent_type INTEGER,parent_id TEXT,url TEXT UNIQUE,local_path TEXT);");
        sqlitedatabase.execSQL("CREATE TABLE records (_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT UNIQUE,value TEXT,lastModified INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        vt.d("DataBaseHelper", (new StringBuilder()).append("Upgrading database from version ").append(i).append(" to ").append(j).append(", which will destroy all old data").toString());
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS topics");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS reply");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS hottopics");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS attach");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS records");
        onCreate(sqlitedatabase);
    }
}
