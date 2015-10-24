.class public Laex;
.super Ljava/lang/Object;
.source "SkinPurchaseHelper.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lakx;

.field private c:Landroid/os/Handler;

.field private d:Laku;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Laex;->a:Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Laex;->a:Landroid/app/Activity;

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Laex;->b:Lakx;

    .line 58
    new-instance v0, Laku;

    invoke-direct {v0}, Laku;-><init>()V

    iput-object v0, p0, Laex;->d:Laku;

    .line 59
    new-instance v0, Laey;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laey;-><init>(Laex;Landroid/os/Looper;)V

    iput-object v0, p0, Laex;->c:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laex;->d:Laku;

    invoke-virtual {v0}, Laku;->a()V

    .line 64
    return-void
.end method

.method a(I)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Laex;->d:Laku;

    iget-object v1, p0, Laex;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Laku;->a(Landroid/app/Activity;I)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Laex;->b:Lakx;

    iget-object v1, p0, Laex;->a:Landroid/app/Activity;

    iget-object v2, p0, Laex;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2}, Lakx;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 74
    return-void
.end method
