.class public Lagl;
.super Ljava/lang/Object;
.source "CloudConfig.java"


# static fields
.field public static a:Lagl;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lagl;->b:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lagl;->b:Landroid/content/Context;

    const-string v1, "CloudConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    .line 47
    invoke-direct {p0}, Lagl;->c()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lagl;
    .locals 3
    .parameter

    .prologue
    .line 34
    sget-object v0, Lagl;->a:Lagl;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lagl;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lagl;->a:Lagl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lagl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lagl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lagl;->a:Lagl;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lagl;->a:Lagl;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x2b67

    .line 51
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_info"

    const-string v2, "false:-100:-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lagl;->d:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    const-string v1, "report_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lagl;->f:J

    .line 53
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    const-string v1, "create_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lagl;->e:J

    .line 54
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    const-string v1, "forbidden"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lagl;->g:Z

    .line 55
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    const-string v1, "app_info"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lagl;->d:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    const-string v1, "last_info"

    iget-object v2, p0, Lagl;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 76
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lagl;->g:Z

    .line 128
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v1, "forbidden"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 131
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lagl;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    const-string v1, "app_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 108
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lagl;->g:Z

    return v0
.end method
