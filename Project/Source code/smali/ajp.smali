.class Lajp;
.super Ljava/lang/Object;
.source "RunAppOpt.java"

# interfaces
.implements Lawl;


# instance fields
.field final synthetic a:Lajo;


# direct methods
.method constructor <init>(Lajo;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lajp;->a:Lajo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lajp;->a:Lajo;

    iput-boolean v1, v0, Lajo;->n:Z

    .line 65
    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->a(Lajo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lajp;->a:Lajo;

    invoke-static {v0}, Lajo;->b(Lajo;)Lcom/dianxinos/powermanager/ui/RunAppBackView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->setVisibility(I)V

    .line 67
    return-void
.end method
