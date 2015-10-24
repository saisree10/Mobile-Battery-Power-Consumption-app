// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public abstract class nq
    implements ny
{

    protected static boolean a = false;
    protected Context b;
    private Map c;
    private bc d;
    private oq e;
    private HashSet f;

    protected nq(Context context, oq oq1)
    {
        f = new HashSet();
        b = context;
        c = new HashMap();
        d = bc.a(context);
        e = oq1;
    }

    private String a()
    {
        String s;
        try
        {
            s = android.provider.Settings.Secure.getString(b.getContentResolver(), "android_id");
        }
        catch (Exception exception)
        {
            nz.b("BaseDataPuller", "Get android id failed.");
            return "";
        }
        return s;
    }

    static nq a(Context context, oq oq1)
    {
        return new no(context, oq1);
    }

    static oq a(nq nq1)
    {
        return nq1.e;
    }

    private void b(String s, int i)
    {
        pg.a().a(new nr(this, s, i));
    }

    private boolean b(boolean flag)
    {
        boolean flag1 = true;
        if (!pa.c())
        {
            flag1 = false;
        } else
        if (!flag && flag1 != oa.a(b))
        {
            return false;
        }
        return flag1;
    }

    private byte[] e(String s)
    {
        InputStream inputstream;
        ob.a(b, "st");
        inputstream = (InputStream)(new URL(s)).openConnection().getContent();
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[4096];
_L3:
        int i = inputstream.read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L3
        Exception exception3;
        exception3;
        Exception exception;
        Object obj;
        obj = inputstream;
        exception = exception3;
_L11:
        nz.a("BaseDataPuller", "download icon Failed: ", exception);
        if (!pi.a(b)) goto _L5; else goto _L4
_L4:
        ob.a(b, "oe");
_L7:
        pi.a(((java.io.Closeable) (obj)));
        return null;
_L2:
        byte abyte1[] = bytearrayoutputstream.toByteArray();
        pi.a(inputstream);
        return abyte1;
_L5:
        ob.a(b, "nn");
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception1;
        exception1;
_L9:
        pi.a(((java.io.Closeable) (obj)));
        throw exception1;
        exception1;
        obj = null;
        continue; /* Loop/switch isn't completed */
        Exception exception2;
        exception2;
        obj = inputstream;
        exception1 = exception2;
        if (true) goto _L9; else goto _L8
_L8:
        exception;
        obj = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    protected void a(String s, int i)
    {
        Intent intent = new Intent("com.dianxinos.toolbox.ACTION_ICON_COMPLETED");
        intent.putExtra("tag", s);
        intent.putExtra("icon_count", i);
        d.a(intent);
    }

    protected void a(String s, int i, boolean flag)
    {
        Intent intent = new Intent("com.dianxinos.toolbox.ACTION_PULL_COMPLETED");
        intent.putExtra("tag", s);
        intent.putExtra("net_status", i);
        intent.putExtra("is_updated", flag);
        d.a(intent);
    }

    protected void a(String s, boolean flag)
    {
        om.d(b, s);
        c.put(s, Boolean.valueOf(flag));
    }

    protected abstract void a(od od1);

    protected void a(oe oe1)
    {
        String s = oe1.a;
        int i = oe1.c;
        boolean flag = oe1.d.b();
        int j = oe1.d.c();
        List list = oe1.b;
        if (i != 403)
        {
            a(s, i, false);
            nz.b("BaseDataPuller", (new StringBuilder()).append("Pull completed, Network issue! ").append(s).toString());
            a(s, false);
            return;
        }
        if (list == null || list.isEmpty())
        {
            a(s, i, false);
            nz.b("BaseDataPuller", (new StringBuilder()).append("Pull completed, Empty list issue! ").append(s).toString());
            a(s, false);
            return;
        }
        ou ou1 = (ou)list.get(0);
        if ("empty".equals(ou1.f) && ("http://www.dianxinos.com".equals(ou1.m) || "http://www.dianxinos.com".equals(ou1.n)))
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Pull completed, COMMAND received! ").append(s).toString());
            e.e(s);
            a(s, 403, true);
            a(s, false);
            return;
        }
        if (e.a(s, list))
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Pull completed, New data received! ").append(s).toString());
            e.a(s, true);
            a(s, 403, true);
        } else
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Pull completed, No new data! ").append(s).toString());
            a(s, 403, false);
        }
        if (b(flag))
        {
            b(s, j);
        }
        a(s, false);
    }

    protected void a(ou ou1)
    {
        if (ou1.m.contains("DXANDROIDID"))
        {
            String s2 = a();
            ou1.m = ou1.m.replace("DXANDROIDID", s2);
        } else
        {
            if ("appflood".equalsIgnoreCase(ou1.k))
            {
                String s1 = a();
                ArrayList arraylist1 = new ArrayList();
                arraylist1.add(new BasicNameValuePair("aid", s1));
                ou1.m = (new StringBuilder()).append(ou1.m).append("&").append(URLEncodedUtils.format(arraylist1, "UTF-8")).toString();
                return;
            }
            if ("efun".equalsIgnoreCase(ou1.k))
            {
                String s = a();
                ArrayList arraylist = new ArrayList();
                arraylist.add(new BasicNameValuePair("uinfo", s));
                ou1.m = (new StringBuilder()).append(ou1.m).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
                return;
            }
        }
    }

    public void a(boolean flag)
    {
        nz.b("BaseDataPuller", "Start pull all tags!");
        od od1;
        for (Iterator iterator = e.b().iterator(); iterator.hasNext(); b(od1))
        {
            od1 = new od((String)iterator.next());
            od1.b(flag);
        }

    }

    protected boolean a(String s)
    {
        if (c.containsKey(s))
        {
            return ((Boolean)c.get(s)).booleanValue();
        } else
        {
            return false;
        }
    }

    public void b(String s)
    {
        b(s, 0x7fffffff);
    }

    public void b(od od1)
    {
        int i = oa.a(b);
        if (i == 0)
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Not active network: ").append(i).toString());
            return;
        }
        long l = om.c(b, od1.a);
        long l1 = System.currentTimeMillis() - l;
        if (!od1.a() && l1 > 0L && l1 < 0x1499700L)
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append(od1.a).append(" less than 6 hours; drop this request.").toString());
            return;
        }
        if (a(od1.a))
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Already pulling ").append(od1.a).append("; drop this request.").toString());
            return;
        } else
        {
            nz.b("BaseDataPuller", (new StringBuilder()).append("Start pull tag: ").append(od1.a).toString());
            a(od1.a, true);
            a(od1);
            return;
        }
    }

    boolean c(String s)
    {
label0:
        {
            synchronized (f)
            {
                if (!f.contains(s))
                {
                    break label0;
                }
            }
            return false;
        }
        hashset;
        JVM INSTR monitorexit ;
        if (TextUtils.isEmpty(s))
        {
            nz.b("BaseDataPuller", "Empty url, skip download");
            return false;
        }
        break MISSING_BLOCK_LABEL_46;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag = e.a(s);
        boolean flag1 = false;
        if (!flag)
        {
            byte abyte0[] = e(s);
            if (abyte0 != null)
            {
                e.a(s, abyte0);
                nz.b("BaseDataPuller", (new StringBuilder()).append("pull ICON OK: ").append(s).toString());
                flag1 = true;
            } else
            {
                nz.b("BaseDataPuller", (new StringBuilder()).append("pull ICON Fail:").append(s).toString());
                flag1 = false;
            }
        }
        synchronized (f)
        {
            f.remove(s);
        }
        return flag1;
        exception1;
        hashset1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    protected int d(String s)
    {
        ot ot1 = e.d(s);
        if (ot1 == null)
        {
            return 18;
        } else
        {
            return ot1.c;
        }
    }

}
