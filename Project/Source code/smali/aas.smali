.class public Laas;
.super Ljava/lang/Object;
.source "PackageAddReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/dianxinos/powermanager/PackageAddReceiver;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PackageAddReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Laas;->c:Lcom/dianxinos/powermanager/PackageAddReceiver;

    iput-object p2, p0, Laas;->a:Landroid/content/Context;

    iput-object p3, p0, Laas;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    iget-object v0, p0, Laas;->a:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Laje;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Laas;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 39
    invoke-virtual {v0}, Laje;->f()[Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 41
    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    const-wide/32 v3, 0x5265c00

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 44
    iget-object v0, p0, Laas;->a:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->c()V

    goto :goto_0
.end method
