// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class yy extends zf
    implements anz
{

    private static volatile yy d;
    private yx e;
    private ArrayList f;
    private List g;
    private boolean h;

    private yy(Context context, String s)
    {
        super(context, s);
        f = new ArrayList();
        g = new ArrayList();
        h = false;
        e = new yx((new yw(b)).getWritableDatabase());
    }

    public static yy a(Context context)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        yy;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            d = new yy(context, "msgbox");
        }
        yy;
        JVM INSTR monitorexit ;
_L2:
        return d;
        Exception exception;
        exception;
        yy;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private zd a(JSONObject jsonobject, long l, String s)
    {
        zd zd1 = new zd();
        zd1.a = jsonobject.getInt("msg_type");
        if (!b(zd1.a))
        {
            throw new JSONException("not support type");
        }
        zd1.i = jsonobject.getInt("click_action");
        if (!c(zd1.i))
        {
            throw new JSONException("not support action");
        }
        zd1.c = Long.valueOf(l);
        zd1.k = s;
        zd1.d = jsonobject.getString("text");
        zd1.e = jsonobject.optString("icon_url");
        zd1.f = jsonobject.getString("click_params");
        zd1.g = 0;
        int i = jsonobject.optInt("show_time");
        boolean flag = false;
        if (i > 0)
        {
            flag = true;
        }
        zd1.j = flag;
        if (!jsonobject.isNull("guide_page_params"))
        {
            zd1.l = jsonobject.getJSONObject("guide_page_params").toString();
        }
        return zd1;
    }

    private void a(zd zd1)
    {
        zc.a(b, zd1);
    }

    private void b(List list, int i)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = f;
        arraylist1;
        JVM INSTR monitorenter ;
        int j = 0;
_L2:
        za za2;
        if (j >= f.size())
        {
            break MISSING_BLOCK_LABEL_93;
        }
        za2 = (za)f.get(j);
        if ((zb)za2.a.get() != null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        f.remove(j);
        int k;
        k = j;
        break MISSING_BLOCK_LABEL_181;
        arraylist.add(za2);
        k = j + 1;
        break MISSING_BLOCK_LABEL_181;
        arraylist1;
        JVM INSTR monitorexit ;
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            za za1 = (za)iterator.next();
            if (!za1.b)
            {
                zb zb1 = (zb)za1.a.get();
                if (zb1 != null)
                {
                    zb1.a(a(list, zb1.a()));
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_180;
        Exception exception;
        exception;
        arraylist1;
        JVM INSTR monitorexit ;
        throw exception;
        return;
        j = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean b(int i)
    {
        return i >= 0 && i <= 4;
    }

    private void c()
    {
        if (!h)
        {
            List list = e.a(0);
            long l = System.currentTimeMillis();
            for (int i = -1 + list.size(); i >= 0; i--)
            {
                if (((zd)list.get(i)).c.longValue() <= l)
                {
                    list.remove(i);
                }
            }

            g.addAll(list);
            h = true;
        }
    }

    private boolean c(int i)
    {
        return i >= 1 && i <= 2;
    }

    public List a(List list, int i)
    {
        ArrayList arraylist = new ArrayList();
        if (list != null)
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                zd zd1 = (zd)iterator.next();
                if (zd1.a == i)
                {
                    arraylist.add(zd1);
                }
            } while (true);
        }
        return arraylist;
    }

    public void a(int i)
    {
        List list = g;
        list;
        JVM INSTR monitorenter ;
        int j = -1 + g.size();
_L2:
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        if (((zd)g.get(j)).a == i)
        {
            g.remove(j);
        }
        break MISSING_BLOCK_LABEL_82;
        list;
        JVM INSTR monitorexit ;
        e.a();
        b(null, i);
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        j--;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void a(List list)
    {
        zd zd1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); e.a(b, zd1))
        {
            zd1 = (zd)iterator.next();
        }

    }

    protected void a(JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        List list = b(jsonarray);
        synchronized (g)
        {
            c();
            g.addAll(list);
            arraylist.addAll(g);
        }
        a(list);
        b(arraylist, 0);
        return;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a()
    {
        boolean flag;
        if (!a(b).b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bal.a(b, "msgbox", "mbp", Integer.valueOf(1));
        if (flag)
        {
            bal.a(b, "msgbox", "mbps", Integer.valueOf(1));
            return flag;
        } else
        {
            bal.a(b, "msgbox", "mbde", Integer.valueOf(1));
            return flag;
        }
    }

    protected List b(JSONArray jsonarray)
    {
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = 0;
_L5:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        long l;
        String s;
        JSONArray jsonarray1;
        JSONObject jsonobject = jsonarray.getJSONObject(i);
        l = jsonobject.getLong("to");
        s = jsonobject.getString("id");
        jsonarray1 = jsonobject.getJSONArray("contents");
        int j = 0;
_L4:
        if (j >= 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        zd zd1 = a(jsonarray1.getJSONObject(j), l, s);
        a(zd1);
        arraylist.add(zd1);
        if (azu.a() && !TextUtils.isEmpty(zd1.e) && !yi.c(zd1.e))
        {
            azi.a().a(new yz(this, zd1));
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        i++;
          goto _L5
_L2:
        return arraylist;
    }
}
