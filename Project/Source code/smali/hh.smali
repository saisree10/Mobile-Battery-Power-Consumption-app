.class public Lhh;
.super Ljava/lang/Object;
.source "DownLoadFileInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lhh;->a:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lhh;->b:Ljava/lang/String;

    .line 20
    invoke-static {p2, p3}, Lhi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhh;->c:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lhh;->d:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lhh;->h:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lhh;->c:Ljava/lang/String;

    invoke-static {v0}, Lhi;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lhh;->f:J

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lhh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lhh;->e:J

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lhh;->h:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lhh;->f:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lhh;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lhh;->e:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lhh;->g:I

    return v0
.end method
