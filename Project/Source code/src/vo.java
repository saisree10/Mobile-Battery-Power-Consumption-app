// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;

public abstract class vo
{

    public vo()
    {
    }

    public abstract int a(Uri uri, ContentValues contentvalues, String s, String as[], SQLiteDatabase sqlitedatabase);

    public abstract int a(Uri uri, String s, String as[], SQLiteDatabase sqlitedatabase);

    public abstract Cursor a(Uri uri, String as[], String s, String as1[], String s1, SQLiteQueryBuilder sqlitequerybuilder, SQLiteDatabase sqlitedatabase);

    public abstract Uri a(Uri uri, ContentValues contentvalues, SQLiteDatabase sqlitedatabase);
}
