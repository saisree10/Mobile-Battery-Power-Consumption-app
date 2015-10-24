.class Lp;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Ls;


# instance fields
.field final synthetic a:Ln;


# direct methods
.method constructor <init>(Ln;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lp;->a:Ln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lp;->a:Ln;

    invoke-virtual {v0, p1}, Ln;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
