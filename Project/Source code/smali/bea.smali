.class public final Lbea;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lbea;->a:F

    .line 34
    iput p2, p0, Lbea;->b:F

    .line 35
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lbea;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lbea;->b:F

    return v0
.end method
