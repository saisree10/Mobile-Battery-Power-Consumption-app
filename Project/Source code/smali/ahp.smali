.class public abstract Lahp;
.super Ljava/lang/Object;
.source "CommandBase.java"


# static fields
.field public static final b:I

.field public static final c:I


# instance fields
.field protected d:Landroid/content/Context;

.field protected e:Lahq;

.field protected f:Z

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 31
    sget-boolean v0, Lazw;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lahp;->b:I

    .line 32
    sget-boolean v0, Lazw;->d:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    :cond_0
    sput v1, Lahp;->c:I

    return-void

    .line 31
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahp;->f:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lahp;->d:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lahp;->a(Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lahq;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lahp;->a()Z

    .line 63
    iget-object v1, p0, Lahp;->d:Landroid/content/Context;

    iget-boolean v0, p0, Lahp;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0101

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0102

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lahp;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)I
    .locals 0
    .parameter

    .prologue
    .line 71
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    return v0
.end method

.method public e(I)I
    .locals 0
    .parameter

    .prologue
    .line 75
    return p1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lahp;->a()Z

    .line 54
    iget-boolean v0, p0, Lahp;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lahp;->f()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lahp;->f:Z

    return v0
.end method
