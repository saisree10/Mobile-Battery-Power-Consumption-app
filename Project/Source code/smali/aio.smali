.class public Laio;
.super Ljava/lang/Object;
.source "BatteryCurveChartManager.java"

# interfaces
.implements Ladc;


# static fields
.field private static d:Lain;

.field private static e:Laio;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laik;

.field private c:Laim;

.field private f:Lain;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Laio;->a:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Laik;->a(Landroid/content/Context;)Laik;

    move-result-object v0

    iput-object v0, p0, Laio;->b:Laik;

    .line 29
    invoke-static {p1}, Laim;->a(Landroid/content/Context;)Laim;

    move-result-object v0

    iput-object v0, p0, Laio;->c:Laim;

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;)Laio;
    .locals 2
    .parameter

    .prologue
    .line 33
    sget-object v0, Laio;->e:Laio;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Laio;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Laio;->e:Laio;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Laio;

    invoke-direct {v0, p0}, Laio;-><init>(Landroid/content/Context;)V

    sput-object v0, Laio;->e:Laio;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Laio;->e:Laio;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    invoke-virtual {p0, p1, v0, v1}, Laio;->a(IJ)V

    .line 80
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p2, p3}, Lbap;->a(J)I

    move-result v1

    .line 54
    sget-object v0, Laio;->d:Lain;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laio;->c:Laim;

    sget-object v2, Laio;->d:Lain;

    invoke-virtual {v0, v2, p1, p2, p3}, Laim;->a(Lain;IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Laio;->b:Laik;

    invoke-virtual {v0}, Laik;->a()Lain;

    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Laio;->c:Laim;

    invoke-virtual {v0, p2, p3, p1}, Laim;->a(JI)Lain;

    move-result-object v0

    .line 61
    iget-object v1, p0, Laio;->b:Laik;

    invoke-virtual {v1, v0}, Laik;->a(Lain;)V

    .line 74
    :goto_1
    sput-object v0, Laio;->d:Lain;

    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, v0, Lain;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-wide v2, v0, Lain;->a:J

    invoke-static {p2, p3, v2, v3}, Lbap;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Laio;->c:Laim;

    invoke-virtual {v2, v0, v1, p1}, Laim;->a(Lain;II)V

    .line 68
    iget-object v1, p0, Laio;->b:Laik;

    invoke-virtual {v1, v0}, Laik;->c(Lain;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v1, p0, Laio;->c:Laim;

    invoke-virtual {v1, v0, p2, p3, p1}, Laim;->a(Lain;JI)V

    .line 71
    iget-object v1, p0, Laio;->b:Laik;

    invoke-virtual {v1, v0}, Laik;->b(Lain;)V

    goto :goto_1
.end method

.method public a(Ladd;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p1, Ladd;->j:I

    .line 46
    invoke-direct {p0, v0}, Laio;->a(I)V

    .line 47
    return-void
.end method

.method public a()[D
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Laio;->f:Lain;

    .line 84
    iget-object v1, p0, Laio;->b:Laik;

    invoke-virtual {v1}, Laik;->a()Lain;

    move-result-object v1

    iput-object v1, p0, Laio;->f:Lain;

    .line 86
    iget-object v1, p0, Laio;->f:Lain;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laio;->f:Lain;

    iget-object v1, v1, Lain;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v0, p0, Laio;->c:Laim;

    iget-object v1, p0, Laio;->f:Lain;

    invoke-virtual {v0, v1}, Laim;->a(Lain;)[D

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public b()[D
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Laio;->f:Lain;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laio;->f:Lain;

    iget-object v0, v0, Lain;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Laio;->c:Laim;

    iget-object v1, p0, Laio;->f:Lain;

    invoke-virtual {v0, v1}, Laim;->b(Lain;)[D

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
