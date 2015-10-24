.class public Lcom/dianxinos/powermanager/PowerMgrMidWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerMgrMidWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-static {p1}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lacz;->b()I

    move-result v2

    .line 62
    invoke-static {p1}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Laaa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->a()V

    .line 87
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {v3, v0, v5}, Laaa;->a(IZ)I

    move-result v4

    .line 70
    const/16 v0, 0xb4

    .line 71
    if-lez v4, :cond_1

    .line 72
    invoke-virtual {v1}, Lacz;->a()I

    move-result v1

    .line 73
    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 74
    sub-int v0, v1, v2

    .line 77
    :cond_1
    invoke-virtual {v3, v4, v0}, Laaa;->a(II)V

    .line 83
    const-string v0, "widget14"

    const-string v1, "onekey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 85
    const-string v0, "clicks"

    const-string v1, "one_key"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-static {p1}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lbaj;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 97
    :cond_0
    const-string v0, "widget14"

    const-string v1, "d"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 100
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 108
    const-string v0, "widget14"

    const-string v1, "a"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "com.dianxinos.dxbs.ONEKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrMidWidgetProvider;->a(Landroid/content/Context;)V

    .line 50
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
