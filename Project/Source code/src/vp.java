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

public class vp extends vo
{

    private boolean a;

    public vp(boolean flag)
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
        return sqlitedatabase.update("hottopics", contentvalues, s, as);
    }

    public int a(Uri uri, String s, String as[], SQLiteDatabase sqlitedatabase)
    {
        return 0;
    }

    public Cursor a(Uri uri, String as[], String s, String as1[], String s1, SQLiteQueryBuilder sqlitequerybuilder, SQLiteDatabase sqlitedatabase)
    {
        sqlitequerybuilder.setProjectionMap(a());
        sqlitequerybuilder.setTables("hottopics");
        if (a)
        {
            sqlitequerybuilder.appendWhere((new StringBuilder()).append("_id=").append((String)uri.getPathSegments().get(1)).toString());
        }
        String s2;
        if (TextUtils.isEmpty(s1))
        {
            s2 = "created DESC";
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
        if (!contentvalues1.containsKey("title"))
        {
            contentvalues1.put("title", "");
        }
        if (!contentvalues1.containsKey("content"))
        {
            contentvalues1.put("content", "");
        }
        l = sqlitedatabase.insert("hottopics", "content", contentvalues1);
        if (l > 0L)
        {
            Uri uri1 = ContentUris.withAppendedId(vj.a, l);
            ul.a().a("hottopic");
            return uri1;
        } else
        {
            return null;
        }
    }

    public HashMap a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("_id", "_id");
        hashmap.put("lastModified", "lastModified");
        hashmap.put("hot_id", "hot_id");
        hashmap.put("title", "title");
        hashmap.put("content", "content");
        hashmap.put("has_attachment", "has_attachment");
        return hashmap;
    }
}
