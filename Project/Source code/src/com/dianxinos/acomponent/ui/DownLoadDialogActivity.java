// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.acomponent.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import hi;
import if;
import ig;
import ih;
import ii;
import in;
import ly;

public class DownLoadDialogActivity extends Activity
{

    private static Uri a = null;

    public DownLoadDialogActivity()
    {
    }

    public static Uri a()
    {
        return a;
    }

    protected void a(String s, String s1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        builder.setMessage(getString(0x7f0a0042));
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        builder.setTitle(getString(0x7f0a0041));
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        builder.setPositiveButton(getString(0x7f0a0043), new if(this, s, s1));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        builder.setNegativeButton(getString(0x7f0a0044), new ig(this));
        builder.create().show();
    }

    protected void a(String s, String s1, String s2)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        builder.setMessage(getString(0x7f0a0045));
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        builder.setTitle(getString(0x7f0a0041));
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        builder.setPositiveButton(getString(0x7f0a0043), new ih(this, s, s1, s2));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        builder.setNegativeButton(getString(0x7f0a0044), new ii(this));
        builder.create().show();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030038);
        Intent intent = getIntent();
        String s = intent.getAction();
        a = intent.getData();
        String s1 = "";
        if (intent.hasExtra("extra_pkg_name"))
        {
            s1 = intent.getStringExtra("extra_pkg_name");
        }
        String s2 = "";
        if (intent.hasExtra("extra_version_code"))
        {
            s2 = intent.getStringExtra("extra_version_code");
        }
        String s3 = "";
        if (intent.hasExtra("uid"))
        {
            s3 = intent.getStringExtra("uid");
        }
        if (a != null)
        {
            in.b("DownLoadInfoActivity", (new StringBuilder()).append(" get action:").append(s).append(" uri ").append(a).append(" pkgName ").append(s1).append(" vName ").append(s2).toString());
            if ("com.dianxinos.dxap.INSTALL".equals(s))
            {
                if (intent.hasExtra("extra_local_path"))
                {
                    hi.a(this, intent.getStringExtra("extra_local_path"));
                } else
                {
                    in.a("DownLoadInfoActivity", " open file error local path is not exist ");
                }
                finish();
            }
            if ("com.dianxinos.dxap.STOP_DOWNLOAD".equals(s))
            {
                a(s1, s2);
            }
            if ("com.dianxinos.dxap.RETRY".equals(s))
            {
                a(s3, s1, s2);
            }
            return;
        } else
        {
            Toast.makeText(this, "error", 0).show();
            finish();
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
    }

}
