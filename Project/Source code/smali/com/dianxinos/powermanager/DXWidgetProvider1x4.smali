.class public Lcom/dianxinos/powermanager/DXWidgetProvider1x4;
.super Lvz;
.source "DXWidgetProvider1x4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 24
    const-string v0, "DXWidgetProvider1x4"

    const-string v1, "onEnabled()"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2}, Lbaj;->a(I)V

    .line 29
    const-string v0, "widget14"

    const-string v1, "a"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 32
    return-void
.end method

.method public a(Landroid/content/Context;[ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-string v0, "DXWidgetProvider1x4"

    const-string v1, "onUpdate()"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    const-string v0, "DXWidgetProvider1x4"

    const-string v1, "onDisabled()"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbaj;->a(I)V

    .line 41
    const-string v0, "widget14"

    const-string v1, "d"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    return-void
.end method

.method public b(Landroid/content/Context;[ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const-string v0, "DXWidgetProvider1x4"

    const-string v1, "onDeleted()"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
