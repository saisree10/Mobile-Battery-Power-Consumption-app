// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.ActivityManager;
import android.content.ComponentName;
import java.util.List;

public class zk
{

    public static ComponentName a(ActivityManager activitymanager)
    {
        List list = activitymanager.getRunningTasks(1);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        ComponentName componentname;
        if (list.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        componentname = ((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity;
        return componentname;
        Exception exception;
        exception;
        return null;
    }
}
