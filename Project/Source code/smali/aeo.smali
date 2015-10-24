.class public Laeo;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static a:Laem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Laem;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Laeo;->a:Laem;

    return-object v0
.end method

.method public static declared-synchronized a(Laem;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    const-class v0, Laeo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Laeo;->a:Laem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    sget-object v0, Laeo;->a:Laem;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Laeo;->a:Laem;

    invoke-virtual {v0, p0, p1}, Laem;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Laeh;Lakt;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    sget-object v0, Laeo;->a:Laem;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Laeo;->a:Laem;

    invoke-virtual {v0, p1, p2}, Laem;->a(Laeh;Lakt;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Laei;Lakt;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Laeo;->a:Laem;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Laeo;->a:Laem;

    invoke-virtual {v0, p1, p2}, Laem;->a(Laei;Lakt;)V

    .line 196
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Laks;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v8

    new-instance v0, Laep;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Laep;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Laks;JLjava/lang/String;)V

    invoke-virtual {v8, v0}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 68
    sget-object v0, Laeo;->a:Laem;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Laeo;->a:Laem;

    invoke-virtual {v0, p0}, Laem;->a(Z)V

    .line 71
    :cond_0
    return-void
.end method
