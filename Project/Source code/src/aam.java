// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.KeyEvent;
import com.dianxinos.powermanager.PowerMgrInfoAcitvity;
import java.util.ArrayList;
import java.util.List;

public abstract class aam extends Activity
    implements alt
{

    private alr a;
    private Intent b;
    private boolean c;

    public aam()
    {
        c = true;
    }

    private void a()
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        alu alu1 = new alu();
        ly.i;
        alu1.a(getString(0x7f0a0240));
        ly.e;
        alu1.a(0x7f0201e8);
        alu1.b(1);
        arraylist.add(alu1);
        if (a.a())
        {
            break MISSING_BLOCK_LABEL_69;
        }
        a.a(arraylist);
        return;
        Exception exception;
        exception;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("Egads!");
        builder.setMessage(exception.getMessage());
        builder.show();
        return;
    }

    private void b()
    {
        if (a.a())
        {
            a.b();
            return;
        }
        android.view.View view;
        if (getParent() != null)
        {
            Activity activity = getParent();
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            view = activity.findViewById(0x7f070007);
        } else
        {
            com.dianxinos.dxbs.R.id _tmp1 = ly.f;
            view = findViewById(0x7f070007);
        }
        if (view != null)
        {
            a.a(view);
            return;
        } else
        {
            azt.d("DXPowerActivity", "Ignore menu action.");
            return;
        }
    }

    private Intent c()
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        String s = getString(0x7f0a0228);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        intent.putExtra("android.intent.extra.TEXT", getString(0x7f0a010d, new Object[] {
            s, "http://dxurl.cn/dxbs/share_feature_gp"
        }));
        List list = getPackageManager().queryIntentActivities(intent, 0);
        if (list == null)
        {
            return null;
        }
        int i = list.size();
        int j = azg.b.length;
        for (int k = 0; k < j; k++)
        {
            for (int l = 0; l < i; l++)
            {
                ActivityInfo activityinfo = ((ResolveInfo)list.get(l)).activityInfo;
                if (activityinfo.packageName != null && activityinfo.packageName.equals(azg.b[k]))
                {
                    Intent intent1 = new Intent(intent);
                    intent1.setComponent(new ComponentName(activityinfo.applicationInfo.packageName, activityinfo.name));
                    return intent1;
                }
            }

        }

        return null;
    }

    public void a(alu alu1)
    {
        if (alu1.c() == 1)
        {
            startActivity(new Intent(this, com/dianxinos/powermanager/PowerMgrInfoAcitvity));
        }
    }

    public void finish()
    {
        super.finish();
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040004, 0x7f040005);
    }

    public void onBackPressed()
    {
        if (a != null && a.a())
        {
            a.b();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = new alr(this, this, getLayoutInflater());
        a.a(true);
        a.a(4);
        a.b(8);
        b = c();
        a();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 82)
        {
            if (c)
            {
                c = false;
                b();
            }
            return true;
        }
        if (i == 4 && a != null && a.a())
        {
            a.b();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (i == 82)
        {
            c = true;
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    public void onPause()
    {
        if (a != null && a.a())
        {
            a.b();
        }
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
    }

    public void startActivity(Intent intent)
    {
        super.startActivity(intent);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        super.startActivityForResult(intent, i);
        com.dianxinos.dxbs.R.anim _tmp = ly.a;
        com.dianxinos.dxbs.R.anim _tmp1 = ly.a;
        overridePendingTransition(0x7f040006, 0x7f040007);
    }
}
