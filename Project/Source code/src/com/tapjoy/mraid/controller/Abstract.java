// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.controller;

import android.content.Context;
import com.tapjoy.mraid.util.NavigationStringEnum;
import com.tapjoy.mraid.util.TransitionStringEnum;
import com.tapjoy.mraid.view.MraidView;
import java.lang.reflect.Field;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class Abstract
{

    private static final String BOOLEAN_TYPE = "boolean";
    public static final String EXIT = "exit";
    private static final String FLOAT_TYPE = "float";
    public static final String FULL_SCREEN = "fullscreen";
    private static final String INT_TYPE = "int";
    private static final String NAVIGATION_TYPE = "class com.tapjoy.mraid.util.NavigationStringEnum";
    private static final String STRING_TYPE = "class java.lang.String";
    public static final String STYLE_NORMAL = "normal";
    private static final String TRANSITION_TYPE = "class com.tapjoy.mraid.util.TransitionStringEnum";
    protected Context mContext;
    protected MraidView mMraidView;

    public Abstract(MraidView mraidview, Context context)
    {
        mMraidView = mraidview;
        mContext = context;
    }

    protected static Object getFromJSON(JSONObject jsonobject, Class class1)
    {
        Field afield[];
        Object obj;
        int i;
        afield = class1.getDeclaredFields();
        obj = class1.newInstance();
        i = 0;
_L9:
        if (i >= afield.length) goto _L2; else goto _L1
_L1:
        Field field;
        String s;
        String s1;
        field = afield[i];
        s = field.getName().replace('_', '-');
        s1 = field.getType().toString();
        if (!s1.equals("int")) goto _L4; else goto _L3
_L3:
        String s2;
        boolean flag;
        s2 = jsonobject.getString(s).toLowerCase();
        flag = s2.startsWith("#");
        if (!flag) goto _L6; else goto _L5
_L5:
        int j = -1;
        if (!s2.startsWith("#0x")) goto _L8; else goto _L7
_L7:
        int l = Integer.decode(s2.substring(1)).intValue();
        j = l;
_L10:
        int k;
        try
        {
            field.set(obj, Integer.valueOf(j));
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
_L11:
        i++;
          goto _L9
_L8:
        k = Integer.parseInt(s2.substring(1), 16);
        j = k;
          goto _L10
_L6:
        j = Integer.parseInt(s2);
          goto _L10
_L4:
label0:
        {
            if (!s1.equals("class java.lang.String"))
            {
                break label0;
            }
            field.set(obj, jsonobject.getString(s));
        }
          goto _L11
label1:
        {
            if (!s1.equals("boolean"))
            {
                break label1;
            }
            field.set(obj, Boolean.valueOf(jsonobject.getBoolean(s)));
        }
          goto _L11
label2:
        {
            if (!s1.equals("float"))
            {
                break label2;
            }
            field.set(obj, Float.valueOf(Float.parseFloat(jsonobject.getString(s))));
        }
          goto _L11
        if (!s1.equals("class com.tapjoy.mraid.util.NavigationStringEnum")) goto _L13; else goto _L12
_L12:
        field.set(obj, NavigationStringEnum.fromString(jsonobject.getString(s)));
          goto _L11
_L13:
        if (!s1.equals("class com.tapjoy.mraid.util.TransitionStringEnum")) goto _L11; else goto _L14
_L14:
        field.set(obj, TransitionStringEnum.fromString(jsonobject.getString(s)));
          goto _L11
_L2:
        return obj;
        NumberFormatException numberformatexception;
        numberformatexception;
          goto _L10
    }

    public abstract void stopAllListeners();
}
