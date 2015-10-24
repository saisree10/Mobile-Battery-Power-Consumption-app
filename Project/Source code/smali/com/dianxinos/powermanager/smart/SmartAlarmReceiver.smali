.class public Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartAlarmReceiver.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "SmartAlarmReceiver"

    sput-object v0, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->a:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object p1, p0, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->c:Landroid/content/Context;

    .line 25
    iget-object v1, p0, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->c:Landroid/content/Context;

    invoke-static {v1}, Lass;->a(Landroid/content/Context;)Lass;

    move-result-object v2

    .line 26
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v3

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-boolean v4, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->b:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/dianxinos/powermanager/smart/SmartAlarmReceiver;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const-string v4, "com.dianxinos.dxbs.ALARMSWITCH"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v3}, Larr;->m()I

    move-result v1

    .line 34
    invoke-virtual {v3}, Larr;->g()V

    .line 35
    const/4 v0, 0x3

    .line 42
    :goto_0
    new-instance v3, Lasv;

    invoke-direct {v3, v1, v0}, Lasv;-><init>(II)V

    invoke-virtual {v2, v3}, Lass;->a(Lasv;)V

    .line 43
    return-void

    .line 37
    :cond_1
    const-string v4, "com.dianxinos.dxbs.ALARMRESTORE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Larr;->f(I)I

    move-result v1

    .line 39
    invoke-virtual {v3}, Larr;->h()V

    .line 40
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
