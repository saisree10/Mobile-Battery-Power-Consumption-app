// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import java.io.Serializable;
import java.lang.reflect.Array;

public class TapjoyVideoObject
    implements Serializable
{

    public static final int BUTTON_MAX = 10;
    private static final long serialVersionUID = 1L;
    public int buttonCount;
    public String buttonData[][];
    public String clickURL;
    public String currencyAmount;
    public String currencyName;
    public String dataLocation;
    public String iconURL;
    public String offerID;
    public String videoAdName;
    public String videoURL;
    public String webviewURL;

    public TapjoyVideoObject()
    {
        buttonData = (String[][])Array.newInstance(java/lang/String, new int[] {
            10, 2
        });
    }

    public void addButton(String s, String s1)
    {
        buttonData[buttonCount][0] = s;
        buttonData[buttonCount][1] = s1;
        buttonCount = 1 + buttonCount;
    }
}
