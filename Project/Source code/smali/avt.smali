.class public Lavt;
.super Ljava/lang/Object;
.source "WheelView.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lavt;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lavt;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lavt;->b:I

    .line 49
    iput p3, p0, Lavt;->c:I

    .line 50
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lavt;->b:I

    return v0
.end method

.method public a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lavt;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lavt;->b()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lavt;->a()I

    move-result v0

    invoke-virtual {p0}, Lavt;->c()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lavt;->c:I

    return v0
.end method
