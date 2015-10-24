// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES HIDDEN;
    public static final .VALUES OPEN;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tapjoy/mraid/view/MraidView$customCloseState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        HIDDEN = new <init>("HIDDEN", 0);
        OPEN = new <init>("OPEN", 1);
        UNKNOWN = new <init>("UNKNOWN", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = HIDDEN;
        aclone[1] = OPEN;
        aclone[2] = UNKNOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
