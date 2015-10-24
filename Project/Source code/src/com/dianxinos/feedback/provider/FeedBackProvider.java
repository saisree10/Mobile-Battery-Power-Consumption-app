// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.feedback.provider;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import vg;
import vn;
import vo;

public class FeedBackProvider extends ContentProvider
{

    private static final String a = com/dianxinos/feedback/provider/FeedBackProvider.getName();
    private SQLiteOpenHelper b;

    public FeedBackProvider()
    {
    }

    public int delete(Uri uri, String s, String as[])
    {
        android.database.sqlite.SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        return vn.a(uri).a(uri, s, as, sqlitedatabase);
    }

    public String getType(Uri uri)
    {
        return vn.b(uri);
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        android.database.sqlite.SQLiteDatabase sqlitedatabase = b.getWritableDatabase();
        Uri uri1 = vn.a(uri).a(uri, contentvalues, sqlitedatabase);
        if (uri1 != null)
        {
            getContext().getContentResolver().notifyChange(uri1, null);
            return uri1;
        } else
        {
            throw new SQLException((new StringBuilder()).append("Failed to insert row into ").append(uri).toString());
        }
    }

    public boolean onCreate()
    {
        b = new vg(getContext());
        return true;
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        SQLiteQueryBuilder sqlitequerybuilder = new SQLiteQueryBuilder();
        android.database.sqlite.SQLiteDatabase sqlitedatabase = b.getReadableDatabase();
        Cursor cursor = vn.a(uri).a(uri, as, s, as1, s1, sqlitequerybuilder, sqlitedatabase);
        cursor.setNotificationUri(getContext().getContentResolver(), uri);
        return cursor;
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        int i = vn.a(uri).a(uri, contentvalues, s, as, b.getWritableDatabase());
        getContext().getContentResolver().notifyChange(uri, null);
        return i;
    }

}
