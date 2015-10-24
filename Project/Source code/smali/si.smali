.class public Lsi;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field private static final a:Ljava/lang/Long;

.field private static g:Lsi;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lsi;->a:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lsi;->b:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lsi;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lsi;->c:Landroid/app/AlarmManager;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DXCoreAlarmReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lsi;->b:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lsi;->d:Landroid/app/PendingIntent;

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsi;->f:J

    .line 39
    iput-boolean v3, p0, Lsi;->e:Z

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lsi;
    .locals 2
    .parameter

    .prologue
    .line 43
    const-class v1, Lsi;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lsi;->g:Lsi;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lsi;

    invoke-direct {v0, p0}, Lsi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsi;->g:Lsi;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lsi;->g:Lsi;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsi;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-boolean v0, p0, Lsi;->e:Z

    if-nez v0, :cond_1

    .line 53
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "stat.Alarm"

    const-string v2, "Start to regist alarm!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v0, p0, Lsi;->c:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lsi;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lsi;->d:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 57
    iput-boolean v1, p0, Lsi;->e:Z

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsi;->f:J

    .line 60
    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 63
    iget-boolean v0, p0, Lsi;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lsi;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "stat.Alarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to unRegist alarm, The last register time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsi;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget-object v0, p0, Lsi;->c:Landroid/app/AlarmManager;

    iget-object v1, p0, Lsi;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsi;->e:Z

    .line 70
    :cond_1
    return-void
.end method
