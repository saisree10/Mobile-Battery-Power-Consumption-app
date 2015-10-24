.class public Laxn;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Liv;
.implements Ljv;


# static fields
.field private static e:Laxl;

.field private static f:Landroid/app/Dialog;

.field private static volatile g:Z

.field private static volatile h:Z

.field private static i:Landroid/os/Handler;


# instance fields
.field private a:Laxs;

.field private b:Lka;

.field private c:Landroid/app/Activity;

.field private d:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Laxn;->g:Z

    .line 68
    sput-boolean v0, Laxn;->h:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Laxn;->i:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Laxs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laxs;-><init>(Laxn;Laxo;)V

    iput-object v0, p0, Laxn;->a:Laxs;

    .line 84
    iput-object p1, p0, Laxn;->c:Landroid/app/Activity;

    .line 86
    iget-object v0, p0, Laxn;->b:Lka;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    iput-object v0, p0, Laxn;->b:Lka;

    .line 89
    :cond_0
    sget-object v0, Laxn;->e:Laxl;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Laxl;

    iget-object v1, p0, Laxn;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laxl;-><init>(Landroid/content/Context;)V

    sput-object v0, Laxn;->e:Laxl;

    .line 92
    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 531
    :try_start_0
    const-string v0, "update-file-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 532
    const-string v1, "%1.2fM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v0, v0

    const/high16 v4, 0x4980

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    const-string v1, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "2.00M"

    goto :goto_0
.end method

.method static synthetic a(Laxn;)Lka;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Laxn;->b:Lka;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    new-instance v0, Laxn;

    invoke-direct {v0, p0}, Laxn;-><init>(Landroid/app/Activity;)V

    .line 126
    invoke-direct {v0}, Laxn;->o()V

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    .line 102
    sget-object v1, Laxn;->e:Laxl;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Laxl;

    invoke-direct {v1, p0}, Laxl;-><init>(Landroid/content/Context;)V

    sput-object v1, Laxn;->e:Laxl;

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    const-string v1, "com.dianxinos.dxbs"

    invoke-static {v1}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v1

    invoke-virtual {v1}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lka;->m()Ljz;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    sget-object v0, Laxn;->e:Laxl;

    sget-object v1, Laxm;->a:Laxm;

    invoke-virtual {v0, v1}, Laxl;->a(Laxm;)V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, v0, Ljz;->a:I

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v0, v1, :cond_2

    .line 114
    sget-object v0, Laxn;->e:Laxl;

    sget-object v1, Laxm;->b:Laxm;

    invoke-virtual {v0, v1}, Laxl;->a(Laxm;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string v1, "UpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    :try_start_1
    sget-object v0, Laxn;->e:Laxl;

    sget-object v1, Laxm;->c:Laxm;

    invoke-virtual {v0, v1}, Laxl;->a(Laxm;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Laxn;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Laxn;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 391
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    sput-boolean v5, Laxn;->g:Z

    .line 475
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0127

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a004a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0129

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 405
    new-instance v2, Lauu;

    iget-object v3, p0, Laxn;->c:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lauu;-><init>(Landroid/content/Context;)V

    .line 406
    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0119

    invoke-virtual {v2, v3}, Lauu;->setTitle(I)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lauu;->c(Ljava/lang/String;)V

    .line 408
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0116

    new-instance v1, Laxt;

    iget-object v3, p0, Laxn;->c:Landroid/app/Activity;

    invoke-direct {v1, v3, p3}, Laxt;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v0, v1}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 409
    invoke-virtual {v2}, Lauu;->d()V

    .line 410
    if-nez p3, :cond_1

    .line 411
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0117

    new-instance v1, Laxt;

    iget-object v3, p0, Laxn;->c:Landroid/app/Activity;

    invoke-direct {v1, v3, p3}, Laxt;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v2, v0, v1}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 415
    :cond_1
    if-ne p3, v7, :cond_3

    .line 416
    invoke-virtual {v2}, Lauu;->c()V

    .line 419
    invoke-virtual {v2, v5}, Lauu;->a(Z)V

    .line 424
    :goto_1
    new-instance v0, Laxq;

    invoke-direct {v0, p0, p3, v2}, Laxq;-><init>(Laxn;ILauu;)V

    invoke-virtual {v2, v0}, Lauu;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 445
    new-instance v0, Laxr;

    invoke-direct {v0, p0, p3, v2}, Laxr;-><init>(Laxn;ILauu;)V

    invoke-virtual {v2, v0}, Lauu;->a(Lava;)V

    .line 462
    if-nez p3, :cond_2

    .line 463
    invoke-virtual {v2}, Lauu;->f()V

    .line 464
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a020a

    invoke-virtual {v2, v0}, Lauu;->d(I)V

    .line 466
    :cond_2
    invoke-virtual {v2}, Lauu;->show()V

    .line 467
    sget-object v0, Laxn;->e:Laxl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Laxl;->a(J)V

    .line 470
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 472
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 474
    sput-object v2, Laxn;->f:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 421
    :cond_3
    invoke-virtual {v2, v6}, Lauu;->a(Z)V

    goto :goto_1
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-boolean p0, Laxn;->g:Z

    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 153
    new-instance v0, Laxn;

    invoke-direct {v0, p0}, Laxn;-><init>(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lka;->m()Ljz;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    iget-object v2, v1, Ljz;->b:Ljava/lang/String;

    iget-object v3, v1, Ljz;->d:Ljava/lang/String;

    iget v4, v1, Ljz;->c:I

    iget-object v1, v1, Ljz;->e:Ljava/util/Map;

    invoke-static {v1}, Laxn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Laxn;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 161
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 163
    :cond_0
    return-void
.end method

.method static synthetic b(Laxn;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Laxn;->p()V

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    new-instance v0, Laxn;

    invoke-direct {v0, p0}, Laxn;-><init>(Landroid/app/Activity;)V

    .line 167
    invoke-virtual {v0}, Laxn;->i()V

    .line 168
    return-void
.end method

.method static synthetic c(Laxn;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Laxn;->q()V

    return-void
.end method

.method static synthetic d(Laxn;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Laxn;->h:Z

    .line 131
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Laxn;->h:Z

    return v0
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Laxn;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Laxn;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Laxn;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 142
    sget-object v0, Laxn;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 144
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Laxn;->f:Landroid/app/Dialog;

    .line 146
    :cond_1
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Laxn;->g:Z

    .line 150
    return-void
.end method

.method static synthetic j()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Laxn;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k()Laxl;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Laxn;->e:Laxl;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Laxn;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Laxo;

    invoke-direct {v1, p0}, Laxo;-><init>(Laxn;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    iget-object v1, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0118

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v1, Laxp;

    invoke-direct {v1, p0}, Laxp;-><init>(Laxn;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 207
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 209
    iput-object v0, p0, Laxn;->d:Landroid/app/Dialog;

    .line 210
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Laxn;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Laxn;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 216
    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Laxn;->g:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Laxn;->g:Z

    .line 223
    invoke-direct {p0}, Laxn;->l()V

    .line 225
    iget-object v0, p0, Laxn;->b:Lka;

    invoke-virtual {v0, p0}, Lka;->a(Liv;)Z

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Laxn;->b:Lka;

    invoke-virtual {v0}, Lka;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Laxn;->b:Lka;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lka;->a(Ljl;)Z

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Laxn;->b:Lka;

    invoke-virtual {v0, p0}, Lka;->a(Ljv;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Laxn;->m()V

    .line 274
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0206

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-direct {p0}, Laxn;->m()V

    .line 289
    new-instance v0, Lauu;

    iget-object v1, p0, Laxn;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 290
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 291
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 292
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {v0}, Lauu;->show()V

    .line 295
    sput-object v0, Laxn;->f:Landroid/app/Dialog;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    sput-boolean v0, Laxn;->g:Z

    .line 245
    const-string v0, "UpdateHelper"

    const-string v1, "Failed to check updates because of network error"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Laxn;->a:Laxs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxs;->sendEmptyMessage(I)Z

    .line 247
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    invoke-direct {p0}, Laxn;->m()V

    .line 304
    const-string v0, "UpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update available, version code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0}, Laxl;->c()V

    .line 308
    sget-object v0, Laxn;->e:Laxl;

    sget-object v1, Laxm;->c:Laxm;

    invoke-virtual {v0, v1}, Laxl;->a(Laxm;)V

    .line 310
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0}, Laxl;->g()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 314
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, p1}, Laxl;->a(I)V

    .line 316
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v3}, Laxl;->c(Z)V

    .line 319
    sget-object v0, Laxn;->e:Laxl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Laxl;->a(J)V

    .line 322
    :cond_0
    new-instance v0, Laxu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laxu;-><init>(Laxo;)V

    .line 323
    iput-object p2, v0, Laxu;->a:Ljava/lang/String;

    .line 324
    iput-object p3, v0, Laxu;->b:Ljava/lang/String;

    .line 325
    iput p4, v0, Laxu;->d:I

    .line 326
    invoke-static {p5}, Laxn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laxu;->c:Ljava/lang/String;

    .line 328
    sget-object v1, Laxn;->e:Laxl;

    invoke-virtual {v1, p2}, Laxl;->a(Ljava/lang/String;)V

    .line 330
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 331
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0}, Laxl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    :cond_1
    const/4 v0, 0x4

    iput v0, v1, Landroid/os/Message;->what:I

    .line 335
    iget-object v0, p0, Laxn;->a:Laxs;

    invoke-virtual {v0, v1}, Laxs;->sendMessage(Landroid/os/Message;)Z

    .line 336
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v4}, Laxl;->a(Z)V

    .line 349
    :goto_0
    return-void

    .line 338
    :cond_2
    if-eq p4, v4, :cond_3

    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0}, Laxl;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    :cond_3
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    .line 340
    iget-object v0, p0, Laxn;->a:Laxs;

    invoke-virtual {v0, v1}, Laxs;->sendMessage(Landroid/os/Message;)Z

    .line 341
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v4}, Laxl;->b(Z)V

    goto :goto_0

    .line 344
    :cond_4
    const/4 v0, 0x3

    iput v0, v1, Landroid/os/Message;->what:I

    .line 345
    iget-object v0, p0, Laxn;->a:Laxs;

    invoke-virtual {v0, v1}, Laxs;->sendMessage(Landroid/os/Message;)Z

    .line 346
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v3}, Laxl;->a(Z)V

    .line 347
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v3}, Laxl;->b(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    sput-boolean v2, Laxn;->g:Z

    .line 257
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0}, Laxl;->c()V

    .line 258
    iget-object v0, p0, Laxn;->a:Laxs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laxs;->sendEmptyMessage(I)Z

    .line 260
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v2}, Laxl;->a(Z)V

    .line 261
    sget-object v0, Laxn;->e:Laxl;

    invoke-virtual {v0, v2}, Laxl;->b(Z)V

    .line 262
    sget-object v0, Laxn;->e:Laxl;

    sget-object v1, Laxm;->b:Laxm;

    invoke-virtual {v0, v1}, Laxl;->a(Laxm;)V

    .line 263
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 480
    const-string v0, "UpdateHelper"

    const-string v1, "start downloading..."

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x1

    sput-boolean v0, Laxn;->h:Z

    .line 482
    iget-object v0, p0, Laxn;->a:Laxs;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Laxs;->sendEmptyMessage(I)Z

    .line 483
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 488
    const-string v0, "UpdateHelper"

    const-string v1, "No updates for download"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    sput-boolean v0, Laxn;->h:Z

    .line 490
    iget-object v0, p0, Laxn;->a:Laxs;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Laxs;->sendEmptyMessage(I)Z

    .line 491
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string v0, "UpdateHelper"

    const-string v1, "no network available"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0206

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-boolean v0, Laxn;->h:Z

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "UpdateHelper"

    const-string v1, "upgrade is in progress"

    invoke-static {v0, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Laxn;->c:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0208

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0}, Laxn;->n()V

    goto :goto_0
.end method
