.class public Lacx;
.super Ljava/lang/Object;
.source "BatteryConfig.java"


# static fields
.field private static volatile g:Lacx;


# instance fields
.field private final a:I

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lacx;->a:I

    .line 24
    iput-boolean v3, p0, Lacx;->b:Z

    .line 36
    iput-object p1, p0, Lacx;->d:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lacx;->d:Landroid/content/Context;

    const-string v1, "BatteryConfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    .line 38
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    const-string v1, "num"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lacx;->e:I

    .line 39
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    const-string v1, "battery_capacity"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacx;->f:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    const-string v1, "had_report_healthy_charging"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lacx;->b:Z

    .line 41
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    const-string v1, "battery_details_position"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacx;->h:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lacx;
    .locals 2
    .parameter

    .prologue
    .line 45
    sget-object v0, Lacx;->g:Lacx;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lacx;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lacx;->g:Lacx;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lacx;

    invoke-direct {v0, p0}, Lacx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lacx;->g:Lacx;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lacx;->g:Lacx;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    const-string v1, "battery_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "battery_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lacx;->f:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    const-string v1, "battery_capacity"

    iget-object v2, p0, Lacx;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 93
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lacx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lacx;->h:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    const-string v1, "battery_details_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 135
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lacx;->b:Z

    .line 101
    iget-object v0, p0, Lacx;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    const-string v1, "had_report_healthy_charging"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 104
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lacx;->b:Z

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v2, p0, Lacx;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lacx;->h:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 115
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_1
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lacx;->h:Ljava/lang/String;

    return-object v0
.end method
