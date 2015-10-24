.class public Lajj;
.super Ljava/lang/Object;
.source "DiagnosticState.java"


# static fields
.field public static a:I

.field public static b:Z

.field private static c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lajj;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lajj;->a:I

    return v0
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 58
    sget v0, Lajj;->a:I

    if-lt p0, v0, :cond_0

    .line 59
    sput p0, Lajj;->a:I

    .line 60
    :cond_0
    sget v0, Lajj;->a:I

    return v0
.end method

.method public static a(IZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    sput-boolean p1, Lajj;->b:Z

    .line 41
    sget-boolean v0, Lajj;->b:Z

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x2

    .line 43
    const/16 v1, 0x23

    if-ne p0, v1, :cond_0

    .line 44
    const/4 v0, 0x4

    .line 52
    :cond_0
    :goto_0
    sget v1, Lajj;->a:I

    if-lt v0, v1, :cond_3

    .line 53
    sput v0, Lajj;->a:I

    .line 54
    :goto_1
    return v0

    .line 46
    :cond_1
    const/16 v0, 0x19

    if-ge p0, v0, :cond_2

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 54
    :cond_3
    sget v0, Lajj;->a:I

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 95
    sput v0, Lajj;->a:I

    .line 96
    invoke-static {p0}, Lajj;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return v0

    .line 100
    :cond_0
    invoke-static {p0}, Lajj;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "last_state"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {p0}, Lajj;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 92
    return-void
.end method

.method public static b(I)I
    .locals 2
    .parameter

    .prologue
    .line 69
    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    .line 70
    sget-boolean v0, Lajj;->b:Z

    invoke-static {p0, v0}, Lajj;->a(IZ)I

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 74
    :cond_0
    const/16 v0, 0x50

    if-ge p0, v0, :cond_2

    .line 75
    const/4 v0, 0x2

    .line 82
    :goto_1
    sget v1, Lajj;->a:I

    if-lt v0, v1, :cond_1

    .line 83
    sput v0, Lajj;->a:I

    .line 84
    :cond_1
    sget v0, Lajj;->a:I

    goto :goto_0

    .line 76
    :cond_2
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_3

    .line 77
    const/4 v0, 0x3

    goto :goto_1

    .line 79
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 125
    invoke-static {p0}, Lajj;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "diag_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 128
    return-void
.end method

.method private static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter

    .prologue
    .line 31
    sget-object v0, Lajj;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "diagnostic_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lajj;->c:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    sget-object v0, Lajj;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0}, Lajj;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    const-string v2, "last_time"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 107
    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    .line 112
    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method
