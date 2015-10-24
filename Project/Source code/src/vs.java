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

public class vs extends vo
{

    private boolean a;

    public vs(boolean flag)
    {
        a = flag;
    }

    public int a(Uri uri, ContentValues contentvalues, String s, String as[], SQLiteDatabase sqlitedatabase)
    {
        if (a)
        {
            String s1 = (String)uri.getPathSegments().get(1);
            StringBuilder stringbuilder = (new StringBuilder()).append("fb_id= '").append(s1).append("'");
            String s2;
            if (!TextUtils.isEmpty(s))
            {
                s2 = (new StringBuilder()).append(" AND (").append(s).append(')').toString();
            } else
            {
                s2 = "";
            }
            s = stringbuilder.append(s2).toString();
        }
        return sqlitedatabase.update("topics", contentvalues, s, as);
    }

    public int a(Uri uri, String s, String as[], SQLiteDatabase sqlitedatabase)
    {
        return 0;
    }

    public Cursor a(Uri uri, String as[], String s, String as1[], String s1, SQLiteQueryBuilder sqlitequerybuilder, SQLiteDatabase sqlitedatabase)
    {
        sqlitequerybuilder.setProjectionMap(a());
        sqlitequerybuilder.setTables("topics");
        if (a)
        {
            sqlitequerybuilder.appendWhere((new StringBuilder()).append("fb_id= '").append((String)uri.getPathSegments().get(1)).append("'").toString());
        }
        String s2;
        if (TextUtils.isEmpty(s1))
        {
            s2 = "lastModified DESC";
        } else
        {
            s2 = s1;
        }
        return sqlitequerybuilder.query(sqlitedatabase, as, s, as1, null, null, s2);
    }

    public Uri a(Uri uri, ContentValues contentvalues, SQLiteDatabase sqlitedatabase)
    {
        ContentValues contentvalues1;
        Long long1;
        long l;
        if (contentvalues != null)
        {
            contentvalues1 = new ContentValues(contentvalues);
        } else
        {
            contentvalues1 = new ContentValues();
        }
        long1 = Long.valueOf(System.currentTimeMillis());
        if (!contentvalues1.containsKey("lastModified"))
        {
            contentvalues1.put("lastModified", long1);
        }
        if (!contentvalues1.containsKey("content"))
        {
            contentvalues1.put("content", "");
        }
        if (!contentvalues1.containsKey("reply_count"))
        {
            contentvalues1.put("reply_count", Integer.valueOf(0));
        }
        l = sqlitedatabase.insert("topics", "content", contentvalues1);
        if (l > 0L)
        {
            return ContentUris.withAppendedId(vl.a, l);
        } else
        {
            return null;
        }
    }

    public HashMap a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("_id", "_id");
        hashmap.put("fb_id", "fb_id");
        hashmap.put("content", "content");
        hashmap.put("has_attachment", "has_attachment");
        hashmap.put("hasnewReply", "hasnewReply");
        hashmap.put("lastModified", "lastModified");
        hashmap.put("reply_count", "reply_count");
        return hashmap;
    }
}
