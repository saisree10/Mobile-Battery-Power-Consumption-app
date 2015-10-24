// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.dianxinos.powermanager.ui.DxBatteryGraph;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import java.util.List;

public class adi extends auu
    implements android.view.View.OnClickListener
{

    private Activity c;
    private DxBatteryGraph d;
    private avc e;
    private Session f;
    private Bitmap g;
    private String h;
    private com.facebook.Session.StatusCallback i;
    private com.facebook.Session.StatusCallback j;

    public adi(Activity activity, Bitmap bitmap, boolean flag)
    {
        super(activity);
        f = null;
        g = null;
        h = "";
        i = new adj(this);
        j = new adk(this);
        c = activity;
        g = bitmap;
        String s;
        LayoutInflater layoutinflater;
        View view;
        Session session;
        if (flag)
        {
            Resources resources1 = c.getResources();
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            s = resources1.getString(0x7f0a0389);
        } else
        {
            Resources resources = c.getResources();
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            s = resources.getString(0x7f0a038a);
        }
        h = s;
        layoutinflater = getLayoutInflater();
        com.dianxinos.dxbs.R.layout _tmp2 = ly.g;
        view = layoutinflater.inflate(0x7f030009, null);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        view.findViewById(0x7f070026).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        view.findViewById(0x7f07002b).setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        d = (DxBatteryGraph)view.findViewById(0x7f070027);
        d.a();
        d.setPercentTextVisble(false);
        b(view);
        h();
        i();
        if (flag)
        {
            com.dianxinos.dxbs.R.id _tmp6 = ly.f;
            TextView textview = (TextView)view.findViewById(0x7f070029);
            com.dianxinos.dxbs.R.string _tmp7 = ly.i;
            textview.setText(0x7f0a02be);
            com.dianxinos.dxbs.R.id _tmp8 = ly.f;
            TextView textview1 = (TextView)view.findViewById(0x7f07002a);
            com.dianxinos.dxbs.R.string _tmp9 = ly.i;
            textview1.setText(0x7f0a02bf);
        }
        Settings.addLoggingBehavior(LoggingBehavior.INCLUDE_ACCESS_TOKENS);
        session = Session.getActiveSession();
        if (session == null)
        {
            if (session == null)
            {
                session = new Session(c);
            }
            Session.setActiveSession(session);
            if (session.getState().equals(SessionState.CREATED_TOKEN_LOADED))
            {
                session.openForRead((new com.facebook.Session.OpenRequest(c)).setCallback(i));
            }
        }
    }

    static Bitmap a(adi adi1)
    {
        return adi1.g;
    }

    static Session a(adi adi1, Session session)
    {
        adi1.f = session;
        return session;
    }

    static void a(adi adi1, Session session, Bitmap bitmap, String s)
    {
        adi1.a(session, bitmap, s);
    }

    private void a(Session session, Bitmap bitmap, String s)
    {
        if (session != null)
        {
            if (l())
            {
                Request request = Request.newUploadPhotoRequest(session, bitmap, new adl(this, session));
                request.getParameters().putString("name", s);
                request.executeAsync();
                a();
                return;
            }
            if (session.isOpened())
            {
                f.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(c, new String[] {
                    "publish_actions"
                }));
                return;
            }
        }
    }

    static String b(adi adi1)
    {
        return adi1.h;
    }

    static Activity c(adi adi1)
    {
        return adi1.c;
    }

    private boolean l()
    {
        f = Session.getActiveSession();
        return f != null && f.getPermissions().contains("publish_actions");
    }

    void a()
    {
        if (e == null)
        {
            Activity activity = c;
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            e = new avc(activity, 0x7f0b001a);
        }
        e.show();
    }

    void b()
    {
        if (e != null)
        {
            e.dismiss();
        }
    }

    public void dismiss()
    {
        b();
        super.dismiss();
    }

    public void onClick(View view)
    {
        int k;
        k = view.getId();
        ly.f;
        if (k != 0x7f07002b) goto _L2; else goto _L1
_L1:
        Session session = Session.getActiveSession();
        if (session.isOpened() || session.isClosed()) goto _L4; else goto _L3
_L3:
        session.openForRead((new com.facebook.Session.OpenRequest(c)).setCallback(j));
_L6:
        return;
_L4:
        Session.openActiveSession(c, true, j);
        return;
_L2:
        int i1 = view.getId();
        ly.f;
        if (i1 == 0x7f070026)
        {
            dismiss();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
