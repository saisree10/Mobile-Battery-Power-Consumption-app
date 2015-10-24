.class abstract Lnv;
.super Ljava/lang/Object;
.source "CmsDataPuller.java"

# interfaces
.implements Lkz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lnv;->a(I)V

    .line 42
    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lnv;->a(I)V

    .line 37
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    return-void
.end method
