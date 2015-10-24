.class public Lafg;
.super Ljava/lang/Object;
.source "ChargerManager.java"


# instance fields
.field public final a:I

.field public b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field private g:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lafg;->g:I

    .line 362
    iput p1, p0, Lafg;->a:I

    .line 363
    iput p2, p0, Lafg;->b:I

    .line 364
    iput p3, p0, Lafg;->c:I

    .line 365
    iput p4, p0, Lafg;->d:I

    .line 366
    iput p5, p0, Lafg;->e:I

    .line 367
    iput p6, p0, Lafg;->f:I

    .line 369
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    iput v0, p0, Lafg;->g:I

    .line 383
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x2

    iput v0, p0, Lafg;->g:I

    .line 390
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lafg;->g:I

    .line 397
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lafg;->g:I

    return v0
.end method
