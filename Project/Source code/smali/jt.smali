.class Ljt;
.super Ljava/lang/Object;
.source "SilentDownloadHelper.java"


# static fields
.field private static c:Ljt;


# instance fields
.field protected a:Liv;

.field protected b:Ljz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Ljt;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ljt;->c:Ljt;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    sput-object v0, Ljt;->c:Ljt;

    .line 16
    :cond_0
    sget-object v0, Ljt;->c:Ljt;

    return-object v0
.end method


# virtual methods
.method protected a(Liv;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Ljt;->a:Liv;

    .line 21
    return-void
.end method

.method protected a(Ljz;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Ljt;->b:Ljz;

    .line 25
    return-void
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 28
    iget-object v0, p0, Ljt;->a:Liv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljt;->b:Ljz;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Ljt;->a:Liv;

    iget-object v1, p0, Ljt;->b:Ljz;

    iget v1, v1, Ljz;->a:I

    iget-object v2, p0, Ljt;->b:Ljz;

    iget-object v2, v2, Ljz;->b:Ljava/lang/String;

    iget-object v3, p0, Ljt;->b:Ljz;

    iget-object v3, v3, Ljz;->d:Ljava/lang/String;

    iget-object v4, p0, Ljt;->b:Ljz;

    iget v4, v4, Ljz;->c:I

    iget-object v5, p0, Ljt;->b:Ljz;

    iget-object v5, v5, Ljz;->e:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Liv;->a(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 35
    :cond_0
    return-void
.end method
