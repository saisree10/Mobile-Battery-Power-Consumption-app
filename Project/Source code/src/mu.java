// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class mu extends nf
{

    private static final boolean b;
    private static String c = "";
    private static ArrayList d;
    private static String e = "";
    private static BroadcastReceiver f = new mv();

    private static String a(Context context, nc nc1)
    {
        File file = context.getFilesDir();
        if (nd.a() > 0x100000L)
        {
            return (new File(file, (new StringBuilder("splash_")).append(nc1.d).toString())).toString();
        } else
        {
            return "";
        }
    }

    private static ArrayList a(Context context, JSONArray jsonarray)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = 0;
_L1:
        JSONObject jsonobject;
        if (i == jsonarray.length())
        {
            return arraylist;
        }
        jsonobject = jsonarray.getJSONObject(i);
        nc nc1;
        JSONArray jsonarray1;
        int j;
        nc1 = new nc();
        nc1.b = nd.a(jsonobject.getString("firstdate"));
        nc1.c = nd.a(jsonobject.getString("lastdate"));
        c((new StringBuilder("lasttime")).append(nc1.c).toString());
        jsonarray1 = jsonobject.getJSONArray("img");
        j = context.getResources().getDisplayMetrics().densityDpi;
        int k = 0;
_L2:
        if (k == jsonarray1.length())
        {
            if (nc1.e != null)
            {
                arraylist.add(nc1);
                if (b)
                {
                    c(nc1.toString());
                }
            }
            break MISSING_BLOCK_LABEL_274;
        }
        JSONObject jsonobject1;
        int l;
        jsonobject1 = jsonarray1.getJSONObject(k);
        l = nd.b(jsonobject1.getString("density"));
        if (l == j)
        {
            try
            {
                nc1.e = jsonobject1.getString("url");
                nc1.d = jsonobject1.getString("md5");
                nc1.g = jsonobject1.getInt("stayTime");
                nc1.f = a(context, nc1);
                break MISSING_BLOCK_LABEL_280;
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            break MISSING_BLOCK_LABEL_274;
        }
        c((new StringBuilder("Desity not match, config desity: ")).append(l).append(" cellPhone desity: ").append(j).toString());
        break MISSING_BLOCK_LABEL_280;
        i++;
          goto _L1
        k++;
          goto _L2
    }

    public static void a(Context context)
    {
        long l1;
        int i;
        String s;
        long l = mt.a(context, 0L);
        l1 = System.currentTimeMillis();
        if (l1 - l <= 0x5265c00L && l1 > l)
        {
            c("Repeate pull in one day!");
            return;
        }
        i = nd.b(context);
        if (i == -1)
        {
            c("Network not avaliable!");
            return;
        }
        s = null;
        IOException ioexception;
        JSONObject jsonobject;
        s = ml.a(context, a, a(context, i, "splash"));
        jsonobject = new JSONObject(s);
        if (b)
        {
            ms.a("SplashConfigsMgr", (new StringBuilder("response: ")).append(s).toString());
        }
        if (!mk.a(jsonobject))
        {
            ms.b("SplashConfigsMgr", (new StringBuilder("bad response: ")).append(s).toString());
            if (mk.b(jsonobject))
            {
                c("404 error");
                mt.a(context, e);
            }
            mt.b(context, l1);
            return;
        }
          goto _L1
_L3:
        mt.b(context, l1);
        return;
_L1:
        try
        {
            JSONArray jsonarray = jsonobject.getJSONObject("response").getJSONArray("datas");
            if (b)
            {
                ms.a("SplashConfigsMgr", jsonarray.toString());
            }
            mt.a(context, jsonarray.toString());
            my.a(context).d();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ms.b("SplashConfigsMgr", (new StringBuilder("Unexpected excetpion: ")).append(ioexception).toString());
        }
        catch (JSONException jsonexception)
        {
            ms.b("SplashConfigsMgr", (new StringBuilder("Bad response: ")).append(s).toString());
        }
        catch (IllegalStateException illegalstateexception)
        {
            ms.b("SplashConfigsMgr", (new StringBuilder(" IllegalStateException ")).append(illegalstateexception).toString());
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    static void a(String s)
    {
        c(s);
    }

    public static ArrayList b(Context context)
    {
        ArrayList arraylist = null;
        mu;
        JVM INSTR monitorenter ;
        String s;
        s = mt.b(context, e);
        c("getSplashItemList");
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.equals("")) goto _L3; else goto _L2
_L2:
        c = "";
        d = null;
        c("No data");
_L5:
        mu;
        JVM INSTR monitorexit ;
        return arraylist;
_L3:
        Exception exception;
        if (s.equals(c) && d != null)
        {
            c("Reuse splash item data!");
            arraylist = d;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            JSONArray jsonarray = new JSONArray(s);
            c = s;
            d = a(context, jsonarray);
            arraylist = d;
            continue; /* Loop/switch isn't completed */
        }
        catch (JSONException jsonexception) { }
        finally
        {
            mu;
        }
        ms.b("SplashConfigsMgr", (new StringBuilder("corrupted data: ")).append(s).toString());
        arraylist = null;
        if (true) goto _L5; else goto _L4
_L4:
        throw exception;
    }

    private static void c(String s)
    {
        if (b)
        {
            ms.a("SplashConfigsMgr", s);
        }
    }

    static 
    {
        b = mi.a;
    }
}
