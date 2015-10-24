.class public Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerSettingsWidgetProvider1x4.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "PowerSettingsWidgetProvider1x4"

    sput-object v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 32
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    const-string v1, "stop SettingsWidgetService1x4"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 41
    const-string v0, "widget14"

    const-string v1, "td"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    const-string v1, "onEnabled "

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 51
    const-string v0, "widget14"

    const-string v1, "ta"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 54
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0a0197

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-boolean v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    sget-boolean v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buttonId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-static {p1}, Laot;->a(Landroid/content/Context;)Laot;

    move-result-object v3

    .line 68
    invoke-virtual {v3, p1}, Laot;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Laot;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 71
    invoke-static {p1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lamp;->g()Lamh;

    move-result-object v4

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const/4 v2, -0x1

    .line 76
    const/4 v1, 0x0

    :goto_0
    sget-object v5, Laot;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_10

    .line 77
    sget-object v5, Laot;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    :goto_1
    sget-boolean v2, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "commandId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    iget-object v2, v3, Laot;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->b:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-ne v1, v10, :cond_3

    .line 89
    iget-object v2, v3, Laot;->b:Ljava/util/HashMap;

    const-string v5, "bluetooth"

    new-instance v6, Laow;

    const-string v7, "bluetooth"

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v8, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v8, 0x7f0203e8

    invoke-direct {v6, v7, v11, v8, v9}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    if-ne v1, v9, :cond_4

    .line 95
    iget-object v2, v3, Laot;->b:Ljava/util/HashMap;

    const-string v3, "wifi"

    new-instance v5, Laow;

    const-string v6, "wifi"

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v7, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v7, 0x7f0203f9

    invoke-direct {v5, v6, v11, v7, v9}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_4
    if-eq v1, v10, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8

    .line 102
    :cond_5
    invoke-virtual {v4, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 129
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 130
    return-void

    .line 76
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_8
    if-eq v1, v9, :cond_9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 105
    :cond_9
    invoke-virtual {v4, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lapb;->b(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    goto :goto_2

    .line 107
    :cond_a
    if-nez v1, :cond_b

    .line 108
    invoke-virtual {v4, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-static {p1, v0}, Lapb;->a(Landroid/content/Context;Lahp;)I

    goto :goto_2

    .line 110
    :cond_b
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 111
    invoke-static {p1}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lapb;->b(Landroid/content/Context;Lapi;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :cond_c
    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 119
    :cond_d
    const/16 v2, 0x9

    if-ne v1, v2, :cond_e

    .line 120
    invoke-virtual {v4, v1}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lapb;->c(Landroid/content/Context;Lahp;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :cond_e
    const/16 v2, 0xd

    if-ne v1, v2, :cond_6

    .line 123
    invoke-virtual {v4}, Lamh;->l()Lahd;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    goto :goto_2

    .line 127
    :cond_f
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    const-string v1, " no CATEGORY_ALTERNATIVE "

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    move v1, v2

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->b:Z

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;->a:Ljava/lang/String;

    const-string v1, "onUpdate startSerrvice PowerMgrService and SettingsService"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 139
    return-void
.end method
