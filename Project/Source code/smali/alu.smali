.class public Lalu;
.super Ljava/lang/Object;
.source "CustomMenuItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lalu;->a:Ljava/lang/String;

    .line 18
    iput v1, p0, Lalu;->b:I

    .line 19
    iput v1, p0, Lalu;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lalu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lalu;->b:I

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lalu;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lalu;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lalu;->c:I

    .line 72
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lalu;->c:I

    return v0
.end method
