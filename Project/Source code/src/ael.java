// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class ael extends SQLiteOpenHelper
{

    public ael(Context context)
    {
        super(context, "purchase.db", null, 1);
    }

    private void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS history(_id TEXT PRIMARY KEY, state TEXT, productId TEXT, developerPayload TEXT, purchaseTime TEXT)");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS purchased(_id TEXT PRIMARY KEY, quantity INTEGER)");
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        a(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        if (j != 1)
        {
            aek.a("PurchaseDatabase", (new StringBuilder()).append("Database upgrade from old: ").append(i).append(" to: ").append(j).toString());
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS history");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS purchased");
            a(sqlitedatabase);
        }
    }
}
