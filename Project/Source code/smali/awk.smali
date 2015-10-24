.class public Lawk;
.super Ljava/lang/Object;
.source "RunAppBackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/RunAppBackView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lawk;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lawk;->a:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c(Lcom/dianxinos/powermanager/ui/RunAppBackView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->startLayoutAnimation()V

    .line 167
    return-void
.end method
