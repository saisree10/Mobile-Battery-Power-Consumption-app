// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES PLAY_AUDIO;
    public static final .VALUES PLAY_VIDEO;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tapjoy/mraid/view/MraidView$Action, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PLAY_AUDIO = new <init>("PLAY_AUDIO", 0);
        PLAY_VIDEO = new <init>("PLAY_VIDEO", 1);
        n_3B_.clone aclone[] = new <init>[2];
        aclone[0] = PLAY_AUDIO;
        aclone[1] = PLAY_VIDEO;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
