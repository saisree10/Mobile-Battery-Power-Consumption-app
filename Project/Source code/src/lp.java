// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;

public class lp
{

    private static final String a = lp.getName();
    private static HashMap b;
    private static final UriMatcher c;
    private static lp e = null;
    private SQLiteOpenHelper d;

    private lp(Context context)
    {
        d = lo.a(context);
    }

    public static lp a(Context context)
    {
        lp;
        JVM INSTR monitorenter ;
        lp lp1;
        if (e == null)
        {
            e = new lp(context);
        }
        lp1 = e;
        lp;
        JVM INSTR monitorexit ;
        return lp1;
        Exception exception;
        exception;
        throw exception;
    }

    public int a()
    {
        Cursor cursor = d.getReadableDatabase().rawQuery("select count(*) from records", null);
        int i = 0;
        if (cursor != null)
        {
            boolean flag = cursor.moveToFirst();
            i = 0;
            if (flag)
            {
                i = cursor.getInt(0);
            }
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return i;
    }

    public int a(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        SQLiteDatabase sqlitedatabase = d.getWritableDatabase();
        if (contentvalues != null && !contentvalues.containsKey("lastAccess"))
        {
            contentvalues.put("lastAccess", Long.valueOf(System.currentTimeMillis()));
        }
        String s1;
        switch (c.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown URI ")).append(uri).toString());

        case 1: // '\001'
            return sqlitedatabase.update("records", contentvalues, s, as);

        case 2: // '\002'
            s1 = (String)uri.getPathSegments().get(1);
            break;
        }
        StringBuilder stringbuilder = (new StringBuilder("_id=")).append(s1);
        String s2;
        if (!TextUtils.isEmpty(s))
        {
            s2 = (new StringBuilder(" AND (")).append(s).append(')').toString();
        } else
        {
            s2 = "";
        }
        return sqlitedatabase.update("records", contentvalues, stringbuilder.append(s2).toString(), as);
    }

    public Cursor a(Uri uri, String as[], String s, String as1[], String s1)
    {
        SQLiteQueryBuilder sqlitequerybuilder;
        sqlitequerybuilder = new SQLiteQueryBuilder();
        sqlitequerybuilder.setTables("records");
        switch (c.match(uri))
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown URI ")).append(uri).toString());

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_109;

        case 1: // '\001'
            sqlitequerybuilder.setProjectionMap(b);
            break;
        }
_L1:
        String s2;
        if (TextUtils.isEmpty(s1))
        {
            s2 = "lastAccess DESC";
        } else
        {
            s2 = s1;
        }
        return sqlitequerybuilder.query(d.getReadableDatabase(), as, s, as1, null, null, s2);
        sqlitequerybuilder.setProjectionMap(b);
        sqlitequerybuilder.appendWhere((new StringBuilder("_id=")).append((String)uri.getPathSegments().get(1)).toString());
          goto _L1
    }

    public Uri a(Uri uri, ContentValues contentvalues)
    {
        if (c.match(uri) != 1)
        {
            throw new IllegalArgumentException((new StringBuilder("Unknown URI ")).append(uri).toString());
        }
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
        if (!contentvalues1.containsKey("lastAccess"))
        {
            contentvalues1.put("lastAccess", long1);
        }
        if (!contentvalues1.containsKey("value"))
        {
            contentvalues1.put("value", "");
        }
        l = d.getWritableDatabase().insert("records", "key", contentvalues1);
        if (l > 0L)
        {
            return ContentUris.withAppendedId(ln.a, l);
        } else
        {
            throw new SQLException((new StringBuilder("Failed to insert row into ")).append(uri).toString());
        }
    }

    static 
    {
        c = new UriMatcher(-1);
        c.addURI("com.dianxinos.cms.front.client.provider.Record", "records", 1);
        c.addURI("com.dianxinos.cms.front.client.provider.Record", "records/#", 2);
        b = new HashMap();
        b.put("_id", "_id");
        b.put("key", "key");
        b.put("value", "value");
        b.put("lastAccess", "lastAccess");
        b.put("lastModified", "lastModified");
        b.put("visitCount", "visitCount");
    }
}
