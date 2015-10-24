.class public Lbds;
.super Ljava/lang/Object;
.source "ClickableArea.java"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;DD)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbds;->a:Landroid/graphics/RectF;

    .line 28
    iput-wide p2, p0, Lbds;->b:D

    .line 29
    iput-wide p4, p0, Lbds;->c:D

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbds;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lbds;->b:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lbds;->c:D

    return-wide v0
.end method
