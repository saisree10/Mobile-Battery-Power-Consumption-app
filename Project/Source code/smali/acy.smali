.class public Lacy;
.super Ljava/lang/Object;
.source "BatteryDetailItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lacy;->g:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lacy;->a:I

    return v0
.end method

.method public a(Lacy;)I
    .locals 2
    .parameter

    .prologue
    .line 77
    iget v0, p1, Lacy;->c:I

    iget v1, p0, Lacy;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lacy;->c:I

    iget v1, p0, Lacy;->c:I

    if-le v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lacy;->a:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lacy;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lacy;->f:Z

    .line 37
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lacy;->b:I

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lacy;->e:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lacy;->f:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lacy;->b:I

    return v0
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lacy;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lacy;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 6
    check-cast p1, Lacy;

    invoke-virtual {p0, p1}, Lacy;->a(Lacy;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lacy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lacy;->c:I

    .line 73
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lacy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lacy;->c:I

    return v0
.end method
