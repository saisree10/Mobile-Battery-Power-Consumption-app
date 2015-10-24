.class public Ladh;
.super Ljava/lang/Object;
.source "ChargingConfig.java"


# static fields
.field public static a:Ladh;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Ladh;->b:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Ladh;->b:Landroid/content/Context;

    const-string v1, "ChargingConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    .line 75
    invoke-direct {p0}, Ladh;->g()V

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;)Ladh;
    .locals 3
    .parameter

    .prologue
    .line 62
    sget-object v0, Ladh;->a:Ladh;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Ladh;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Ladh;->a:Ladh;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ladh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ladh;-><init>(Landroid/content/Context;)V

    sput-object v0, Ladh;->a:Ladh;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Ladh;->a:Ladh;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v3, 0x6b

    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "passed_time"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladh;->d:I

    .line 80
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "LastestHealthChargingTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ladh;->g:J

    .line 81
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_charging_stat_v2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladh;->e:I

    .line 82
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "plugtype"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladh;->f:I

    .line 83
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_healthy_charger_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Ladh;->h:J

    .line 84
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    const-string v1, "healthy_charging_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ladh;->i:I

    .line 85
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ladh;->e:I

    return v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 102
    iput p1, p0, Ladh;->e:I

    .line 103
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    const-string v1, "last_charging_stat_v2"

    iget v2, p0, Ladh;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 106
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iput-wide p1, p0, Ladh;->g:J

    .line 121
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    const-string v1, "LastestHealthChargingTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 124
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ladh;->d:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iput p1, p0, Ladh;->d:I

    .line 114
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    const-string v1, "passed_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 117
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iput-wide p1, p0, Ladh;->h:J

    .line 158
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    const-string v1, "last_healthy_charger_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 161
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Ladh;->g:J

    return-wide v0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iput p1, p0, Ladh;->f:I

    .line 142
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    const-string v1, "plugtype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 145
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ladh;->f:I

    return v0
.end method

.method public d(I)V
    .locals 3
    .parameter

    .prologue
    .line 173
    iput p1, p0, Ladh;->i:I

    .line 174
    iget-object v0, p0, Ladh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    const-string v1, "healthy_charging_state"

    iget v2, p0, Ladh;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 177
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Ladh;->h:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Ladh;->i:I

    return v0
.end method
