// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager;

import aao;
import aat;
import aau;
import aav;
import adp;
import afc;
import afs;
import akx;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import aoe;
import aoj;
import azg;
import azp;
import azz;
import bal;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.optimizer.module.messagebox.MessageBoxActivity;
import com.dianxinos.powermanager.chargingrecord.ChargerRecordActivity;
import com.dianxinos.powermanager.menu.MoreSettingsActivity;
import com.dianxinos.powermanager.skinshop.MySkinActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ly;
import ma;
import mc;
import pt;
import zc;
import zz;

public class PersonalCenterActivity extends aao
    implements android.view.View.OnClickListener, android.view.animation.Animation.AnimationListener
{

    private static final int a[];
    private static final String b[] = {
        "ChargerRecordActivity", "SmartSettingsActivity", "MySkinActivity"
    };
    private static Bitmap c = null;
    private int A;
    private float B;
    private float C;
    private boolean D;
    private String E[];
    private String F[];
    private String G;
    private ArrayList H;
    private afc I;
    private BroadcastReceiver J;
    private mc K;
    private Handler L;
    private View d;
    private View e;
    private TextView f;
    private TextView g;
    private View h;
    private ImageView i;
    private View j;
    private View k;
    private LinearLayout l;
    private ScrollView m;
    private View n;
    private boolean o;
    private boolean p;
    private ScrollView q;
    private ImageView r;
    private Animation s;
    private Animation t;
    private AnimationSet u;
    private AnimationSet v;
    private Animation w;
    private Animation x;
    private Animation y;
    private Animation z;

    public PersonalCenterActivity()
    {
        o = false;
        p = false;
        B = 0.0F;
        C = 0.0F;
        D = false;
        H = new ArrayList();
        K = new aat(this);
        L = new aau(this);
    }

    private View a(String s1)
    {
        TextView textview = new TextView(this);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        int i1 = resources.getDimensionPixelSize(0x7f08029e);
        float f1 = getResources().getDisplayMetrics().density;
        textview.setTextSize((float)i1 / f1);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        textview.setLineSpacing(resources1.getDimension(0x7f0802a2), 1.0F);
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        textview.setTextColor(resources2.getColor(0x7f0900c0));
        textview.setText(s1);
        Resources resources3 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp3 = ly.d;
        textview.setPadding(0, (int)resources3.getDimension(0x7f0802a7), 0, 0);
        return textview;
    }

    private Animation a(int i1, int j1, int k1, int l1, int i2, int j2, int k2, 
            int l2, boolean flag)
    {
        TranslateAnimation translateanimation = new TranslateAnimation(i1, j1, k1, l1, i2, j2, k2, l2);
        translateanimation.setFillAfter(flag);
        translateanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        translateanimation.setDuration(300L);
        return translateanimation;
    }

    public static void a(Activity activity, int i1)
    {
        View view = activity.findViewById(i1);
        if (c != null)
        {
            c.recycle();
            c = null;
        }
        c = Bitmap.createBitmap(view.getWidth(), view.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(c));
    }

    private void a(com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        Message message = new Message();
        message.what = 250;
        message.arg1 = requestresult.a;
        L.sendMessage(message);
    }

    public static void a(PersonalCenterActivity personalcenteractivity)
    {
        personalcenteractivity.e();
    }

    public static void a(PersonalCenterActivity personalcenteractivity, com.dianxinos.common.coins.CoinManager.RequestResult requestresult)
    {
        personalcenteractivity.a(requestresult);
    }

    private View b(String s1)
    {
        TextView textview = new TextView(this);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        int i1 = resources.getDimensionPixelSize(0x7f08029f);
        float f1 = getResources().getDisplayMetrics().density;
        textview.setTextSize((float)i1 / f1);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp1 = ly.d;
        textview.setLineSpacing(resources1.getDimension(0x7f0802a3), 1.0F);
        Resources resources2 = getResources();
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        int j1 = (int)resources2.getDimension(0x7f0802a4);
        textview.setPadding(0, j1, 0, j1);
        Resources resources3 = getResources();
        com.dianxinos.dxbs.R.color _tmp3 = ly.c;
        textview.setTextColor(resources3.getColor(0x7f0900c1));
        textview.setText(s1);
        return textview;
    }

    private String d()
    {
        List list;
        int i1;
        int j1;
        int k1;
        String s2;
        String s3;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        ly.i;
        String s1 = getString(0x7f0a0228);
        ly.i;
        intent.putExtra("android.intent.extra.TEXT", getString(0x7f0a010d, new Object[] {
            s1, "http://dxurl.cn/dxbs/share_feature_gp"
        }));
        list = getPackageManager().queryIntentActivities(intent, 0);
        if (list == null)
        {
            return null;
        }
        i1 = list.size();
        j1 = H.size();
        k1 = 0;
        s2 = null;
        s3 = null;
_L2:
        String s4;
        String s5;
        int l1;
        if (k1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        ActivityInfo activityinfo = ((ResolveInfo)list.get(k1)).activityInfo;
        if (!H.contains(activityinfo.packageName))
        {
            break MISSING_BLOCK_LABEL_241;
        }
        int i2 = H.indexOf(activityinfo.packageName);
        if (i2 >= j1)
        {
            break MISSING_BLOCK_LABEL_241;
        }
        s5 = activityinfo.packageName;
        s4 = activityinfo.name;
        l1 = i2;
_L3:
        k1++;
        j1 = l1;
        s3 = s5;
        s2 = s4;
        if (true) goto _L2; else goto _L1
_L1:
        if (s3 == null)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(s3).append(",").append(s2).toString();
        }
        s4 = s2;
        s5 = s3;
        l1 = j1;
          goto _L3
    }

    private void e()
    {
        int i1 = 0;
        boolean flag = zc.a(this);
        ImageView imageview = i;
        int j1;
        View view;
        byte byte0;
        CoinManager coinmanager;
        boolean flag1;
        boolean flag2;
        int k1;
        int ai[];
        if (flag)
        {
            j1 = 0;
        } else
        {
            j1 = 8;
        }
        imageview.setVisibility(j1);
        m.setVisibility(0);
        q.setVisibility(0);
        G = d();
        e.setClickable(true);
        d.setClickable(true);
        view = d;
        if (G == null)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        k.setClickable(true);
        coinmanager = CoinManager.a(this);
        g.setText(Integer.toString(coinmanager.a()));
        g.setGravity(16);
        flag1 = akx.a(this).b();
        if (flag1)
        {
            h.setVisibility(8);
        }
        if (flag1 || coinmanager.d("10", aoe.a.b()))
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        k1 = aoe.a().size();
        if (!flag2)
        {
            Iterator iterator = aoe.a().iterator();
            k1 = 0;
            while (iterator.hasNext()) 
            {
                int l1;
                if (coinmanager.d("10", ((aoe)iterator.next()).b()))
                {
                    l1 = k1 + 1;
                } else
                {
                    l1 = k1;
                }
                k1 = l1;
            }
        }
        ai = new int[3];
        ai[0] = afs.a(this).a();
        ai[1] = k1;
        ai[2] = 4 + aoj.b().a().size() + adp.a(this).l().size();
        while (i1 < l.getChildCount()) 
        {
            zz zz1 = (zz)l.getChildAt(i1);
            zz1.setCount(ai[i1]);
            if (i1 == 0 && ai[i1] < 2)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                zz1.setTitle(0x7f0a02f9);
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                zz1.setDesc(0x7f0a02fa);
                zz1.setTag("BatteryChargeDetailsDialog");
            } else
            {
                zz1.setTitle(E[i1]);
                zz1.setDesc(F[i1]);
                zz1.setTag(b[i1]);
            }
            i1++;
        }
    }

    private void f()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        ((TextView)findViewById(0x7f07017a)).setTypeface(azp.a(this).a());
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        m = (ScrollView)findViewById(0x7f070178);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        n = findViewById(0x7f070179);
        n.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        TextView textview = (TextView)findViewById(0x7f07017c);
        com.dianxinos.dxbs.R.string _tmp4 = ly.i;
        String s1 = getString(0x7f0a02d2);
        com.dianxinos.dxbs.R.string _tmp5 = ly.i;
        String s2 = getString(0x7f0a036d);
        textview.setText((new StringBuilder()).append(s1).append(" ").append(s2).toString());
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f07017b);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.array _tmp7 = ly.m;
        String as[] = resources.getStringArray(0x7f0d000a);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.array _tmp8 = ly.m;
        String as1[] = resources1.getStringArray(0x7f0d000b);
        if (as1.length > 4)
        {
            as1[4] = as1[4].replace("xx", Integer.toString(ma.a(this)));
        }
        for (int i1 = 0; i1 < as.length; i1++)
        {
            linearlayout.addView(a(as[i1]));
            linearlayout.addView(b(as1[i1]));
        }

        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        q = (ScrollView)findViewById(0x7f07017d);
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        r = (ImageView)findViewById(0x7f07018a);
        r.setImageBitmap(c);
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        d = findViewById(0x7f07017e);
        d.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        e = findViewById(0x7f07017f);
        e.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        f = (TextView)findViewById(0x7f070180);
        com.dianxinos.dxbs.R.id _tmp14 = ly.f;
        g = (TextView)findViewById(0x7f070182);
        com.dianxinos.dxbs.R.id _tmp15 = ly.f;
        h = findViewById(0x7f070145);
        h.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp16 = ly.f;
        i = (ImageView)findViewById(0x7f070186);
        com.dianxinos.dxbs.R.id _tmp17 = ly.f;
        j = findViewById(0x7f070183);
        j.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp18 = ly.f;
        k = findViewById(0x7f070187);
        k.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp19 = ly.f;
        l = (LinearLayout)findViewById(0x7f070189);
    }

    private void g()
    {
        o = false;
        q.startAnimation(x);
        m.startAnimation(z);
    }

    public void a()
    {
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        u = (AnimationSet)AnimationUtils.loadAnimation(this, 0x7f040009);
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        v = (AnimationSet)AnimationUtils.loadAnimation(this, 0x7f040008);
        int i1 = ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
        Resources resources = getResources();
        com.dianxinos.dxbs.R.dimen _tmp2 = ly.d;
        A = i1 - resources.getDimensionPixelSize(0x7f080260);
        s = a(1, 0, 0, -A, 0, 0, 0, 0, true);
        t = a(1, 0, 0, A, 0, 0, 0, 0, true);
        s.setAnimationListener(this);
        t.setAnimationListener(this);
        w = a(1, 0, 0, -A, 1, 0, 1, 0, false);
        y = a(0, i1, 1, 0, 1, 0, 1, 0, false);
        y.setAnimationListener(this);
        x = a(0, -A, 1, 0, 0, 0, 0, 0, false);
        z = a(1, 0, 0, i1, 0, 0, 0, 0, false);
        x.setAnimationListener(this);
    }

    public void b()
    {
        r.startAnimation(s);
        q.startAnimation(u);
    }

    public void c()
    {
        if (!p)
        {
            p = true;
            r.setOnClickListener(null);
            r.startAnimation(t);
            q.startAnimation(v);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 38
    //                   1 101
    //                   2 57;
           goto _L1 _L2 _L3 _L4
_L1:
        return super.dispatchTouchEvent(motionevent);
_L2:
        B = motionevent.getX();
        C = motionevent.getY();
        continue; /* Loop/switch isn't completed */
_L4:
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        if (f1 - B >= 80F && f2 - C <= 40F)
        {
            D = true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (D)
        {
            onBackPressed();
            D = false;
            return true;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onAnimationEnd(Animation animation)
    {
        if (animation == s)
        {
            r.setAnimation(null);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.setMargins(-A, 0, A, 0);
            r.setLayoutParams(layoutparams);
            r.setOnClickListener(this);
        } else
        {
            if (animation == t)
            {
                finish();
                overridePendingTransition(0, 0);
                return;
            }
            if (animation == y)
            {
                q.setVisibility(8);
                m.setVisibility(0);
                return;
            }
            if (animation == x)
            {
                q.setVisibility(0);
                m.setVisibility(8);
                return;
            }
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    public void onBackPressed()
    {
        if (o)
        {
            g();
            return;
        } else
        {
            c();
            return;
        }
    }

    public void onClick(View view)
    {
        String s1;
        Object obj = view.getTag();
        if (obj == null)
        {
            s1 = null;
        } else
        {
            s1 = obj.toString();
        }
        if (view != r) goto _L2; else goto _L1
_L1:
        c();
_L4:
        return;
_L2:
        if (view == h)
        {
            bal.a(getApplicationContext(), "personal", "c_c", Integer.valueOf(1));
            o = true;
            m.setVisibility(0);
            q.startAnimation(w);
            m.startAnimation(y);
            return;
        }
        if (view == j)
        {
            String s3;
            if (zc.a(this))
            {
                s3 = "mbpcnc";
            } else
            {
                s3 = "mbpcnoc";
            }
            bal.a(this, "msgbox", s3, Integer.valueOf(1));
            startActivity(new Intent(this, com/dianxinos/optimizer/module/messagebox/MessageBoxActivity));
            return;
        }
        if (view == k)
        {
            k.setClickable(false);
            try
            {
                startActivity(azz.b(this));
                return;
            }
            catch (Exception exception)
            {
                k.setClickable(true);
            }
            ly.i;
            Toast.makeText(this, getString(0x7f0a01bc), 0).show();
            return;
        }
        if (view == d)
        {
            d.setClickable(false);
            bal.a(this, "scc", "pcc", Integer.valueOf(1));
            Intent intent1 = new Intent("android.intent.action.SEND");
            intent1.setType("text/plain");
            ly.i;
            String s2 = getString(0x7f0a0228);
            ly.i;
            intent1.putExtra("android.intent.extra.TEXT", getString(0x7f0a010d, new Object[] {
                s2, "http://dxurl.cn/dxbs/share_feature_gp"
            }));
            String as[] = G.split(",");
            intent1.setComponent(new ComponentName(as[0], as[1]));
            startActivity(intent1);
            return;
        }
        if (view == e)
        {
            e.setClickable(false);
            startActivity(new Intent(this, com/dianxinos/powermanager/menu/MoreSettingsActivity));
            return;
        }
        if (view == n)
        {
            g();
            return;
        }
        if (b[0].equals(s1))
        {
            bal.a(getApplicationContext(), "personal", "c_charge", Integer.valueOf(1));
            startActivity(new Intent(this, com/dianxinos/powermanager/chargingrecord/ChargerRecordActivity));
            return;
        }
        if (b[1].equals(s1))
        {
            c();
            bal.a(getApplicationContext(), "personal", "c_s", Integer.valueOf(1));
            setResult(256);
            return;
        }
        if (b[2].equals(s1))
        {
            bal.a(getApplicationContext(), "personal", "c_skin", Integer.valueOf(1));
            Intent intent = new Intent(this, com/dianxinos/powermanager/skinshop/MySkinActivity);
            intent.putExtra("from_arc", true);
            startActivity(intent);
            return;
        }
        if (!"BatteryChargeDetailsDialog".equals(s1)) goto _L4; else goto _L3
_L3:
        if (I != null) goto _L6; else goto _L5
_L5:
        I = new afc(this, 0);
        I.show();
_L8:
        bal.a(getApplicationContext(), "personal", "c_charge", Integer.valueOf(1));
        return;
_L6:
        if (!I.isShowing())
        {
            I.show();
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03005b);
        f();
        a();
        String as[] = azg.b;
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s1 = as[j1];
            H.add(s1);
        }

        f.setText(Build.MODEL);
        Resources resources = getResources();
        com.dianxinos.dxbs.R.array _tmp1 = ly.m;
        E = resources.getStringArray(0x7f0d0008);
        Resources resources1 = getResources();
        com.dianxinos.dxbs.R.array _tmp2 = ly.m;
        F = resources1.getStringArray(0x7f0d0009);
        for (int k1 = 0; k1 < a.length; k1++)
        {
            zz zz1 = new zz(this, a[k1], E[k1], F[k1]);
            l.addView(zz1);
            zz1.setOnClickListener(this);
        }

        b();
        Intent intent = getIntent();
        if (intent.getIntExtra("From", 0) == 11)
        {
            o = true;
            m.setVisibility(0);
            q.startAnimation(w);
            m.startAnimation(y);
        }
        CoinManager.a(this, K);
        if (intent.getIntExtra("android.intent.extra.KEY_EVENT", 0) == 250)
        {
            startActivity(new Intent(this, com/dianxinos/optimizer/module/messagebox/MessageBoxActivity));
        }
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.dianxinos.dxbs.GOTO_TOOLBOX");
        J = new aav(this);
        registerReceiver(J, intentfilter);
    }

    protected void onDestroy()
    {
        CoinManager.b(this, K);
        if (I != null)
        {
            I.dismiss();
            I = null;
        }
        unregisterReceiver(J);
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        if (intent.getIntExtra("From", 0) == 11)
        {
            o = true;
            m.setVisibility(0);
            q.startAnimation(w);
            m.startAnimation(y);
        }
    }

    protected void onResume()
    {
        super.onResume();
        bal.a(getApplicationContext(), "personal", "e", Integer.valueOf(1));
        String s1;
        if (zc.a(this))
        {
            s1 = "mbpcn";
        } else
        {
            s1 = "mbpcno";
        }
        bal.a(this, "msgbox", s1, Integer.valueOf(1));
        pt.a(this);
        e();
    }

    static 
    {
        int ai[] = new int[3];
        com.dianxinos.dxbs.R.color _tmp = ly.c;
        ai[0] = 0x7f0900b8;
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        ai[1] = 0x7f0900b7;
        com.dianxinos.dxbs.R.color _tmp2 = ly.c;
        ai[2] = 0x7f0900b9;
        a = ai;
    }
}
