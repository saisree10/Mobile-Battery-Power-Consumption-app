.class public Laqh;
.super Laqf;
.source "SkinListAdapter.java"


# instance fields
.field a:Laeu;

.field private b:Laev;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laeu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Laqf;-><init>()V

    .line 34
    iput-object p2, p0, Laqh;->a:Laeu;

    .line 35
    iput-object p1, p0, Laqh;->c:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Laev;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Laqh;->b:Laev;

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Laqh;->c:Landroid/content/Context;

    invoke-static {v0}, Lbal;->h(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Laqh;->a:Laeu;

    iget-object v1, p0, Laqh;->b:Laev;

    invoke-interface {v0, v1}, Laeu;->b(Laev;)V

    .line 47
    return-void
.end method
