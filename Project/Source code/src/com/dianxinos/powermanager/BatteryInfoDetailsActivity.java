// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aac;
import aad;
import aae;
import aaf;
import aag;
import aah;
import aao;
import acx;
import acy;
import acz;
import adc;
import add;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import atj;
import aud;
import auu;
import azf;
import azq;
import azw;
import bal;
import bao;
import com.dianxinos.powermanager.ui.DragListView;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;
import ly;

public class BatteryInfoDetailsActivity extends aao
    implements adc
{

    private static final int a[];
    private static final int b[];
    private MainTitle c;
    private final int d = -1;
    private ArrayList e;
    private ArrayList f;
    private ArrayList g;
    private boolean h;
    private final int i[];
    private final int j[];
    private final int k[];
    private acz l;
    private aud m;
    private boolean n;
    private DragListView o;
    private aah p;
    private acx q;
    private String r;

    public BatteryInfoDetailsActivity()
    {
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
        int ai[] = new int[6];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f020048;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f020049;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f02004a;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f02004b;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai[4] = 0x7f02004c;
        com.dianxinos.dxbs.R.drawable _tmp5 = ly.e;
        ai[5] = 0x7f02004d;
        i = ai;
        int ai1[] = new int[6];
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        ai1[0] = 0x7f0a022f;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        ai1[1] = 0x7f0a022d;
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        ai1[2] = 0x7f0a022c;
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        ai1[3] = 0x7f0a0247;
        com.dianxinos.dxbs.R.string _tmp10 = ly.i;
        ai1[4] = 0x7f0a022e;
        com.dianxinos.dxbs.R.string _tmp11 = ly.i;
        ai1[5] = 0x7f0a0230;
        j = ai1;
        int ai2[] = new int[11];
        com.dianxinos.dxbs.R.drawable _tmp12 = ly.e;
        ai2[0] = 0x7f02004e;
        com.dianxinos.dxbs.R.drawable _tmp13 = ly.e;
        ai2[1] = 0x7f020051;
        com.dianxinos.dxbs.R.drawable _tmp14 = ly.e;
        ai2[2] = 0x7f020052;
        com.dianxinos.dxbs.R.drawable _tmp15 = ly.e;
        ai2[3] = 0x7f020053;
        com.dianxinos.dxbs.R.drawable _tmp16 = ly.e;
        ai2[4] = 0x7f020054;
        com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
        ai2[5] = 0x7f020055;
        com.dianxinos.dxbs.R.drawable _tmp18 = ly.e;
        ai2[6] = 0x7f020056;
        com.dianxinos.dxbs.R.drawable _tmp19 = ly.e;
        ai2[7] = 0x7f020057;
        com.dianxinos.dxbs.R.drawable _tmp20 = ly.e;
        ai2[8] = 0x7f020058;
        com.dianxinos.dxbs.R.drawable _tmp21 = ly.e;
        ai2[9] = 0x7f02004f;
        com.dianxinos.dxbs.R.drawable _tmp22 = ly.e;
        ai2[10] = 0x7f020050;
        k = ai2;
        n = true;
        r = null;
    }

    private String a(int i1, int j1)
    {
        return a(((Context) (this)), i1, j1);
    }

    public static String a(Context context, int i1, int j1)
    {
        Resources resources = context.getResources();
        if (i1 == -1)
        {
            if (j1 == 1)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                return resources.getString(0x7f0a013b);
            }
            if (j1 == 0)
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                return resources.getString(0x7f0a013c);
            } else
            {
                com.dianxinos.dxbs.R.string _tmp2 = ly.i;
                return resources.getString(0x7f0a013a);
            }
        } else
        {
            return azq.c(context, i1);
        }
    }

    private void a()
    {
        q = acx.a(this);
        e = q.e();
    }

    public static boolean a(BatteryInfoDetailsActivity batteryinfodetailsactivity, boolean flag)
    {
        batteryinfodetailsactivity.h = flag;
        return flag;
    }

    public static int[] a(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        return batteryinfodetailsactivity.k;
    }

    public static ArrayList b(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        return batteryinfodetailsactivity.f;
    }

    private void b()
    {
        if (c())
        {
            bal.b(this, r);
            q.b(r);
        }
    }

    private void b(add add1)
    {
        int i1;
        int j1;
        acy acy6;
        int k1;
        String s1;
        f.clear();
        g.clear();
        StringBuffer stringbuffer = new StringBuffer();
        Resources resources = getResources();
        acy acy1 = new acy(this);
        boolean flag;
        acy acy2;
        boolean flag1;
        acy acy3;
        boolean flag2;
        double d1;
        acy acy4;
        boolean flag3;
        acy acy5;
        boolean flag4;
        String s;
        if (e.indexOf(Integer.valueOf(0)) == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (l.c(add1.g))
        {
            String as[] = bao.a(this, add1.g);
            if (add1.g >= 450)
            {
                acy1.a(true);
            }
            stringbuffer.append(as[0]);
            stringbuffer.append(" ");
            stringbuffer.append(as[1]);
            acy1.b(i[0]);
            acy1.c(j[0]);
            acy1.b(stringbuffer.toString());
            acy1.d(0);
            if (flag)
            {
                g.add(Integer.valueOf(0));
            }
        } else
        {
            if (!flag)
            {
                e.remove(e.indexOf(Integer.valueOf(0)));
            }
            acy1.d(-1);
        }
        f.add(acy1);
        acy2 = new acy(this);
        if (e.indexOf(Integer.valueOf(1)) == -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        l;
        if (acz.d(add1.f))
        {
            if (stringbuffer.length() > 0)
            {
                stringbuffer.delete(0, stringbuffer.length());
            }
            if (add1.f < 3000 || 4300 < add1.f)
            {
                acy2.a(true);
            }
            ly.i;
            Object aobj[] = new Object[2];
            aobj[0] = Double.toString((double)add1.f / 1000D);
            ly.i;
            aobj[1] = getString(0x7f0a0363);
            stringbuffer.append(getString(0x7f0a036c, aobj));
            acy2.b(i[1]);
            acy2.c(j[1]);
            acy2.b(stringbuffer.toString());
            acy2.d(1);
            if (flag1)
            {
                g.add(Integer.valueOf(1));
            }
        } else
        {
            if (!flag1)
            {
                e.remove(e.indexOf(Integer.valueOf(1)));
            }
            acy2.d(-1);
        }
        f.add(acy2);
        acy3 = new acy(this);
        if (e.indexOf(Integer.valueOf(2)) == -1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        d1 = atj.a(this);
        if (d1 > 0.0D && add1.j > 0)
        {
            if (stringbuffer.length() > 0)
            {
                stringbuffer.delete(0, stringbuffer.length());
            }
            stringbuffer.append((int)((d1 * (double)add1.j) / 100D));
            stringbuffer.append(" ");
            ly.i;
            stringbuffer.append(resources.getString(0x7f0a0360));
            acy3.b(i[2]);
            acy3.c(j[2]);
            acy3.b(stringbuffer.toString());
            acy3.d(2);
            if (flag2)
            {
                g.add(Integer.valueOf(2));
            }
        } else
        {
            if (!flag2)
            {
                e.remove(e.indexOf(Integer.valueOf(2)));
            }
            acy3.d(-1);
        }
        f.add(acy3);
        acy4 = new acy(this);
        if (e.indexOf(Integer.valueOf(3)) == -1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (d1 > 0.0D)
        {
            if (stringbuffer.length() > 0)
            {
                stringbuffer.delete(0, stringbuffer.length());
            }
            stringbuffer.append((int)d1);
            stringbuffer.append(" ");
            ly.i;
            stringbuffer.append(resources.getString(0x7f0a0360));
            acy4.b(i[3]);
            acy4.c(j[3]);
            acy4.b(stringbuffer.toString());
            acy4.d(3);
            if (flag3)
            {
                g.add(Integer.valueOf(3));
            }
        } else
        {
            if (!flag3)
            {
                e.remove(e.indexOf(Integer.valueOf(3)));
            }
            acy4.d(-1);
        }
        f.add(acy4);
        acy5 = new acy(this);
        if (e.indexOf(Integer.valueOf(4)) == -1)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        s = add1.h;
        if (s != null && s.length() != 0)
        {
            acy5.b(i[4]);
            acy5.c(j[4]);
            acy5.b(s);
            acy5.d(4);
            if (flag4)
            {
                g.add(Integer.valueOf(4));
            }
        } else
        {
            if (!flag4)
            {
                e.remove(e.indexOf(Integer.valueOf(4)));
            }
            acy5.d(-1);
        }
        f.add(acy5);
        m.a();
        i1 = a.length;
        j1 = 0;
_L9:
        if (j1 >= 5)
        {
            break MISSING_BLOCK_LABEL_1343;
        }
        acy6 = new acy(this);
        acy6.b(a[j1]);
        acy6.c(b[j1]);
        k1 = add1.j;
        s1 = null;
        j1;
        JVM INSTR tableswitch 0 4: default 912
    //                   0 1198
    //                   1 1219
    //                   2 1240
    //                   3 1261
    //                   4 1282;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_1282;
_L7:
        acy6.b(s1);
        boolean flag5;
        if (e.indexOf(Integer.valueOf(i1 + j1)) == -1)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        if (j1 == 0 && !n)
        {
            if (!flag5)
            {
                e.remove(e.indexOf(Integer.valueOf(i1 + j1)));
            }
            acy6.d(-1);
        } else
        {
            if (flag5)
            {
                g.add(Integer.valueOf(i1 + j1));
            }
            acy6.d(i1 + j1);
        }
        f.add(acy6);
        j1++;
        continue; /* Loop/switch isn't completed */
_L2:
        s1 = a(m.a(k1, 1), 0);
          goto _L7
_L3:
        s1 = a(m.a(k1, 2), 1);
          goto _L7
_L4:
        s1 = a(m.a(k1, 4), 2);
          goto _L7
_L5:
        s1 = a(m.a(k1, 3), 3);
          goto _L7
        s1 = a(m.a(k1, 0), 4);
          goto _L7
        if (g.size() > 0)
        {
            e.addAll(g);
        }
        if (p == null)
        {
            p = new aah(this, this);
            o.setAdapter(p);
        }
        runOnUiThread(new aac(this));
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static ArrayList c(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        return batteryinfodetailsactivity.e;
    }

    private boolean c()
    {
        r = null;
        if (p == null)
        {
            return false;
        }
        ArrayList arraylist = p.a();
        e.clear();
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            int j1 = ((acy)iterator.next()).f();
            if (j1 != -1)
            {
                e.add(Integer.valueOf(j1));
                stringbuilder.append(j1);
                stringbuilder.append(",");
            }
        } while (true);
        int i1 = stringbuilder.length();
        if (i1 > 0)
        {
            stringbuilder.deleteCharAt(i1 - 1);
        }
        r = stringbuilder.toString();
        return !q.f().equals(r);
    }

    public static aah d(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        return batteryinfodetailsactivity.p;
    }

    private void d()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        o = (DragListView)findViewById(0x7f070031);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        c = (MainTitle)findViewById(0x7f070030);
        c.a();
        MainTitle maintitle = c;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        c.setLeftButtonOnclickListener(new aad(this));
        MainTitle maintitle1 = c;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        maintitle1.setRightButtonIcon(0x7f020059);
        c.setRightButtonOnclickListener(new aae(this));
        boolean flag;
        add add1;
        if (azw.i && azf.b(this))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        n = flag;
        m = new aud(this);
        l = acz.a(this);
        l.a(this);
        add1 = l.c();
        if (add1 != null)
        {
            b(add1);
        }
    }

    public static void e(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        batteryinfodetailsactivity.b();
    }

    public static boolean f(BatteryInfoDetailsActivity batteryinfodetailsactivity)
    {
        return batteryinfodetailsactivity.h;
    }

    public void a(add add1)
    {
        if (!h)
        {
            b(add1);
        }
    }

    public void onBackPressed()
    {
        if (c() && h)
        {
            auu auu1 = new auu(this);
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            auu1.setTitle(0x7f0a02b4);
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            auu1.c(0x7f0a02b5);
            com.dianxinos.dxbs.R.string _tmp2 = ly.i;
            auu1.a(0x7f0a0386, new aaf(this));
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            auu1.b(0x7f0a0387, new aag(this, auu1));
            auu1.show();
            return;
        } else
        {
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03000b);
        a();
        d();
    }

    static 
    {
        int ai[] = new int[5];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f0203cc;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f0203ce;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f0203cd;
        com.dianxinos.dxbs.R.drawable _tmp3 = ly.e;
        ai[3] = 0x7f0203d1;
        com.dianxinos.dxbs.R.drawable _tmp4 = ly.e;
        ai[4] = 0x7f0203cf;
        a = ai;
        int ai1[] = new int[5];
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        ai1[0] = 0x7f0a0137;
        com.dianxinos.dxbs.R.string _tmp6 = ly.i;
        ai1[1] = 0x7f0a0136;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        ai1[2] = 0x7f0a0138;
        com.dianxinos.dxbs.R.string _tmp8 = ly.i;
        ai1[3] = 0x7f0a0139;
        com.dianxinos.dxbs.R.string _tmp9 = ly.i;
        ai1[4] = 0x7f0a0135;
        b = ai1;
    }
}
