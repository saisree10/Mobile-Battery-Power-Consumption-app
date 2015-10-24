.class public Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;
.super Landroid/app/Service;
.source "SettingsWidgetService1x4.java"

# interfaces
.implements Laox;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z


# instance fields
.field public c:Laot;

.field private d:Ljava/util/ArrayList;

.field private e:[I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "SettingsWidgetService1x4"

    sput-object v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->e:[I

    return-void
.end method

.method private a(I)Landroid/app/PendingIntent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-class v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->e:[I

    const/4 v2, 0x0

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    .line 35
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->e:[I

    const/4 v2, 0x1

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v2

    .line 36
    return-void
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/dianxinos/powermanager/settings/PowerSettingsWidgetProvider1x4;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 130
    sget-object v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a:Ljava/lang/String;

    const-string v1, "update SettingsWidget RemoteView OK."

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Laot;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laot;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    iget-object v3, v3, Laot;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private c()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030061

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07019f

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 103
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07019e

    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 105
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701a1

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 106
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701a0

    invoke-direct {p0, v4}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701a3

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 109
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701a2

    invoke-direct {p0, v5}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 111
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701a5

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701a4

    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701a7

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laow;

    iget v0, v0, Laow;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 115
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701a6

    invoke-direct {p0, v7}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v2, "settingswidget"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const/high16 v2, 0x800

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 121
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0701a8

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 123
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a:Ljava/lang/String;

    const-string v1, " onWidgetStatusUpdated "

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->b()V

    .line 75
    invoke-direct {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(Landroid/widget/RemoteViews;)V

    .line 77
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a()V

    .line 41
    invoke-static {p0}, Laot;->a(Landroid/content/Context;)Laot;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    invoke-virtual {v0, p0}, Laot;->b(Laox;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->f:Z

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 69
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->f:Z

    if-nez v0, :cond_2

    .line 53
    sget-boolean v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a:Ljava/lang/String;

    const-string v1, "registerListener PowerWidgetHelper"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    invoke-virtual {v0, p0}, Laot;->a(Laox;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->f:Z

    .line 61
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->c:Laot;

    iget-object v0, v0, Laot;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method
