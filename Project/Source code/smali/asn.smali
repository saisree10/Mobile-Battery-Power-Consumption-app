.class Lasn;
.super Ljava/lang/Object;
.source "SmartSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lasm;


# direct methods
.method constructor <init>(Lasm;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lasn;->a:Lasm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    const-string v1, "Dev_Key"

    const-string v2, "premium"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method
