.class public Laje;
.super Ljava/lang/Object;
.source "DiagnosticADConfig.java"


# static fields
.field private static volatile a:Laje;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v3, p0, Laje;->d:Z

    .line 22
    iput-boolean v2, p0, Laje;->e:Z

    .line 25
    iput-object p1, p0, Laje;->b:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Laje;->b:Landroid/content/Context;

    const-string v1, "dig_ad_cfg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    .line 27
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    const-string v1, "diag_ad_auto_clean_server_switch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laje;->d:Z

    .line 29
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    const-string v1, "auto_clean_app_unlock"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Laje;->e:Z

    .line 30
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Laje;
    .locals 2
    .parameter

    .prologue
    .line 33
    const-class v1, Laje;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laje;->a:Laje;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Laje;

    invoke-direct {v0, p0}, Laje;-><init>(Landroid/content/Context;)V

    sput-object v0, Laje;->a:Laje;

    .line 36
    :cond_0
    sget-object v0, Laje;->a:Laje;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "ad_pkg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v1, "ad_clk_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 87
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Laje;->d:Z

    .line 65
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    const-string v1, "diag_ad_auto_clean_server_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 68
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Laje;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laje;->e:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Laje;->c()V

    .line 43
    :cond_0
    iget-boolean v0, p0, Laje;->e:Z

    return v0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ds_rec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 80
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Laje;->e:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-boolean v0, p0, Laje;->e:Z

    if-nez v0, :cond_0

    .line 52
    iput-boolean v2, p0, Laje;->e:Z

    .line 53
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    const-string v1, "auto_clean_app_unlock"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "diag_ad_auto_clean_server_switch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Laje;->c:Landroid/content/SharedPreferences;

    const-string v1, "ds_rec"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    iget-object v2, p0, Laje;->c:Landroid/content/SharedPreferences;

    const-string v3, "ad_pkg"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    const/4 v1, 0x1

    iget-object v2, p0, Laje;->c:Landroid/content/SharedPreferences;

    const-string v3, "ad_clk_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    return-object v0
.end method
