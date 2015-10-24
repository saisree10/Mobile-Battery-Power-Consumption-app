.class public Lcom/dianxinos/common/dxsplash/AlarmSplashConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmSplashConfigReceiver.java"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lmi;->a:Z

    sput-boolean v0, Lcom/dianxinos/common/dxsplash/AlarmSplashConfigReceiver;->a:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    sget-boolean v0, Lcom/dianxinos/common/dxsplash/AlarmSplashConfigReceiver;->a:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "AlarmSplashConfigReceivery"

    invoke-static {v0, p0}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/dianxinos/common/dxsplash/AlarmSplashConfigReceiver;->a(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v2

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    const-string v0, "splash_item_firsttime"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 23
    const-string v0, "splash_item_lasttime"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 24
    const-string v0, "splash_item_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v8, "splash_item_localpath"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    const-string v9, "splash_item_md5"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    const-string v10, "splash_item_url"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 29
    const-string v11, "splash_item_stay_time"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 30
    new-instance v11, Lnc;

    invoke-direct {v11}, Lnc;-><init>()V

    invoke-virtual {v11, v0}, Lnc;->a(Ljava/lang/String;)Lnc;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lnc;->a(J)Lnc;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lnc;->b(J)Lnc;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v9}, Lnc;->b(Ljava/lang/String;)Lnc;

    move-result-object v0

    invoke-virtual {v0, v10}, Lnc;->c(Ljava/lang/String;)Lnc;

    move-result-object v0

    invoke-virtual {v0, v8}, Lnc;->d(Ljava/lang/String;)Lnc;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3}, Lnc;->a(F)Lnc;

    move-result-object v0

    .line 34
    :cond_0
    const-string v3, "com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v2, v0}, Lmy;->a(Lnc;)V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    const-string v3, "com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG_CANCLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v2, v0}, Lmy;->b(Lnc;)V

    goto :goto_0
.end method
