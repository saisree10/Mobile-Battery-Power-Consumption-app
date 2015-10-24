// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class aub
{

    private static final String a;
    private static aub s;
    private long b;
    private long c;
    private long d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;
    private azr j;
    private Context k;
    private ContentResolver l;
    private atz m;
    private int n;
    private int o;
    private int p;
    private long q;
    private boolean r;

    private aub(Context context)
    {
        n = 100;
        o = 0;
        p = -1;
        q = 0L;
        r = false;
        k = context.getApplicationContext();
        l = k.getContentResolver();
        m = atz.a(k);
        c();
        j = azr.a(context);
    }

    public static aub a(Context context)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        aub;
        JVM INSTR monitorenter ;
        if (s == null)
        {
            s = new aub(context);
        }
        aub;
        JVM INSTR monitorexit ;
_L2:
        return s;
        Exception exception;
        exception;
        aub;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(int i1, long l1, long l2)
    {
        boolean flag;
        long al[];
        long l3;
        long l4;
        if (android.provider.Settings.System.getInt(l, "stay_on_while_plugged_in", 0) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        al = j.a(i1, flag);
        l3 = l1 + al[0];
        l4 = l2 + al[1];
        j.a(i1, flag, l3, l4);
    }

    private long[] a(int i1, boolean flag)
    {
        long al[] = {
            0L, 0L
        };
        if (i1 != 2) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        al[0] = c;
        al[1] = b;
_L6:
        return al;
_L4:
        al[0] = e;
        al[1] = d;
        return al;
_L2:
        if (i1 == 1)
        {
            if (flag)
            {
                al[0] = g;
                al[1] = f;
                return al;
            } else
            {
                al[0] = i;
                al[1] = h;
                return al;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void c()
    {
        int i1;
        i1 = 0;
        azt.a("ChargingTimeHelper", (new StringBuilder()).append("reading values for ").append(a).toString());
        Document document1;
        java.io.InputStream inputstream = k.getAssets().open("charging_profile.xml");
        document1 = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputstream);
        Document document = document1;
_L1:
        NodeList nodelist;
        Element element = document.getDocumentElement();
        nodelist = element.getElementsByTagName(a);
        if (nodelist != null && nodelist.getLength() != 0)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        nodelist = element.getElementsByTagName("default_device");
        if (nodelist != null && nodelist.getLength() != 0)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        azt.d("ChargingTimeHelper", "Implement error! No default values found!");
_L2:
        return;
        Exception exception;
        exception;
        azt.d("ChargingTimeHelper", (new StringBuilder()).append("failed to parse with exception: ").append(exception.toString()).toString());
        document = null;
          goto _L1
        NodeList nodelist1 = ((Element)nodelist.item(0)).getElementsByTagName("item");
        while (i1 < nodelist1.getLength()) 
        {
label0:
            {
                Element element1 = (Element)nodelist1.item(i1);
                String s1 = element1.getAttribute("plug");
                String s2 = element1.getAttribute("screen");
                String s3 = element1.getAttribute("time");
                String s4 = element1.getAttribute("count");
                long l1;
                long l2;
                try
                {
                    l1 = Long.parseLong(s3);
                    l2 = Long.parseLong(s4);
                }
                catch (Exception exception1)
                {
                    azt.d("ChargingTimeHelper", (new StringBuilder()).append("failed to parse, rate: ").append(s3).append(", gap: ").append(s4).toString());
                    break label0;
                }
                if ("ac".equals(s1))
                {
                    if ("on".equals(s2))
                    {
                        f = l1;
                        g = l2;
                    } else
                    if ("off".equals(s2))
                    {
                        h = l1;
                        i = l2;
                    } else
                    {
                        azt.d("ChargingTimeHelper", (new StringBuilder()).append("unknown screen attribute value: ").append(s2).toString());
                    }
                } else
                if ("usb".equals(s1))
                {
                    if ("on".equals(s2))
                    {
                        b = l1;
                        c = l2;
                    } else
                    if ("off".equals(s2))
                    {
                        d = l1;
                        e = l2;
                    } else
                    {
                        azt.d("ChargingTimeHelper", (new StringBuilder()).append("unknown screen attribute value: ").append(s2).toString());
                    }
                } else
                {
                    azt.d("ChargingTimeHelper", (new StringBuilder()).append("unknown plug attribute value: ").append(s1).toString());
                }
            }
            i1++;
        }
          goto _L2
    }

    public void a()
    {
        o = 0;
        p = -1;
        q = 0L;
        r = false;
    }

    public void a(int i1, int j1, int k1, long l1, boolean flag)
    {
        if (i1 == 0)
        {
            return;
        }
        if (p != -1 && (j1 > p || j1 == p && flag))
        {
            if (r && j1 < k1)
            {
                a(i1, j1 - p, l1 - q);
            }
            r = true;
        } else
        {
            azt.a("ChargingTimeHelper", (new StringBuilder()).append("skip updating, mPreLevel: ").append(p).append(", curLevel: ").append(j1).toString());
        }
        if (flag)
        {
            q = 0L;
            o = 0;
            n = 100;
            p = -1;
            r = false;
            return;
        }
        if (j1 - p > 0)
        {
            q = l1;
        }
        o = i1;
        n = k1;
        p = j1;
    }

    public long b()
    {
        boolean flag;
        long al[];
        long al1[];
        long l1;
        long l2;
        double d1;
        long l3;
        if (android.provider.Settings.System.getInt(l, "stay_on_while_plugged_in", 0) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        al = j.a(o, flag);
        al1 = a(o, flag);
        l1 = al[0] + al1[0];
        l2 = al[1] + al1[1];
        if (l1 > 0L)
        {
            d1 = (double)l2 / (double)l1;
        } else
        {
            d1 = 0.0D;
        }
        l3 = (long)(d1 * (double)(n - p));
        if (d1 == 0.0D || l3 < 0L)
        {
            azt.d("ChargingTimeHelper", (new StringBuilder()).append("Bad state, mScale: ").append(n).append(", mLevel: ").append(p).append(", rate: ").append(d1).append(", plug: ").append(o).toString());
            return -1L;
        } else
        {
            return l3;
        }
    }

    static 
    {
        a = Build.DEVICE;
    }
}
