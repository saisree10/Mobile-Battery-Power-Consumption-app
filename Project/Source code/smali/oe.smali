.class public Loe;
.super Ljava/lang/Object;
.source "PullResponse.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:I

.field public d:Lod;


# direct methods
.method constructor <init>(Lod;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loe;-><init>(Lod;ILjava/util/List;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lod;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Loe;->d:Lod;

    .line 15
    iput p2, p0, Loe;->c:I

    .line 16
    iput-object p3, p0, Loe;->b:Ljava/util/List;

    .line 17
    iget-object v0, p1, Lod;->a:Ljava/lang/String;

    iput-object v0, p0, Loe;->a:Ljava/lang/String;

    .line 18
    return-void
.end method
