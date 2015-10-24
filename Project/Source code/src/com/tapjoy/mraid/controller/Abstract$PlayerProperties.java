// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.os.Parcel;

public class le extends le
{

    public static final android.os.PlayerProperties._cls1 CREATOR = new _cls1();
    public boolean audioMuted;
    public boolean autoPlay;
    public boolean doLoop;
    public boolean inline;
    public boolean showControl;
    public String startStyle;
    public String stopStyle;

    public boolean doLoop()
    {
        return doLoop;
    }

    public boolean doMute()
    {
        return audioMuted;
    }

    public boolean exitOnComplete()
    {
        return stopStyle.equalsIgnoreCase("exit");
    }

    public boolean isAutoPlay()
    {
        return autoPlay;
    }

    public boolean isFullScreen()
    {
        return startStyle.equalsIgnoreCase("fullscreen");
    }

    public void muteAudio()
    {
        audioMuted = true;
    }

    public void setProperties(boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4, String s, String s1)
    {
        autoPlay = flag1;
        showControl = flag2;
        doLoop = flag4;
        audioMuted = flag;
        startStyle = s;
        stopStyle = s1;
        inline = flag3;
    }

    public void setStopStyle(String s)
    {
        stopStyle = s;
    }

    public boolean showControl()
    {
        return showControl;
    }


    public _cls1()
    {
        showControl = true;
        autoPlay = true;
        audioMuted = false;
        doLoop = false;
        stopStyle = "normal";
        startStyle = "normal";
        inline = false;
    }

    public inline(Parcel parcel)
    {
        super(parcel);
    }

    class _cls1
        implements android.os.Parcelable.Creator
    {

        public Abstract.PlayerProperties createFromParcel(Parcel parcel)
        {
            return new Abstract.PlayerProperties(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Abstract.PlayerProperties[] newArray(int i)
        {
            return new Abstract.PlayerProperties[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

            _cls1()
            {
            }
    }

}
