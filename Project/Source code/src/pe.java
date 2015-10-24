// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class pe extends SQLiteOpenHelper
{

    public pe(Context context)
    {
        super(context, "toolbox.db", null, 3);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_cache(_id INTEGER  primary key autoincrement,ad_tag TEXT,pid INTEGER,tid INTEGER,gid INTEGER,iid INTEGER,name TEXT,pkg_name TEXT,desc TEXT,short_desc TEXT,position INTEGER,open_type INTEGER,url_source TEXT,icon TEXT,url_play TEXT,url_apk TEXT,pts INTEGER,points INTEGER,download INTEGER,new INTEGER,click_time INTEGER,finish_flag INTEGER,update_time INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_validclick(_id INTEGER  primary key autoincrement,pkg_name TEXT,click_DATA TEXT,click_time INTEGER,status INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        nz.b("ToolboxSQLHelper", String.format("upgrade db from %d to %d", aobj));
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_cache");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_validclick");
        if (i == 1)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_cache_view");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_cache_banner");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_cache_ADUNLOCK");
        }
        onCreate(sqlitedatabase);
    }
}
