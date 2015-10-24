.class public Laud;
.super Ljava/lang/Object;
.source "RemainingTimeHelper.java"


# instance fields
.field private a:Laue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Laue;

    invoke-direct {v0, p1}, Laue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laud;->a:Laue;

    .line 34
    return-void
.end method


# virtual methods
.method public a(DI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Laud;->a:Laue;

    invoke-virtual {v0, p1, p2, p3}, Laue;->a(DI)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Laud;->a:Laue;

    invoke-virtual {v0}, Laue;->a()V

    .line 42
    return-void
.end method
