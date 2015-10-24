.class public Lcom/dianxinos/powermanager/PowerMangerApplication;
.super Landroid/app/Application;
.source "PowerMangerApplication.java"


# static fields
.field private static a:Lcom/dianxinos/powermanager/PowerMangerApplication;

.field private static b:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lamb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 64
    new-instance v0, Laaw;

    invoke-direct {v0, p0}, Laaw;-><init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->d:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method public static a()Lcom/dianxinos/powermanager/PowerMangerApplication;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    return-object v0
.end method

.method public static a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 197
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v0, v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->d:Landroid/os/Handler;

    sget-object v1, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v1, v1, Lcom/dianxinos/powermanager/PowerMangerApplication;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v0, v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->d:Landroid/os/Handler;

    sget-object v1, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v1, v1, Lcom/dianxinos/powermanager/PowerMangerApplication;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    sput-boolean p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->b:Z

    .line 230
    return-void
.end method

.method public static synthetic b()Lcom/dianxinos/powermanager/PowerMangerApplication;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    .line 171
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "PowerMangerApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale changed, oldLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;

    .line 178
    invoke-static {p0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    invoke-virtual {v0}, Lath;->a()V

    .line 179
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->h()V

    .line 180
    invoke-static {p0}, Laar;->a(Landroid/content/Context;)Laar;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Laar;->b()V

    .line 183
    invoke-static {p0}, Lacc;->a(Landroid/content/Context;)Lacc;

    move-result-object v0

    invoke-virtual {v0}, Lacc;->d()V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    const-string v0, "PowerMangerApplication"

    const-string v1, "app created"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 96
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    .line 97
    sput-object p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    .line 98
    invoke-static {}, Lnm;->a()V

    .line 100
    invoke-static {p0}, Lcom/dianxinos/backend/DXBackendConfig;->a(Landroid/content/Context;)V

    .line 108
    invoke-static {p0, v2}, Lbal;->a(Landroid/content/Context;I)V

    .line 110
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->f()V

    .line 112
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lass;->a(Landroid/content/Context;)Lass;

    .line 114
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Laax;

    invoke-direct {v1, p0}, Laax;-><init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 128
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->e:Lamb;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->e:Lamb;

    invoke-virtual {v0}, Lamb;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->e:Lamb;

    invoke-virtual {v0, v2}, Lamb;->b(Z)V

    .line 144
    :cond_1
    const-string v0, "PowerMangerApplication"

    const-string v1, "start main service ..."

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 149
    new-instance v0, Laay;

    invoke-direct {v0, p0, v3}, Laay;-><init>(Lcom/dianxinos/powermanager/PowerMangerApplication;Laaw;)V

    .line 150
    invoke-virtual {v0}, Laay;->start()V

    .line 152
    invoke-static {p0}, Lbal;->d(Landroid/content/Context;)V

    .line 154
    const/4 v0, 0x4

    invoke-static {v0}, Lpa;->a(I)V

    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Lpa;->a(Z)V

    .line 162
    const-string v0, "55c2ff3f-423d-4c0c-af3b-f0e784e7be0a"

    invoke-static {v0}, Lmh;->a(Ljava/lang/String;)V

    .line 163
    const-string v0, "TyBPfinHZV3Ig2dxRAzY"

    invoke-static {v0}, Lmh;->b(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/dianxinos/powermanager/PowerMangerApplication;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-static {v0}, Lnl;->a(Landroid/content/Context;)Lnl;

    move-result-object v0

    invoke-virtual {v0}, Lnl;->b()V

    .line 167
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    iput-object v3, p0, Lcom/dianxinos/powermanager/PowerMangerApplication;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 194
    return-void
.end method
