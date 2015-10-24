.class public Lagm;
.super Ljava/lang/Object;
.source "CloudRemainTimeDBHelper.java"


# static fields
.field private static b:Lagm;


# instance fields
.field a:Lagn;

.field private c:Landroid/content/Context;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lagm;->c:Landroid/content/Context;

    .line 40
    new-instance v0, Lagn;

    iget-object v1, p0, Lagm;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lagn;-><init>(Lagm;Landroid/content/Context;)V

    iput-object v0, p0, Lagm;->a:Lagn;

    .line 41
    iget-object v0, p0, Lagm;->a:Lagn;

    invoke-virtual {v0}, Lagn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lagm;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lagm;
    .locals 2
    .parameter

    .prologue
    .line 135
    sget-object v0, Lagm;->b:Lagm;

    if-nez v0, :cond_1

    .line 136
    const-class v1, Lagm;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lagm;->b:Lagm;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lagm;

    invoke-direct {v0, p0}, Lagm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lagm;->b:Lagm;

    .line 140
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    sget-object v0, Lagm;->b:Lagm;

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
