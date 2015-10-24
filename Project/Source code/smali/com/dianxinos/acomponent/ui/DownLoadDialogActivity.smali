.class public Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;
.super Landroid/app/Activity;
.source "DownLoadDialogActivity.java"


# static fields
.field private static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0041

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lif;

    invoke-direct {v2, p0, p1, p2}, Lif;-><init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0044

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lig;

    invoke-direct {v2, p0}, Lig;-><init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 115
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0045

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0041

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lih;

    invoke-direct {v2, p0, p1, p2, p3}, Lih;-><init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0044

    invoke-virtual {p0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lii;

    invoke-direct {v2, p0}, Lii;-><init>(Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a:Landroid/net/Uri;

    .line 52
    const-string v0, ""

    .line 53
    const-string v1, "extra_pkg_name"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v0, "extra_pkg_name"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    const-string v1, ""

    .line 58
    const-string v2, "extra_version_code"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const-string v1, "extra_version_code"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    :cond_1
    const-string v2, ""

    .line 63
    const-string v5, "uid"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    const-string v2, "uid"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_2
    sget-object v5, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a:Landroid/net/Uri;

    if-eqz v5, :cond_7

    .line 68
    const-string v5, "DownLoadInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " get action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkgName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v5, "com.dianxinos.dxap.INSTALL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    const-string v5, "extra_local_path"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 71
    const-string v5, "extra_local_path"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {p0, v3}, Lhi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    .line 79
    :cond_3
    const-string v3, "com.dianxinos.dxap.STOP_DOWNLOAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    const-string v3, "com.dianxinos.dxap.RETRY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {p0, v2, v0, v1}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5
    :goto_1
    return-void

    .line 74
    :cond_6
    const-string v3, "DownLoadInfoActivity"

    const-string v5, " open file error local path is not exist "

    invoke-static {v3, v5}, Lin;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_7
    const-string v0, "error"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    return-void
.end method
