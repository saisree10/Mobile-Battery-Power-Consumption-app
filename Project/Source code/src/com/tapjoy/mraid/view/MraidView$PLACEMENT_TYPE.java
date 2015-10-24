// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INLINE;
    public static final .VALUES INTERSTITIAL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INLINE = new <init>("INLINE", 0);
        INTERSTITIAL = new <init>("INTERSTITIAL", 1);
        E_3B_.clone aclone[] = new <init>[2];
        aclone[0] = INLINE;
        aclone[1] = INTERSTITIAL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
