// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class oq
{

    static final String a[] = {
        "pid", "tid", "gid", "iid", "name", "pkg_name", "desc", "short_desc", "position", "open_type", 
        "url_source", "icon", "url_play", "url_apk", "pts", "points", "download", "new", "click_time", "update_time"
    };
    private static oq j;
    private Context b;
    private SQLiteDatabase c;
    private HashMap d;
    private HashMap e;
    private ArrayList f;
    private final File g;
    private Object h;
    private boolean i;
    private bbq k;
    private final Object l = new Object();
    private boolean m;

    private oq(Context context)
    {
        d = new HashMap();
        e = new HashMap();
        f = new ArrayList();
        h = new Object();
        i = true;
        m = true;
        b = context;
        g = context.getDir("toolboximg", 0);
        if (!g.exists())
        {
            g.mkdirs();
        }
        ot ot1;
        for (Iterator iterator = b(context).iterator(); iterator.hasNext(); e.put(ot1.a, ot1))
        {
            ot1 = (ot)iterator.next();
        }

        c = (new pe(b)).getWritableDatabase();
    }

    static Object a(oq oq1)
    {
        return oq1.h;
    }

    public static oq a(Context context)
    {
        oq;
        JVM INSTR monitorenter ;
        oq oq1;
        if (j == null)
        {
            j = new oq(context.getApplicationContext());
            j.d();
        }
        oq1 = j;
        oq;
        JVM INSTR monitorexit ;
        return oq1;
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(ContentValues contentvalues, ou ou1)
    {
        contentvalues.clear();
        contentvalues.put("ad_tag", ou1.q);
        contentvalues.put("pid", Long.valueOf(ou1.a));
        contentvalues.put("tid", Long.valueOf(ou1.b));
        contentvalues.put("gid", Long.valueOf(ou1.c));
        contentvalues.put("iid", Long.valueOf(ou1.d));
        contentvalues.put("name", ou1.e);
        contentvalues.put("pkg_name", ou1.f);
        contentvalues.put("icon", ou1.l);
        contentvalues.put("desc", ou1.g);
        contentvalues.put("short_desc", ou1.h);
        contentvalues.put("position", Integer.valueOf(ou1.i));
        contentvalues.put("open_type", Integer.valueOf(ou1.j));
        contentvalues.put("url_source", ou1.k);
        contentvalues.put("icon", ou1.l);
        contentvalues.put("url_play", ou1.m);
        contentvalues.put("url_apk", ou1.n);
        contentvalues.put("pts", Integer.valueOf(ou1.o));
        contentvalues.put("points", Integer.valueOf(ou1.p));
        int i1;
        if (ou1.r)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        contentvalues.put("new", Integer.valueOf(i1));
        contentvalues.put("download", Long.valueOf(ou1.s));
        contentvalues.put("update_time", Long.valueOf(ou1.w));
    }

    static void a(oq oq1, String s)
    {
        oq1.m(s);
    }

    static boolean a(oq oq1, String s, List list)
    {
        return oq1.b(s, list);
    }

    static boolean a(oq oq1, boolean flag)
    {
        oq1.i = flag;
        return flag;
    }

    static Context b(oq oq1)
    {
        return oq1.b;
    }

    private Bitmap b(String s, int i1, int j1)
    {
        String s1 = pi.a(s);
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
_L3:
        boolean flag = m;
        if (!flag) goto _L2; else goto _L1
_L1:
        Exception exception;
        bbq bbq1;
        Bitmap bitmap;
        Exception exception1;
        InputStream inputstream;
        IOException ioexception;
        bbw bbw1;
        InputStream inputstream1;
        Bitmap bitmap1;
        try
        {
            l.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
        if (true) goto _L3; else goto _L2
_L2:
        bbq1 = k;
        if (bbq1 == null) goto _L5; else goto _L4
_L4:
        bbw1 = k.a(s1);
        if (bbw1 == null) goto _L7; else goto _L6
_L6:
        inputstream1 = bbw1.a(0);
        inputstream = inputstream1;
        if (inputstream == null) goto _L9; else goto _L8
_L8:
        bitmap1 = pi.a(((FileInputStream)inputstream).getFD(), i1, j1);
        bitmap = bitmap1;
_L13:
        pi.a(inputstream);
_L10:
        obj;
        JVM INSTR monitorexit ;
        return bitmap;
        ioexception;
        inputstream = null;
_L12:
        nz.c("ToolboxCacheMgr", (new StringBuilder()).append("getBitmapFromDiskCache - ").append(ioexception).toString());
        pi.a(inputstream);
        bitmap = null;
          goto _L10
_L11:
        pi.a(inputstream);
        throw exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L5:
        nz.c("ToolboxCacheMgr", "WHAT?? mDiskLruCache == null");
        bitmap = null;
          goto _L10
        exception1;
          goto _L11
        ioexception;
          goto _L12
_L9:
        bitmap = null;
          goto _L13
_L7:
        bitmap = null;
        inputstream = null;
          goto _L13
        exception1;
        inputstream = null;
          goto _L11
    }

    private static List b(Context context)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(context.getAssets().open("dxtoolbox/dxtoolbox.json"));
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[4096];
_L3:
        int i1 = bufferedinputstream.read(abyte0);
        if (i1 <= 0) goto _L2; else goto _L1
_L1:
        bytearrayoutputstream.write(abyte0, 0, i1);
          goto _L3
        IOException ioexception;
        ioexception;
_L7:
        ioexception.printStackTrace();
        pi.a(bufferedinputstream);
        return new ArrayList();
_L2:
        List list = j(bytearrayoutputstream.toString());
        pi.a(bufferedinputstream);
        return list;
        Exception exception;
        exception;
        bufferedinputstream = null;
_L5:
        pi.a(bufferedinputstream);
        throw exception;
        exception;
        if (true) goto _L5; else goto _L4
_L4:
        ioexception;
        bufferedinputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean b(String s, List list)
    {
        boolean flag;
        int k1;
        List list1 = (List)d.get(s);
        int i1;
        int j1;
        Iterator iterator;
        if (list1 == null)
        {
            i1 = 0;
        } else
        {
            i1 = list1.size();
        }
        j1 = list.size();
        nz.b("ToolboxCacheMgr", (new StringBuilder()).append("Pull completed: ").append(i1).append(" --> ").append(j1).toString());
        if (j1 != i1) goto _L2; else goto _L1
_L1:
        k1 = 0;
_L8:
        flag = false;
        if (k1 >= j1) goto _L4; else goto _L3
_L3:
        if (((ou)list.get(k1)).a((ou)list1.get(k1))) goto _L6; else goto _L5
_L5:
        flag = true;
          goto _L4
_L6:
        k1++;
        continue; /* Loop/switch isn't completed */
_L2:
        flag = true;
_L4:
        if (flag)
        {
            if (pa.a)
            {
                nz.b("ToolboxCacheMgr", (new StringBuilder()).append("========== ").append(s).append(" ==========").toString());
                for (iterator = list.iterator(); iterator.hasNext(); nz.b("ToolboxCacheMgr", ((ou)iterator.next()).b())) { }
                nz.b("ToolboxCacheMgr", "==============================");
            }
            c(s, list);
            m(s);
        }
        return flag;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private Bitmap c(String s, int i1, int j1)
    {
        InputStream inputstream1;
        String s1 = pi.a(s);
        inputstream1 = b.getAssets().open((new StringBuilder()).append("dxtoolbox/images/").append(s1).append(".0").toString());
        InputStream inputstream;
        Bitmap bitmap;
        inputstream = inputstream1;
        bitmap = null;
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L5:
        int k1 = inputstream.read(abyte0);
        if (k1 <= 0) goto _L4; else goto _L3
_L3:
        bytearrayoutputstream.write(abyte0, 0, k1);
          goto _L5
        IOException ioexception;
        ioexception;
_L9:
        nz.c("ToolboxCacheMgr", (new StringBuilder()).append("getBitmapFromAssets- ").append(ioexception).toString());
        pi.a(inputstream);
        return null;
_L4:
        Bitmap bitmap1 = pi.a(bytearrayoutputstream.toByteArray(), i1, j1);
        bitmap = bitmap1;
_L2:
        pi.a(inputstream);
        return bitmap;
        Exception exception1;
        exception1;
        Exception exception;
        inputstream = null;
        exception = exception1;
_L7:
        pi.a(inputstream);
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception;
        inputstream = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static ArrayList c(oq oq1)
    {
        return oq1.f;
    }

    private void c(String s, List list)
    {
        long l1;
        c.beginTransaction();
        l1 = System.currentTimeMillis();
        String as[] = new String[3];
        ContentValues contentvalues = new ContentValues();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ou ou1 = (ou)iterator.next();
            ou1.w = l1;
            a(contentvalues, ou1);
            as[0] = s;
            as[1] = Long.toString(ou1.d);
            as[2] = ou1.f;
            if (c.update("tb_cache", contentvalues, "ad_tag=? AND iid=? AND pkg_name=?", as) == 0)
            {
                c.insert("tb_cache", null, contentvalues);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_144;
        Exception exception;
        exception;
        c.endTransaction();
        throw exception;
        String as1[] = new String[2];
        as1[0] = s;
        as1[1] = Long.toString(l1);
        c.delete("tb_cache", "ad_tag=? AND update_time<>?", as1);
        c.setTransactionSuccessful();
        c.endTransaction();
        return;
    }

    private void d()
    {
        pg.a().a(new or(this));
        pg.a().a(new os(this));
    }

    static void d(oq oq1)
    {
        oq1.e();
    }

    private void e()
    {
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
        boolean flag;
        if (k == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        flag = k.a();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        Exception exception;
        try
        {
            k = bbq.a(g, 1, 1, 0x300000L);
        }
        catch (IOException ioexception) { }
        m = false;
        l.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static List j(String s)
    {
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray = new JSONArray(s);
        int i1 = 0;
        int j1 = jsonarray.length();
_L2:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = jsonarray.getJSONObject(i1);
        arraylist.add(new ot(jsonobject.getString("name"), jsonobject.optString("id"), jsonobject.optInt("max", 18)));
        i1++;
        if (true) goto _L2; else goto _L1
        JSONException jsonexception;
        jsonexception;
        nz.a("ToolboxCacheMgr", "dxtoolbox.json format error.", jsonexception);
_L1:
        return arraylist;
    }

    private boolean k(String s)
    {
        String s1 = pi.a(s);
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
_L3:
        boolean flag = m;
        if (!flag) goto _L2; else goto _L1
_L1:
        Exception exception;
        bbq bbq1;
        IOException ioexception;
        bbw bbw1;
        boolean flag1;
        try
        {
            l.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
        if (true) goto _L3; else goto _L2
_L2:
        bbq1 = k;
        if (bbq1 == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        bbw1 = k.a(s1);
        flag1 = false;
        if (bbw1 != null)
        {
            flag1 = true;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag1;
        ioexception;
        ioexception.printStackTrace();
        obj;
        JVM INSTR monitorexit ;
        return false;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean l(String s)
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        h.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        nz.b("ToolboxCacheMgr", "Wait Failed. @isExistsInAssets");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag1;
        String s1 = (new StringBuilder()).append(pi.a(s)).append(".0").toString();
        flag1 = f.contains(s1);
        obj;
        JVM INSTR monitorexit ;
        return flag1;
    }

    private void m(String s)
    {
        List list = c(s);
        d.put(s, list);
    }

    Bitmap a(String s, int i1, int j1)
    {
        if (s == null || s.length() == 0)
        {
            return null;
        }
        if (l(s))
        {
            return c(s, i1, j1);
        } else
        {
            return b(s, i1, j1);
        }
    }

    void a()
    {
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
        bbq bbq1 = k;
        if (bbq1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        k.b();
        nz.b("ToolboxCacheMgr", "Disk cache flushed");
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        nz.c("ToolboxCacheMgr", (new StringBuilder()).append("flush - ").append(ioexception).toString());
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, boolean flag)
    {
        om.a(b, s, flag);
    }

    void a(String s, byte abyte0[])
    {
        if (s == null || abyte0 == null)
        {
            return;
        }
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
        if (k == null) goto _L2; else goto _L1
_L1:
        String s1 = pi.a(s);
        bbw bbw1 = k.a(s1);
        if (bbw1 != null) goto _L4; else goto _L3
_L3:
        bbt bbt1 = k.b(s1);
        OutputStream outputstream1;
        outputstream1 = null;
        if (bbt1 == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        OutputStream outputstream2 = bbt1.a(0);
        outputstream1 = outputstream2;
        outputstream1.write(abyte0);
        bbt1.a();
_L6:
        pi.a(outputstream1);
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        bbt bbt2;
        bbw1.a(0).close();
        bbt2 = bbw1.a();
        outputstream1 = null;
        if (bbt2 == null) goto _L6; else goto _L5
_L5:
        OutputStream outputstream3 = bbt2.a(0);
        OutputStream outputstream = outputstream3;
        outputstream.write(abyte0);
        bbt2.a();
        outputstream1 = outputstream;
          goto _L6
        IOException ioexception;
        ioexception;
        IOException ioexception1;
        outputstream = null;
        ioexception1 = ioexception;
_L9:
        nz.c("ToolboxCacheMgr", (new StringBuilder()).append("IOE addFileToCache - ").append(ioexception1).toString());
        pi.a(outputstream);
          goto _L2
        Exception exception3;
        exception3;
        Exception exception4;
        outputstream = null;
        exception4 = exception3;
_L8:
        Log.e("ToolboxCacheMgr", (new StringBuilder()).append("E addFileToCache - ").append(exception4).toString());
        pi.a(outputstream);
          goto _L2
_L7:
        Exception exception2;
        pi.a(outputstream);
        throw exception2;
        Exception exception6;
        exception6;
        outputstream = outputstream1;
        exception2 = exception6;
          goto _L7
        exception2;
          goto _L7
        Exception exception5;
        exception5;
        outputstream = outputstream1;
        exception4 = exception5;
          goto _L8
        exception4;
          goto _L8
        IOException ioexception2;
        ioexception2;
        outputstream = outputstream1;
        ioexception1 = ioexception2;
          goto _L9
        ioexception1;
          goto _L9
        Exception exception1;
        exception1;
        exception2 = exception1;
        outputstream = null;
          goto _L7
    }

    public void a(ou ou1)
    {
        while (ou1 == null || ou1.v > 0L) 
        {
            return;
        }
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        h.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        nz.b("ToolboxCacheMgr", "Wait Failed. @updateNoNetworkClickTime");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        long l1 = System.currentTimeMillis();
        ContentValues contentvalues = new ContentValues(3);
        contentvalues.put("click_time", Long.valueOf(l1));
        String as[] = new String[1];
        as[0] = Long.toString(ou1.d);
        if (c.update("tb_cache", contentvalues, "iid=?", as) > 0)
        {
            om.a(b, 0L);
        }
        ou1.v = l1;
        obj;
        JVM INSTR monitorexit ;
    }

    boolean a(String s)
    {
        while (l(s) || k(s)) 
        {
            return true;
        }
        return false;
    }

    boolean a(String s, List list)
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        h.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        nz.b("ToolboxCacheMgr", "Wait Failed. @updateAdList");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag1 = b(s, list);
        obj;
        JVM INSTR monitorexit ;
        return flag1;
    }

    public List b(String s)
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        h.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        nz.b("ToolboxCacheMgr", "Wait Failed. @getList");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist;
        if (!d.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        arraylist = new ArrayList((Collection)d.get(s));
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        ArrayList arraylist1 = new ArrayList();
        obj;
        JVM INSTR monitorexit ;
        return arraylist1;
    }

    public Set b()
    {
        return e.keySet();
    }

    public void b(ou ou1)
    {
        if (ou1 == null || TextUtils.isEmpty(ou1.f))
        {
            return;
        }
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        ContentValues contentvalues;
        ns ns1;
        contentvalues = new ContentValues(13);
        contentvalues.put("pkg_name", ou1.f);
        contentvalues.put("click_time", Long.valueOf(System.currentTimeMillis()));
        ns1 = new ns(ou1);
        contentvalues.put("click_DATA", ns1.a());
        String as[] = new String[1];
        as[0] = ou1.f;
        if (c.update("tb_validclick", contentvalues, "pkg_name=?", as) == 0)
        {
            contentvalues.put("status", Integer.valueOf(0));
            c.insert("tb_validclick", null, contentvalues);
        }
_L1:
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        JSONException jsonexception;
        jsonexception;
        nz.a("ToolboxCacheMgr", "decode failed: ", jsonexception);
          goto _L1
    }

    public List c()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        Cursor cursor;
        String as[] = {
            "click_DATA", "click_time"
        };
        String as1[] = new String[1];
        as1[0] = Integer.toString(1);
        cursor = c.query("tb_validclick", as, "status=?", as1, null, null, null);
_L1:
        ns ns1;
        String s;
        if (!cursor.moveToNext())
        {
            break MISSING_BLOCK_LABEL_150;
        }
        ns1 = new ns();
        s = cursor.getString(0);
        ns1.a(s);
        ns1.h = cursor.getLong(1);
        arraylist.add(ns1);
          goto _L1
        JSONException jsonexception;
        jsonexception;
        nz.a("ToolboxCacheMgr", "decode failed: ", jsonexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        cursor.close();
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    List c(String s)
    {
        String as[] = {
            s
        };
        ArrayList arraylist = new ArrayList();
        Cursor cursor = c.query("tb_cache", a, "ad_tag=?", as, null, null, "position ASC");
        while (cursor.moveToNext()) 
        {
            ou ou1 = new ou();
            ou1.q = s;
            ou1.a = cursor.getLong(0);
            ou1.b = cursor.getLong(1);
            ou1.c = cursor.getLong(2);
            ou1.d = cursor.getLong(3);
            ou1.e = cursor.getString(4);
            ou1.f = cursor.getString(5);
            ou1.g = cursor.getString(6);
            ou1.h = cursor.getString(7);
            ou1.i = cursor.getInt(8);
            ou1.j = cursor.getInt(9);
            ou1.k = cursor.getString(10);
            ou1.l = cursor.getString(11);
            ou1.m = cursor.getString(12);
            ou1.n = cursor.getString(13);
            ou1.o = cursor.getInt(14);
            ou1.p = cursor.getInt(15);
            ou1.s = cursor.getLong(16);
            boolean flag;
            if (cursor.getInt(17) == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ou1.r = flag;
            ou1.v = cursor.getLong(18);
            ou1.w = cursor.getLong(19);
            arraylist.add(ou1);
        }
        cursor.close();
        return arraylist;
    }

    public ot d(String s)
    {
        return (ot)e.get(s);
    }

    void e(String s)
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = i;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        h.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        nz.b("ToolboxCacheMgr", "Wait Failed. @delAllItemsInDB");
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        String as[] = {
            s
        };
        c.delete("tb_cache", "ad_tag=?", as);
        d.put(s, new ArrayList());
        obj;
        JVM INSTR monitorexit ;
    }

    public boolean f(String s)
    {
        return om.b(b, s);
    }

    public ns g(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        Cursor cursor;
        String as[] = {
            "click_DATA", "click_time"
        };
        String as1[] = {
            s
        };
        cursor = c.query("tb_validclick", as, "pkg_name=?", as1, null, null, null);
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        String s1;
        ns ns2;
        s1 = cursor.getString(0);
        ns2 = new ns();
        ns2.a(s1);
        ns2.h = cursor.getLong(1);
        ns ns1 = ns2;
_L4:
        cursor.close();
        obj;
        JVM INSTR monitorexit ;
        return ns1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        JSONException jsonexception;
        jsonexception;
        nz.a("ToolboxCacheMgr", "decode failed: ", jsonexception);
        ns1 = ns2;
        continue; /* Loop/switch isn't completed */
_L2:
        ns1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void h(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        synchronized (h)
        {
            String as[] = {
                s
            };
            c.delete("tb_validclick", "pkg_name=?", as);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        synchronized (h)
        {
            ContentValues contentvalues = new ContentValues(1);
            contentvalues.put("status", Integer.valueOf(1));
            String as[] = {
                s
            };
            c.update("tb_validclick", contentvalues, "pkg_name=?", as);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
