// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.view;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DEFAULT;
    public static final .VALUES EXPANDED;
    public static final .VALUES HIDDEN;
    public static final .VALUES LEFT_BEHIND;
    public static final .VALUES OPENED;
    public static final .VALUES RESIZED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tapjoy/mraid/view/MraidView$VIEW_STATE, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        DEFAULT = new <init>("DEFAULT", 0);
        RESIZED = new <init>("RESIZED", 1);
        EXPANDED = new <init>("EXPANDED", 2);
        HIDDEN = new <init>("HIDDEN", 3);
        LEFT_BEHIND = new <init>("LEFT_BEHIND", 4);
        OPENED = new <init>("OPENED", 5);
        E_3B_.clone aclone[] = new <init>[6];
        aclone[0] = DEFAULT;
        aclone[1] = RESIZED;
        aclone[2] = EXPANDED;
        aclone[3] = HIDDEN;
        aclone[4] = LEFT_BEHIND;
        aclone[5] = OPENED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
