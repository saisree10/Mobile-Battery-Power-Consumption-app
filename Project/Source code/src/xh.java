// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class xh extends SQLiteOpenHelper
{

    public xh(Context context)
    {
        super(context, "apps_diagnosis.db", null, 2);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        xg.a(sqlitedatabase);
        xf.a(sqlitedatabase);
        xe.a(sqlitedatabase);
        xj.a(sqlitedatabase);
        xd.a(sqlitedatabase);
        xk.a(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        onCreate(sqlitedatabase);
    }
}
