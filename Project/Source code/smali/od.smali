.class public Lod;
.super Ljava/lang/Object;
.source "PullRequest.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field c:J

.field d:J

.field e:J

.field f:Llj;

.field g:Llk;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lod;->h:Z

    .line 12
    iput-boolean v0, p0, Lod;->i:Z

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lod;->b:I

    .line 17
    iput-object p1, p0, Lod;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 37
    if-lez p1, :cond_0

    .line 38
    iput p1, p0, Lod;->b:I

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(J)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lod;->e:J

    .line 71
    return-void
.end method

.method a(Llj;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lod;->f:Llj;

    .line 66
    iget-wide v0, p1, Llj;->a:J

    iput-wide v0, p0, Lod;->c:J

    .line 67
    return-void
.end method

.method a(Llk;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lod;->g:Llk;

    .line 61
    iget-wide v0, p1, Llk;->a:J

    iput-wide v0, p0, Lod;->d:J

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lod;->h:Z

    .line 22
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lod;->h:Z

    return v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lod;->i:Z

    .line 30
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lod;->i:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lod;->b:I

    return v0
.end method
