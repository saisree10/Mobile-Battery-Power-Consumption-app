.class public Lnc;
.super Ljava/lang/Object;
.source "SplashItem.java"


# static fields
.field private static final h:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lmi;->a:Z

    sput-boolean v0, Lnc;->h:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/high16 v0, 0x3fc0

    iput v0, p0, Lnc;->g:F

    .line 21
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    sget-boolean v0, Lnc;->h:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "SplashItem"

    invoke-static {v0, p0}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lnc;->g:F

    .line 117
    return-object p0
.end method

.method public a(J)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-wide p1, p0, Lnc;->b:J

    .line 92
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lnc;->a:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lnc;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnc;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    const-string v1, "SplashExist: no local path"

    invoke-static {v1}, Lnc;->e(Ljava/lang/String;)V

    .line 56
    :goto_0
    return v0

    .line 43
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnc;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    const-string v1, "SplashExist: no local file"

    invoke-static {v1}, Lnc;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v1}, Lnd;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_3

    iget-object v2, p0, Lnc;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 51
    :cond_3
    const-string v1, "SplashExist: don\'t match md5!"

    invoke-static {v1}, Lnc;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    iget-wide v3, p0, Lnc;->c:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 63
    const-string v1, "SplashItem: Last time passed"

    invoke-static {v1}, Lnc;->e(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lnc;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-wide p1, p0, Lnc;->c:J

    .line 97
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lnc;->d:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lnc;->e:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lnc;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lnc;->f:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "SplashItem:[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", firstTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnc;->b:J

    invoke-static {v2, v3}, Lnd;->a(J)Lne;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", lastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnc;->c:J

    invoke-static {v2, v3}, Lnd;->a(J)Lne;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnc;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", stayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnc;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
