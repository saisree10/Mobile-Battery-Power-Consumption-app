.class public Lbaj;
.super Ljava/lang/Object;
.source "ShowConfig.java"


# static fields
.field private static b:Lbaj;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Boolean;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lbaj;->c:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lbaj;->e()V

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbaj;
    .locals 3
    .parameter

    .prologue
    .line 48
    sget-object v0, Lbaj;->b:Lbaj;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lbaj;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lbaj;->b:Lbaj;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lbaj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbaj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbaj;->b:Lbaj;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lbaj;->b:Lbaj;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lbaj;->c:Landroid/content/Context;

    const-string v1, "ShowConfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "float_tips"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbaj;->d:Ljava/lang/Boolean;

    .line 66
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "dxhome_widget"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbaj;->e:I

    .line 67
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "cpu"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->f:Z

    .line 68
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "setting"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->g:Z

    .line 69
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "battery_log"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->h:Z

    .line 70
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "lowbattery"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->i:Z

    .line 71
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "lowbattery_reminder"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->j:Z

    .line 72
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    const-string v1, "smart_switch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbaj;->k:Z

    .line 73
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iput p1, p0, Lbaj;->e:I

    .line 98
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v1, "dxhome_widget"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbaj;->f:Z

    .line 109
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    const-string v1, "cpu"

    iget-boolean v2, p0, Lbaj;->f:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 112
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lbaj;->c:Landroid/content/Context;

    const-string v1, "ShowConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    const-string v1, "needMark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 179
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 141
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbaj;->i:Z

    .line 142
    iget-object v0, p0, Lbaj;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    const-string v1, "lowbattery"

    iget-boolean v2, p0, Lbaj;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 145
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    iget v1, p0, Lbaj;->e:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lbaj;->h:Z

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lbaj;->c:Landroid/content/Context;

    const-string v1, "ShowConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    const-string v1, "needMark"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
