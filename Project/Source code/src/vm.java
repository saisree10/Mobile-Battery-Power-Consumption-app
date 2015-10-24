// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;

public class vm extends vo
{

    private boolean a;

    public vm(boolean flag)
    {
        a = flag;
    }

    public int a(Uri uri, ContentValues contentvalues, String s, String as[], SQLiteDatabase sqlitedatabase)
    {
        if (a)
        {
            String s1 = (String)uri.getPathSegments().get(1);
            StringBuilder stringbuilder = (new StringBuilder()).append("_id=").append(s1);
            String s2;
            if (!TextUtils.isEmpty(s))
            {
                s2 = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
            } else
            {
                s2 = "";
            }
            stringbuilder.append(s2).toString();
        }
        return sqlitedatabase.update("attach", contentvalues, s, as);
    }

    public int a(Uri uri, String s, String as[], SQLiteDatabase sqlitedatabase)
    {
        return 0;
    }

    public Cursor a(Uri uri, String as[], String s, String as1[], String s1, SQLiteQueryBuilder sqlitequerybuilder, SQLiteDatabase sqlitedatabase)
    {
        sqlitequerybuilder.setProjectionMap(a());
        sqlitequerybuilder.setTables("attach");
        if (a)
        {
            sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        }
        String s2;
        if (TextUtils.isEmpty(s1))
        {
            s2 = "url DESC";
        } else
        {
            s2 = s1;
        }
        return sqlitequerybuilder.query(sqlitedatabase, as, s, as1, null, null, s2);
    }

    public Uri a(Uri uri, ContentValues contentvalues, SQLiteDatabase sqlitedatabase)
    {
        ContentValues contentvalues1;
        long l;
        if (contentvalues != null)
        {
            contentvalues1 = new ContentValues(contentvalues);
        } else
        {
            contentvalues1 = new ContentValues();
        }
        if (!contentvalues1.containsKey("local_path"))
        {
            contentvalues1.put("local_path", "");
        }
        l = sqlitedatabase.insert("attach", "url", contentvalues1);
        if (l > 0L)
        {
            return ContentUris.withAppendedId(vi.a, l);
        } else
        {
            return null;
        }
    }

    public HashMap a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("_id", "_id");
        hashmap.put("data_format", "data_format");
        hashmap.put("parent_type", "parent_type");
        hashmap.put("parent_id", "parent_id");
        hashmap.put("url", "url");
        hashmap.put("local_path", "local_path");
        return hashmap;
    }
}
