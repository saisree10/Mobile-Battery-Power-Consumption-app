// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class yx
{

    private SQLiteDatabase a;

    public yx(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public static void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS messages_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_deadline INTEGER,msg_text TEXT,icon_url TEXT,click_action INTEGER,click_params TEXT,guide_page TEXT,msg_status INTEGER,msg_type INTEGER,msg_recommend_id TEXT,msg_time INTEGER,del INTEGER,st INTEGER,UNIQUE (msg_recommend_id) ON CONFLICT IGNORE);");
    }

    public static void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("ALTER TABLE messages_list ADD COLUMN del INTEGER;");
        sqlitedatabase.execSQL("ALTER TABLE messages_list ADD COLUMN st INTEGER;");
    }

    public List a(int i)
    {
        ArrayList arraylist = new ArrayList();
        String as[] = {
            "_id", "msg_deadline", "msg_text", "icon_url", "click_action", "click_params", "guide_page", "msg_status", "msg_type", "msg_recommend_id", 
            "msg_time", "del", "st"
        };
        String s;
        String as1[];
        Cursor cursor;
        if (i != -1)
        {
            s = "msg_status= ?";
            as1 = new String[1];
            as1[0] = String.valueOf(i);
        } else
        {
            s = null;
            as1 = null;
        }
        cursor = a.query("messages_list", as, s, as1, null, null, "msg_time desc");
        do
        {
            if (!cursor.moveToNext())
            {
                break;
            }
            if (cursor.getShort(11) != 444)
            {
                zd zd1 = new zd();
                zd1.b = cursor.getInt(0);
                zd1.c = Long.valueOf(cursor.getLong(1));
                zd1.d = cursor.getString(2);
                zd1.e = cursor.getString(3);
                zd1.i = cursor.getInt(4);
                zd1.f = cursor.getString(5);
                zd1.l = cursor.getString(6);
                zd1.g = cursor.getInt(7);
                zd1.a = cursor.getInt(8);
                zd1.k = cursor.getString(9);
                zd1.h = cursor.getLong(10);
                boolean flag;
                if (cursor.getShort(12) > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zd1.j = flag;
                arraylist.add(zd1);
            }
        } while (true);
        cursor.close();
        return arraylist;
    }

    public void a()
    {
        String as[] = new String[1];
        as[0] = String.valueOf(0);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("msg_status", Integer.valueOf(1));
        a.update("messages_list", contentvalues, "msg_status=?", as);
    }

    public void a(Context context, zd zd1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("msg_deadline", zd1.c);
        contentvalues.put("msg_text", zd1.d);
        contentvalues.put("icon_url", zd1.e);
        contentvalues.put("click_action", Integer.valueOf(zd1.i));
        contentvalues.put("click_params", zd1.f);
        contentvalues.put("guide_page", zd1.l);
        contentvalues.put("msg_status", Integer.valueOf(zd1.g));
        contentvalues.put("msg_type", Integer.valueOf(zd1.a));
        contentvalues.put("msg_recommend_id", zd1.k);
        contentvalues.put("msg_time", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("st", Boolean.valueOf(zd1.j));
        if (a.insert("messages_list", null, contentvalues) > 0L)
        {
            aar.a(context).a(true);
        }
    }

    public void a(zd zd1)
    {
        String as[] = new String[1];
        as[0] = String.valueOf(zd1.b);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("msg_deadline", zd1.c);
        contentvalues.put("msg_text", zd1.d);
        contentvalues.put("icon_url", zd1.e);
        contentvalues.put("click_action", Integer.valueOf(zd1.i));
        contentvalues.put("click_params", zd1.f);
        contentvalues.put("guide_page", zd1.l);
        contentvalues.put("msg_status", Integer.valueOf(zd1.g));
        contentvalues.put("msg_type", Integer.valueOf(zd1.a));
        a.update("messages_list", contentvalues, "_id=?", as);
    }

    public void b(zd zd1)
    {
        String as[] = new String[1];
        as[0] = String.valueOf(zd1.b);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("del", Integer.valueOf(444));
        a.update("messages_list", contentvalues, "_id=?", as);
    }
}
