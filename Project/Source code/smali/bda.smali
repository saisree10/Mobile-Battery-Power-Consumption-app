.class public abstract Lbda;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lbcz;

.field protected c:Ljava/lang/String;

.field protected d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbdd;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lbda;->a:Ljava/lang/String;

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lbda;->a:Ljava/lang/String;

    .line 30
    :cond_0
    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Lbdd;->a()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbda;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbda;->a:Ljava/lang/String;

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbda;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lbcz;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lbda;->b:Lbcz;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbda;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbda;->d:[B

    return-object v0
.end method
