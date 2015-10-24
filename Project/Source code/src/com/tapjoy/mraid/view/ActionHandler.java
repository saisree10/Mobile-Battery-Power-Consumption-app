// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;
import com.tapjoy.mraid.util.MraidPlayer;
import com.tapjoy.mraid.util.Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ActionHandler extends Activity
{

    private static final String TAG = "MRAID Action Handler";
    private HashMap actionData;
    private RelativeLayout layout;

    public ActionHandler()
    {
        actionData = new HashMap();
    }

    private void doAction(Bundle bundle)
    {
        String s = bundle.getString("action");
        if (s == null)
        {
            return;
        }
        MraidView.Action action = MraidView.Action.valueOf(s);
        switch (_cls2..SwitchMap.com.tapjoy.mraid.view.MraidView.Action[action.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            initPlayer(bundle, action).playAudio();
            return;

        case 2: // '\002'
            initPlayer(bundle, action).playVideo();
            break;
        }
    }

    private void setPlayerListener(MraidPlayer mraidplayer)
    {
        mraidplayer.setListener(new _cls1());
    }

    MraidPlayer initPlayer(Bundle bundle, MraidView.Action action)
    {
        com.tapjoy.mraid.controller.Abstract.PlayerProperties playerproperties = (com.tapjoy.mraid.controller.Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        com.tapjoy.mraid.controller.Abstract.Dimensions dimensions = (com.tapjoy.mraid.controller.Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
        MraidPlayer mraidplayer = new MraidPlayer(this);
        mraidplayer.setPlayData(playerproperties, Utils.getData("expand_url", bundle));
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (!playerproperties.inline && playerproperties.startStyle.equals("fullscreen"))
        {
            getWindow().setFlags(1024, 1024);
            getWindow().setFlags(0x1000000, 0x1000000);
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
            layoutparams.addRule(13);
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(dimensions.width, dimensions.height);
            layoutparams.topMargin = dimensions.y;
            layoutparams.leftMargin = dimensions.x;
        }
        mraidplayer.setLayoutParams(layoutparams);
        layout.addView(mraidplayer);
        actionData.put(action, mraidplayer);
        setPlayerListener(mraidplayer);
        return mraidplayer;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Bundle bundle1 = getIntent().getExtras();
        layout = new RelativeLayout(this);
        layout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        layout.setBackgroundColor(0xff000000);
        setContentView(layout);
        doAction(bundle1);
    }

    protected void onStop()
    {
        Iterator iterator = actionData.entrySet().iterator();
        do
        {
            if (iterator.hasNext())
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                switch (_cls2..SwitchMap.com.tapjoy.mraid.view.MraidView.Action[((MraidView.Action)entry.getKey()).ordinal()])
                {
                case 1: // '\001'
                case 2: // '\002'
                    ((MraidPlayer)entry.getValue()).releasePlayer();
                    break;
                }
            } else
            {
                super.onStop();
                return;
            }
        } while (true);
    }

    private class _cls2
    {

        static final int $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[];

        static 
        {
            $SwitchMap$com$tapjoy$mraid$view$MraidView$Action = new int[MraidView.Action.values().length];
            try
            {
                $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[MraidView.Action.PLAY_AUDIO.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$tapjoy$mraid$view$MraidView$Action[MraidView.Action.PLAY_VIDEO.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }


    private class _cls1
        implements Player
    {

        final ActionHandler this$0;

        public void onComplete()
        {
            finish();
        }

        public void onError()
        {
            finish();
        }

        public void onPrepared()
        {
        }

        _cls1()
        {
            this$0 = ActionHandler.this;
            super();
        }
    }

}
