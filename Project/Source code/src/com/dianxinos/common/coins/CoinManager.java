// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.common.coins;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import bc;
import gx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import lx;
import lz;
import ma;
import mb;
import mc;
import mf;
import nz;
import oa;
import om;
import oo;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pg;

public class CoinManager
{

    private static long a = 0x5265c00L;
    private static CoinManager b;
    private final String c;
    private Context d;
    private lz e;
    private String f;

    private CoinManager(Context context)
    {
        d = context;
        c = gx.a(d);
        e = new lz(context);
        f = h();
    }

    public static Context a(CoinManager coinmanager)
    {
        return coinmanager.d;
    }

    public static CoinManager a(Context context)
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        com/dianxinos/common/coins/CoinManager;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new CoinManager(context);
        }
        com/dianxinos/common/coins/CoinManager;
        JVM INSTR monitorexit ;
_L2:
        return b;
        Exception exception;
        exception;
        com/dianxinos/common/coins/CoinManager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void a(Context context, RequestResult requestresult)
    {
        if (context == null || requestresult == null)
        {
            return;
        } else
        {
            nz.b("CoinManager", (new StringBuilder()).append("Consume mid=").append(requestresult.e).append("; code=").append(requestresult.c).toString());
            Intent intent = new Intent("com.dianxinos.common.toolbox.ACTION_COIN_CONSUME");
            intent.putExtra("result_data", requestresult);
            bc.a(context).a(intent);
            return;
        }
    }

    public static void a(Context context, RequestResult requestresult, String s)
    {
        if (context == null || requestresult == null || TextUtils.isEmpty(s))
        {
            return;
        } else
        {
            Intent intent = new Intent("com.dianxinos.common.toolbox.ACTION_COIN_SYNC");
            intent.putExtra("result_data", requestresult);
            intent.putExtra("result_type", s);
            bc.a(context).a(intent);
            return;
        }
    }

    public static void a(Context context, mc mc)
    {
        if (context == null || mc == null)
        {
            return;
        } else
        {
            bc bc1 = bc.a(context);
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("com.dianxinos.common.toolbox.ACTION_COIN_CONSUME");
            intentfilter.addAction("com.dianxinos.common.toolbox.ACTION_COIN_GAIN");
            intentfilter.addAction("com.dianxinos.common.toolbox.ACTION_COIN_SYNC");
            bc1.a(mc, intentfilter);
            return;
        }
    }

    private static void a(Context context, JSONObject jsonobject)
    {
        ma.a(context, jsonobject.getInt("integralmax"));
        JSONArray jsonarray = jsonobject.getJSONArray("function");
        int i = jsonarray.length();
        for (int j = 0; j < i; j++)
        {
            JSONObject jsonobject1 = jsonarray.getJSONObject(j);
            String s = jsonobject1.getString("mid");
            int k = jsonobject1.getInt("score");
            String s1 = jsonobject1.getString("type");
            mf.a(context).a(s, s1, k);
        }

    }

    public static void a(String s)
    {
        lz.a(s);
    }

    public static String b(Context context)
    {
        Account aaccount[] = AccountManager.get(context).getAccountsByType("com.google");
        String s = null;
        if (aaccount != null)
        {
            int i = aaccount.length;
            s = null;
            if (i > 0)
            {
                s = lx.a(aaccount[0].name);
            }
        }
        return s;
    }

    public static void b(Context context, RequestResult requestresult)
    {
        if (context == null || requestresult == null)
        {
            return;
        } else
        {
            Intent intent = new Intent("com.dianxinos.common.toolbox.ACTION_COIN_GAIN");
            intent.putExtra("result_data", requestresult);
            bc.a(context).a(intent);
            return;
        }
    }

    public static void b(Context context, mc mc)
    {
        if (context == null || mc == null)
        {
            return;
        } else
        {
            bc.a(context).a(mc);
            return;
        }
    }

    private void b(oo oo1)
    {
        om.a(d, oo1, false);
        om.b(d, oo1, false);
        om.a(d, oo1, System.currentTimeMillis());
    }

    private String c(Context context)
    {
        org.apache.http.HttpResponse httpresponse;
        java.net.URI uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/integral/config").toString(), null, null);
        httpresponse = e.a(uri, null, true);
        String s = lz.b(httpresponse);
        lz.a(httpresponse);
        return s;
        Exception exception1;
        exception1;
        try
        {
            lz.a(httpresponse);
            throw exception1;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return "";
    }

    private void c(oo oo1)
    {
        om.a(d, oo1, true);
        om.b(d, oo1, false);
    }

    private void g()
    {
        om.a(d, oo.a, true);
        om.b(d, oo.a, false);
        om.a(d, oo.b, true);
        om.b(d, oo.b, false);
    }

    private String h()
    {
        String s = om.c(d);
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        s = b(d);
        if (TextUtils.isEmpty(s))
        {
            s = gx.a(d);
        }
        om.e(d, s);
        d();
_L4:
        nz.b("CoinManager", (new StringBuilder()).append("check login, new account == ").append(s).toString());
        return s;
_L2:
        if (s.contains("@"))
        {
            s = lx.a(s);
            om.e(d, s);
            d();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int a()
    {
        return om.a(d);
    }

    public RequestResult a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        RequestResult requestresult = new RequestResult(s, s1, null);
        if (c()) goto _L2; else goto _L1
_L1:
        requestresult.c = -5;
        b(oo.a);
        RequestResult requestresult1 = requestresult;
_L5:
        this;
        JVM INSTR monitorexit ;
        return requestresult1;
_L2:
        java.net.URI uri;
        JSONObject jsonobject;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", c));
        uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/integral/get").toString(), URLEncodedUtils.format(arraylist, "UTF-8"), null);
        jsonobject = new JSONObject();
        jsonobject.put("tk", c);
        jsonobject.put("ac", f);
        if (s == null || s1 == null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        jsonobject.put("mid", s);
        jsonobject.put("type", s1);
        org.apache.http.HttpResponse httpresponse = e.a(uri, jsonobject.toString(), null);
        requestresult1 = RequestResult.a(lz.b(httpresponse));
        if (requestresult1.c != 200)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        g();
_L3:
        lz.a(httpresponse);
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        nz.a("CoinManager", "query coin error: ", exception1);
        requestresult.c = -3;
        b(oo.a);
        requestresult1 = requestresult;
        continue; /* Loop/switch isn't completed */
        b(oo.a);
          goto _L3
        Exception exception2;
        exception2;
        lz.a(httpresponse);
        throw exception2;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public ArrayList a(List list)
    {
        this;
        JVM INSTR monitorenter ;
        if (c()) goto _L2; else goto _L1
_L1:
        b(oo.d);
        ArrayList arraylist = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return arraylist;
_L2:
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        if (list.size() != 0)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        c(oo.d);
        arraylist = null;
        continue; /* Loop/switch isn't completed */
        java.net.URI uri;
        JSONObject jsonobject;
        JSONArray jsonarray;
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new BasicNameValuePair("tk", c));
        uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/center/buy").toString(), URLEncodedUtils.format(arraylist1, "UTF-8"), null);
        jsonobject = new JSONObject();
        jsonobject.put("tk", c);
        jsonobject.put("ac", f);
        jsonobject.put("type", "9");
        jsonarray = new JSONArray();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); jsonarray.put((String)iterator.next())) { }
        break MISSING_BLOCK_LABEL_236;
        Exception exception1;
        exception1;
        nz.a("CoinManager", "pull items paid by play error: ", exception1);
        b(oo.d);
        arraylist = null;
        continue; /* Loop/switch isn't completed */
        ArrayList arraylist2;
        jsonobject.put("pids", jsonarray);
        arraylist2 = lz.c(e.a(uri, jsonobject.toString(), null));
        mf mf1 = mf.a(d);
        Iterator iterator1 = arraylist2.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            JSONObject jsonobject1 = (JSONObject)iterator1.next();
            String s = jsonobject1.getString("type");
            mf1.b(jsonobject1.getString("id"), s);
            if (!"9".equals(s))
            {
                arraylist2.remove(jsonobject1);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_356;
        Exception exception;
        exception;
        throw exception;
        c(oo.d);
        arraylist = arraylist2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(int i)
    {
        if (i < 0)
        {
            i = 0;
        }
        om.a(d, i);
    }

    public boolean a(oo oo1)
    {
        this;
        JVM INSTR monitorenter ;
        int i = oa.a(d);
        boolean flag = false;
        if (i != 0) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        long l;
        long l1;
        l = System.currentTimeMillis();
        l1 = om.c(d, oo1);
        if (l1 != 0L)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        om.a(d, oo1, l);
        flag = true;
        continue; /* Loop/switch isn't completed */
        if (!om.b(d, oo1))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        int j = l - l1 != 0x1499700L;
        flag = false;
        if (j <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        om.a(d, oo1, l);
        flag = true;
        continue; /* Loop/switch isn't completed */
        boolean flag1 = om.a(d, oo1);
        flag = false;
        if (flag1)
        {
            continue; /* Loop/switch isn't completed */
        }
        int k = l - l1 != 0x36ee80L;
        flag = false;
        if (k <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        om.b(d, oo1, true);
        om.a(d, oo1, l);
        flag = true;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public RequestResult b(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        RequestResult requestresult;
        requestresult = new RequestResult(s, s1, null);
        requestresult.e = s;
        requestresult.f = s1;
        requestresult.c = -1;
        if (c()) goto _L2; else goto _L1
_L1:
        requestresult.c = -4;
        RequestResult requestresult1 = requestresult;
_L4:
        this;
        JVM INSTR monitorexit ;
        return requestresult1;
_L2:
        org.apache.http.HttpResponse httpresponse;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", c));
        java.net.URI uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/integral/decrease").toString(), URLEncodedUtils.format(arraylist, "UTF-8"), null);
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("ac", f);
        jsonobject.put("tk", c);
        jsonobject.put("mid", s);
        jsonobject.put("type", s1);
        httpresponse = e.a(uri, jsonobject.toString(), null);
        RequestResult requestresult2 = RequestResult.a(lz.b(httpresponse));
        requestresult1 = requestresult2;
        if (requestresult1.a())
        {
            mf.a(d).b(s, s1);
        }
        lz.a(httpresponse);
        continue; /* Loop/switch isn't completed */
        Exception exception2;
        exception2;
_L5:
        nz.a("CoinManager", "consume error: ", exception2);
        requestresult1.c = -3;
        Exception exception;
        if (true) goto _L4; else goto _L3
_L3:
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception3;
        exception3;
_L6:
        try
        {
            lz.a(httpresponse);
            throw exception3;
        }
        catch (Exception exception4)
        {
            exception2 = exception4;
        }
        finally
        {
            this;
        }
        requestresult1 = requestresult;
          goto _L5
        Exception exception1;
        exception1;
        exception2 = exception1;
        requestresult1 = requestresult;
          goto _L5
        Exception exception5;
        exception5;
        requestresult = requestresult1;
        exception3 = exception5;
          goto _L6
    }

    public String b()
    {
        return f;
    }

    public RequestResult c(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        RequestResult requestresult;
        requestresult = new RequestResult(s, s1, null);
        requestresult.e = s;
        requestresult.f = s1;
        requestresult.c = -1;
        if (c()) goto _L2; else goto _L1
_L1:
        requestresult.c = -4;
        b(oo.b);
        RequestResult requestresult1 = requestresult;
_L5:
        this;
        JVM INSTR monitorexit ;
        return requestresult1;
_L2:
        org.apache.http.HttpResponse httpresponse;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", c));
        java.net.URI uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/integral/increase").toString(), URLEncodedUtils.format(arraylist, "UTF-8"), null);
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("ms", System.currentTimeMillis());
        jsonobject.put("ac", f);
        jsonobject.put("tk", c);
        jsonobject.put("mid", s);
        jsonobject.put("type", s1);
        httpresponse = e.a(uri, jsonobject.toString(), null);
        RequestResult requestresult2 = RequestResult.a(lz.b(httpresponse));
        requestresult1 = requestresult2;
        if (!requestresult1.d()) goto _L4; else goto _L3
_L3:
        g();
_L7:
        lz.a(httpresponse);
          goto _L5
        Exception exception2;
        exception2;
_L8:
        Exception exception;
        nz.a("CoinManager", "gain coin error: ", exception2);
        requestresult1.c = -3;
        b(oo.b);
        if (true) goto _L5; else goto _L6
_L6:
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        b(oo.b);
          goto _L7
        Exception exception5;
        exception5;
        Exception exception3;
        requestresult = requestresult1;
        exception3 = exception5;
_L9:
        try
        {
            lz.a(httpresponse);
            throw exception3;
        }
        catch (Exception exception4)
        {
            exception2 = exception4;
        }
        finally
        {
            this;
        }
        requestresult1 = requestresult;
          goto _L8
        Exception exception1;
        exception1;
        exception2 = exception1;
        requestresult1 = requestresult;
          goto _L8
        exception3;
          goto _L9
    }

    public boolean c()
    {
        return true;
    }

    public void d()
    {
        if (!c())
        {
            a(50);
            return;
        } else
        {
            pg.a().a(new mb(this));
            return;
        }
    }

    public boolean d(String s, String s1)
    {
        if (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1))
        {
            return false;
        } else
        {
            return mf.a(d).a(s1, s);
        }
    }

    public void e()
    {
        long l;
        long l1;
        l = ma.b(d);
        l1 = System.currentTimeMillis();
        break MISSING_BLOCK_LABEL_12;
        String s;
        for (; TextUtils.isEmpty(s); s = c(d))
        {
            do
            {
                return;
            } while (l1 - l <= a && l1 > l || oa.a(d) == 0);
        }

        JSONObject jsonobject = new JSONObject(s);
        nz.b("CoinManager", (new StringBuilder()).append("response: ").append(s).toString());
        a(d, jsonobject);
        ma.a(d, l1);
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        nz.a("CoinManager", (new StringBuilder()).append("Bad response: ").append(s).toString());
        ma.a(d, l1);
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        nz.a("CoinManager", (new StringBuilder()).append(" IllegalStateException ").append(illegalstateexception).toString());
        ma.a(d, l1);
        return;
        Exception exception;
        exception;
        ma.a(d, l1);
        throw exception;
    }

    public ArrayList f()
    {
        this;
        JVM INSTR monitorenter ;
        if (c()) goto _L2; else goto _L1
_L1:
        b(oo.c);
        ArrayList arraylist1 = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return arraylist1;
_L2:
        ArrayList arraylist2;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("tk", c));
        java.net.URI uri = URIUtils.createURI("http", lz.c, lz.d, (new StringBuilder()).append(lz.e).append("/center/consume").toString(), URLEncodedUtils.format(arraylist, "UTF-8"), null);
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("tk", c);
        jsonobject.put("ac", f);
        arraylist2 = lz.c(e.a(uri, jsonobject.toString(), null));
        mf mf1 = mf.a(d);
        Iterator iterator = arraylist2.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            JSONObject jsonobject1 = (JSONObject)iterator.next();
            String s = jsonobject1.getString("type");
            mf1.b(jsonobject1.getString("id"), s);
            if (!"9".equals(s))
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_259;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        nz.a("CoinManager", "pull items paid by coin error: ", exception1);
        b(oo.c);
        arraylist1 = null;
        continue; /* Loop/switch isn't completed */
        c(oo.c);
        arraylist1 = arraylist2;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }


    private class RequestResult
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new md();
        public int a;
        public int b;
        public int c;
        public int d;
        public String e;
        public String f;
        public int g;

        public static RequestResult a(String s)
        {
            JSONObject jsonobject = new JSONObject(s);
            RequestResult requestresult = new RequestResult(jsonobject.optString("mid"), jsonobject.optString("type"));
            requestresult.a = jsonobject.optInt("total");
            requestresult.b = jsonobject.optInt("midscore");
            requestresult.c = jsonobject.optInt("status");
            requestresult.d = jsonobject.optInt("integalmax");
            requestresult.g = jsonobject.optInt("midpayscore");
            return requestresult;
        }

        public boolean a()
        {
            return c == 200 || c == 201;
        }

        public boolean b()
        {
            return c == 200 || c == 201 || c == 420;
        }

        public boolean c()
        {
            return c == 200 || c == 410 || c == 411 || c == 412;
        }

        public boolean d()
        {
            return c == 200 || c == 410 || c == 411 || c == 412;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            parcel.writeInt(c);
            parcel.writeInt(d);
            parcel.writeString(e);
            parcel.writeString(f);
            parcel.writeInt(g);
        }


        private RequestResult(Parcel parcel)
        {
            a = -1;
            a = parcel.readInt();
            b = parcel.readInt();
            c = parcel.readInt();
            d = parcel.readInt();
            e = parcel.readString();
            f = parcel.readString();
            g = parcel.readInt();
        }

        public RequestResult(Parcel parcel, mb mb1)
        {
            this(parcel);
        }

        private RequestResult(String s, String s1)
        {
            a = -1;
            if (s == null)
            {
                s = "";
            }
            e = s;
            if (s1 == null)
            {
                s1 = "";
            }
            f = s1;
        }

        RequestResult(String s, String s1, mb mb1)
        {
            this(s, s1);
        }
    }

}
