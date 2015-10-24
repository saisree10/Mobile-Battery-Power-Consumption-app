// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class yw extends SQLiteOpenHelper
{

    public yw(Context context)
    {
        super(context, "message_box_list.db", null, 2);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        yx.a(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (i == 1 && j == 2)
        {
            yx.b(sqlitedatabase);
        }
    }
}
