.class public Lbdb;
.super Ljava/lang/Exception;
.source "HttpRequestException.java"


# instance fields
.field private a:Lbdc;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lbdc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 24
    iput-object p2, p0, Lbdb;->a:Lbdc;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lbdc;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbdb;->a:Lbdc;

    return-object v0
.end method
