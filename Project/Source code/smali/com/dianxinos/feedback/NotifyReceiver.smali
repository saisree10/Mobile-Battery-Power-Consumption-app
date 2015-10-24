.class public Lcom/dianxinos/feedback/NotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyReceiver.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "next_time"

    sput-object v0, Lcom/dianxinos/feedback/NotifyReceiver;->a:Ljava/lang/String;

    .line 20
    const-string v0, "first_launch"

    sput-object v0, Lcom/dianxinos/feedback/NotifyReceiver;->b:Ljava/lang/String;

    .line 22
    const v0, 0x34154

    sput v0, Lcom/dianxinos/feedback/NotifyReceiver;->c:I

    .line 24
    const v0, 0x493e0

    sput v0, Lcom/dianxinos/feedback/NotifyReceiver;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Receiver get action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "com.dianxinos.feedback.FIRST_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/dianxinos/feedback/NotifyReceiver;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-static {p1, v1, v2, v3}, Lvu;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 36
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/dianxinos/feedback/NotifyReceiver;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 38
    invoke-static {p1}, Lun;->a(Landroid/content/Context;)Lun;

    move-result-object v3

    const-string v4, "com.dianxinos.feedback.CHECK_UPDATE"

    invoke-virtual {v3, v1, v2, v4}, Lun;->a(JLjava/lang/String;)V

    .line 39
    sget-object v3, Lcom/dianxinos/feedback/NotifyReceiver;->b:Ljava/lang/String;

    invoke-static {p1, v3, v1, v2}, Lvu;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 43
    :cond_0
    const-string v1, "com.dianxinos.feedback.CHECK_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p1}, Lun;->a(Landroid/content/Context;)Lun;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lun;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    :cond_1
    return-void
.end method
