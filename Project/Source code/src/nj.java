// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class nj extends SQLiteOpenHelper
{

    public nj(Context context)
    {
        super(context, "toolbox_recommond.db", null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS tb_recommend(_id INTEGER  primary key autoincrement,child TEXT,json TEXT,last_pull INTEGER,last_modified INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Integer.valueOf(j);
        nz.b("ToolboxSQLHelper", String.format("upgrade db from %d to %d", aobj));
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS tb_recommend");
        onCreate(sqlitedatabase);
    }
}
